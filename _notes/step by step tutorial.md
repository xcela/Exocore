---
title: Step-by-step Tutorial
published: true
toc: Y
---

You can set up a public [[exocortex]] of your own in 5 minutes, with no code or installation, using entirely free services to host your site on the web. 

All pages are converted from simple, non-code [[Markdown]] syntax, so you can focus purely on writing. 

The end result will look similar to this:



# Tutorial

## Introduction

Github will be used as a cloud content management system - it's convenient to upload updates to, accessible and editable from anywhere, and keeps full version history of changes as well as provides easy options for back-up.

Netlify will be used to deploy the files stored on Github as a web-server - it's fast and automatically updates whenever an update is made on your Github repository. Github does offer its own static webhost, but Netlify is necessary due to certain plugin support limitations. 

Netlify will also provide your site a custom subdomain, e.g. `[site-name].netlify.app`. You can also use your own purchased domain.

All services are entirely free besides the custom domain.

## 1. Create Github Account

First, create an account on [github.com](https://github.com/) if you do not already have one.

If you are unfamiliar with Github and do not have an account, please first follow the [[Github Tutorial for Exocore]] where you will be handheld through the steps to [create a Github account], [install Github] and [using Github for site updates].

Continue below if you have an account ready.

## 2. Install the Exocore template to GitHub and Netlify

Open our [One-click installation](https://app.netlify.com/start/deploy?repository=https://github.com/xcela/exocore).

Steps:
1. Select `Connect to Github`
2. Login and select `Authorize Application`
3. Name your repository - this is only for your own reference
4. Select `Deploy site`

Netlify will now take about 5 minutes for the initial build of the site. If you want, you can watch the status of the build by clicking ``Production: master@HEAD`` under **Production Deploys**.

Once it's complete, the Production status will change to **Published**, and you will be able to click the [site-name].netlify.app link to see your live site.

The site's master files will also appear in your Github account, under the repository name you selected, e.g. `github.com/account-name/repository-name`. Changes here will go live on the site automatically.

### 2.1 Change your site name

Your site will be available for anyone to view at `[site-name].netlify.app.`

You can change the default generated site name to whatever you'd like by navigating to Site settings > Site details > Change site name, as long as its not already taken by another Netlify site, to get a new url.

## 3. Editing your Site

The page files are all hosted on your Github site repository and can be edited in a multitude of ways. If you are familiar and comfortable with Github, you can use it as normal to download the files on your computer, edit it with your preferred text editor, and push updates to the site repository.

However, if this is not a workflow you are used to, I recommend [Prose](https://prose.io/), a web based Markdown editor connected to your Github account, so you can manage your site freely from any machine without any installations.

### Using Prose.io

Simply navigate to [Prose.io](https://prose.io/) and login with your Github account. You will see your site listed under *Explore Projects*. 

Enter it and you will find the `_notes` and `_pages` folders where you can edit all your posts.

Formatting is colored for Markdown syntax with preview available.

When you're done editing a post, simply hit save in the right sidebar. The changes will propagate on your live site in a few seconds.

## 4. Optional: Custom Domain

Custom domains can be added for a better look and more memorable url, but you will need to purchase one. If you already have a domain, follow the steps in [Configuring a Domain Purchased Elsewhere](#Configuring-a-Domain-Purchased-Elsewhere) 

### Purchase Domain on Netlify

If you do not already have a domain, you can purchase it directly within Netlify by adding in a new Custom domain. Prices aren't the best on the market (e.g. `.com` is $15/yr, market rate is $12/yr), but it will automate all setup.

1. Navigate to Settings > Domain Management > Add custom domain.
2. Enter the domain you would like
3. If it is unavailable, you will see `[domain] already has an owner. Is it you?`. Select `No, try another`.
4. If you find one that is available, you will be provided prices and option to register. You can use a [Domain search tool](https://domains.google.com/registrar/search) to help find available domains.

Once you have a domain purchased, Netlify will automate handling DNS configuration and SSL encryption, so your site will be fully ready to go on your domain.

### Purchasing a Custom Domain
 
Domains can be purchased from a variety of suppliers for affordable rates - a `.com` domain goes for about $12/year, though uncommon domains like `.xyz` can be found for as low as $2/year.

I can recommend [Google Domains](https://google.com/domains), I use it because it includes privacy protection and custom email aliases for free, and has an easy to navigate dashboard, as well as Google's very fast DNS. 

For uncommon domains and more competitive prices, [Namecheap](https://namecheap.com) is reliable - it also has a solid "Beast mode" search for finding rare domains.

#### Configuring a Domain Purchased Elsewhere

If you purchase your domain elsewhere, you will need to configure your domain provider to point the domain to your Netlify site. Folow this guide: [Configure external DNS for a custom domain](https://docs.netlify.com/domains-https/custom-domains/configure-external-dns/). 

The steps on your domain provider's end will be different depending on your provider, look for something along the lines of "Create A or CNAME Record", "Point DNS to Domain" or "Manage DNS Records".

Then add the custom domain in Netlify:
1. Navigate to Settings > Domain Management > Add custom domain.
2. Enter the domain you would like `[domain] already has an owner. Is it you?`. Select `No, try another`.
3. If you find one that is available, you will see 
3. Select Yes, add domain

SSL (https) will be configured automatically.

## Usage

Your site is now live and ready to be used!

Some things to keep in mind:

* The site is separated into note and pages. Notes are the web of articles/posts that forms the body of your site; pages are more permanent structure, like the homepage or about page.
* Pages are located in `_pages/`. Your homepage is `index.md`.
* Notes are located in `_notes/`.
* Creating a new note is as simple as creating a new file with a `.md` filename in the `_notes` folder. Same goes for pages.
* Linking to other notes or pages is done by writing double brackets around the title of the linked note, e.g. `[[Step by Step Tutorial]]`.

That's all you need to get started! You can follow up with more details on [[Writing Posts]] and [[Markdown Syntax]].

You may also consider [[changing themes]], [[site customization]] and [[self-hosting your Exocore]].
