---
title: Step-by-step Tutorial
---

You can set up a [[public exocortex]] of your own in a few minutes, and have your own personal corner of the Internet where you’ll seed and grow ideas.

If you’re familiar with [[Markdown]] and/or HTML, you’ll be right at home, as that’s how your notes will be formatted.

The end result will look similar to this:

img

# Instructions

If you already have Github setup and installed, skip to [3. Create a fork of the template repository](#Create-a-fork-of-the-template-repository).

## 1. Create a Github Account

## 2. Install Github

## 3. Create a fork of the template repository

Visit the GitHub page for our template repository (), and fork it to your account using the Fork button:

img

Once the forking process is complete, you should have a fork (essentially a copy) of my template in your own GitHub account. On the GitHub page for your repository, click on the green “Clone or download” button, and copy the URL: we’ll need it for the next step.

## 4. Clone your repository locally

### Github Desktop

### Github CLI

Next, we want to download the files from your GitHub repository onto your local machine. To do this, replace <YOUR_COPIED_URL_HERE> in the command below with the URL you copied in the previous step, then execute this command:

$ git clone <YOUR_COPIED_URL_HERE> my-digital-garden
As a reference point, this is how it looks like for me (the difference is likely just the GitHub username):

$ git clone git@github.com:maximevaillancourt/digital-garden-jekyll-template.git my-digital-garden
Then, navigate into the directory that was just created:

$ cd my-digital-garden


## 5. Connect your GitHub repository to Netlify

Netlify lets you automatically deploy your digital garden on to the Internet when you update your GitHub repository, allowing use to use the additional plugins that Github's own webhosting service, GH Pages, doesn't support.

To do this, we need to connect your GitHub repository to Netlify:

1. Log in to [Netlify](https://netlify.com)
2. Once logged in, click the “New site from Git” button
3. On the next page, select GitHub as the continuous deployment provider (you may need to authorize the connection, in which case, approve it)
4. On the next page, select your digital garden repository from the list
5. On the next page, keep the default settings, and click on “Deploy site”.

That was easy! We’re almost done.

Wait a couple of minutes for the initial deploy to complete.

Once that’s done, your digital garden should be available on the Internet via a generic Netlify URL, which you can change to a custom domain later if you’d like.

Now the cool thing is this: whenever you push an update to your GitHub repository, Netlify will automatically deploy your updates to the Internet.

## 6. Preparing pages in Markdown

At this point, you can start updating the files on your machine to fill in your exocortex to your liking. They are located in ```_notes```.

The notes are otherwise formatted in standard [[Markdown]]

### Header

All notes should begin with a header of the top showing title:
```
---
Tite: Note Title
---
```

Additionally, you can add tags and categories:
```
Tags: x, y, z
Category: a
```

### Interlinking

Interlinking to other pages on your site are done with double brackets around the page name ```[[Page title]]```. If the page does not exist, it will be highlighted in a different color when the site is rendered.

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

## 8. Updating site live

Pushing to github

### Github Desktop

### Github CLI

## 9. Customization

Please see the following guides for Jekyll customization

Default CSS is in ```_sass/_style.scss``` and default HTML layouts are in ```_layouts``` and ```_includes```.

---