---
layout: post
title: Writing notes
---

### Link syntax

To link to another note, you can use multiple syntaxes. The following four use the "double-bracket" notation ([view the Markdown source file](https://github.com/maximevaillancourt/digital-garden-jekyll-template/blob/master/_notes/your-first-note.md#link-syntax) to see the underlying syntax).

- Using the note title - ``` [[a note about cats]]``` - [[a note about cats]]
- Using the note's filename: ```[[cats]]``` - [[cats]]
- Using the note's title, with a label: ```[[A note about cats|link to the note about cats using the note title]]``` - [[A note about cats|link to the note about cats using the note title]]
- Using the note's filename, with a label: ```[[cats|link to the note about cats using the note's filename]]``` - [[cats|link to the note about cats using the note's filename]]

In all cases, if the double-bracket link does not point to a valid note, the double brackets will still be shown, like this: ```[[there is no note that matches this link]].``` - [[there is no note that matches this link]].

Alternatively, you can use regular [Markdown syntax](https://www.markdownguide.org/getting-started/) for links, with a relative link to the other note, like this: ```[this is a Markdown link to the note about cats](/cats){: .internal-link}``` - [this is a Markdown link to the note about cats](/cats){: .internal-link}. Don't forget to use the `.internal-link` class to make sure the link is styled as an internal link (without the little arrow).

Of course, you can also link to external websites, like this: ```[this is a link to Wikipedia](https://wikipedia.org/)``` [this is a link to Wikipedia](https://wikipedia.org/).

### Automatic bi-directional links

Notice in the "Interlinked posts" section at the bottom of the page, there is another note linking to this note. This is a bi-directional link, and those are automatically created when you create links to other notes.

### Link previews

If you're on a device with mouse support, try hovering your mouse on internal links to preview the notes: [[a note about cats]].

### Header

All notes should begin with a header of the top showing title:
```
---
Tite: Page Title
---
```

Additionally, you can add tags and categories:
```
Tags: x, y, z
Category: a
```

### Table of Contents

Table of contents plug is turned off by default. It can be added by including the following in the header:
```
toc: on
```

### Graph

The graph is turned on by default at the bottom of every page. It can be turned off by including the following in the header:
```
graph: off
```

### Images and other Markdown goodies

Finally, because you have the full power of Markdown in this template, you can use regular Markdown syntax for various formatting options.

Lists work as expected:

- List element A
- List element B
- List element C

1. List element
2. List element
3. List element

If you'd like to quote other people, consider using quote blocks:

> Lorem ipsum dolor sit amet

And of course, images look great:

<img src="/assets/image.jpg"/>

### Code syntax highlighting

You can add code blocks with full syntax color highlighting by wrapping code snippet in triple backticks and specifying the type of the code (`js`, `rb`, `sh`, etc.):

```js
// Here's a bit of JavaScript:
console.log('hello!')
```

```rb
# And now some Ruby
def foo(bar)
  "baz"
end
```

```sh
$ cat /dev/urandom | grep "the answer to life" # shell scripts look nice too
```

[[Introduction to Markdown]]