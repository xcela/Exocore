# frozen_string_literal: true
class BidirectionalLinksGenerator < Jekyll::Generator
  def generate(site)
    graph_nodes = []
    graph_edges = []

    all_articles = site.collections['articles'].docs
    all_pages = site.pages

    all_docs = all_articles + all_pages

    link_extension = !!site.config["use_html_extension"] ? '.html' : ''

    # Convert all Wiki/Roam-style double-bracket link syntax to plain HTML
    # anchor tag elements (<a>) with "internal-link" CSS class
    all_docs.each do |current_article|
      all_docs.each do |article_potentially_linked_to|
        title_from_filename = File.basename(
          article_potentially_linked_to.basename,
          File.extname(article_potentially_linked_to.basename)
        ).gsub('_', ' ').gsub('-', ' ').capitalize

        # Replace double-bracketed links with label using article title
        # [[A article about cats|this is a link to the article about cats]]
        current_article.content = current_article.content.gsub(
          /\[\[#{title_from_filename}\|(.+?)(?=\])\]\]/i,
          "<a class='internal-link' href='#{article_potentially_linked_to.url}#{link_extension}'>\\1</a>"
        )

        # Replace double-bracketed links with label using article filename
        # [[cats|this is a link to the article about cats]]
        current_article.content = current_article.content.gsub(
          /\[\[#{article_potentially_linked_to.data['title']}\|(.+?)(?=\])\]\]/i,
          "<a class='internal-link' href='#{article_potentially_linked_to.url}#{link_extension}'>\\1</a>"
        )

        # Replace double-bracketed links using article title
        # [[a article about cats]]
        current_article.content = current_article.content.gsub(
          /\[\[(#{article_potentially_linked_to.data['title']})\]\]/i,
          "<a class='internal-link' href='#{article_potentially_linked_to.url}#{link_extension}'>\\1</a>"
        )

        # Replace double-bracketed links using article filename
        # [[cats]]
        current_article.content = current_article.content.gsub(
          /\[\[(#{title_from_filename})\]\]/i,
          "<a class='internal-link' href='#{article_potentially_linked_to.url}#{link_extension}'>\\1</a>"
        )
      end

      # At this point, all remaining double-bracket-wrapped words are
      # pointing to non-existing pages, so let's turn them into disabled
      # links by greying them out and changing the cursor
      current_article.content = current_article.content.gsub(
        /\[\[(.*)\]\]/i, # match on the remaining double-bracket links
        <<~HTML.chomp    # replace with this HTML (\\1 is what was inside the brackets)
          <span title='There is no article that matches this link.' class='invalid-link'>
            <span class='invalid-link-brackets'>[[</span>
            \\1
            <span class='invalid-link-brackets'>]]</span></span>
        HTML
      )
    end

    # Identify article backlinks and add them to each article
    all_articles.each do |current_article|
      # Nodes: Jekyll
      articles_linking_to_current_article = all_articles.filter do |e|
        e.content.include?(current_article.url)
      end

      # Nodes: Graph
      graph_nodes << {
        id: article_id_from_article(current_article),
        path: "#{current_article.url}#{link_extension}",
        label: current_article.data['title'],
      } unless current_article.path.include?('_articles/index.html')

      # Edges: Jekyll
      current_article.data['backlinks'] = articles_linking_to_current_article

      # Edges: Graph
      articles_linking_to_current_article.each do |n|
        graph_edges << {
          source: article_id_from_article(n),
          target: article_id_from_article(current_article),
        }
      end
    end

    File.write('_includes/articles_graph.json', JSON.dump({
      edges: graph_edges,
      nodes: graph_nodes,
    }))
  end

  def article_id_from_article(article)
    article.data['title']
      .dup
      .gsub(/\W+/, ' ')
      .delete(' ')
      .to_i(36)
      .to_s
  end
end
