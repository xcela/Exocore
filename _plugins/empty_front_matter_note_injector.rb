# frozen_string_literal: true

EMPTY_FRONT_MATTER = <<~JEKYLL
  ---
  ---

JEKYLL

# Inject empty front matter in articles that don't have any
Jekyll::Hooks.register :site, :after_init do |site|
  Dir.glob(site.collections['articles'].relative_directory + '/**/*.md').each do |filename|
    raw_article_content = File.read(filename)
    unless raw_article_content.start_with?('---')
      raw_article_content.prepend(EMPTY_FRONT_MATTER)
      File.write(filename, raw_article_content)
    end
  end
end
