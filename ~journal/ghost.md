
# Use Ghost as a Headless CMS for Gatsby

This guide will launch Ghost as a back end editor for managing your site.

## Prerequisites

1. If you don't have a Heroku account, [create one with your email.](https://signup.heroku.com/)

2. If you don't have a Github account, [create one with your email.](https://github.com/signup)

3. Custom domain name. See: 

## Install Ghost on Heroku

1. Use the [One-click Heroku Installation of Ghost](https://heroku.com/deploy?template=https://github.com/snathjr/ghost-on-heroku). It may prompt you to accept Terms & Conditions.
![](https://miro.medium.com/max/2400/1*uxpnmx5LjjVPs9OPairfDQ.png)
2. Make a custom app name
3. Select the Region closest to you/expected users.
4. Scroll to bottom and hit Deploy App

It may prompt you for credit card details. You have to put something in, but they won't charge you -- going to see if we can get around this by not including the freemium addons.

Wait for the app to build.

When it's finished you will see Deploy to Heroku turn green and a button to `View` your site at [app-name].herokuapp.com

## Setup Ghost

After Ghost have been deployed, visit Ghost Admin at https://YOURAPPNAME.herokuapp.com/ghost and create an admin account.

You can also invite users if you will have others be contributing to your site.

## Launch Site on Netlify

## Integrate Ghost and Netlify

`/ghost/#/settings/integrations/new`



## Members including Paid

https://ghost.org/docs/members/

### Crypto Payment
Docs say `You can set up any third party payments system and create members in Ghost via API, or using automation tools like Zapier.`

Seems like it should be possible.

https://medium.com/@zingzai/create-a-free-jamstack-blog-using-ghost-heroku-and-netlify-7727d82ae56b

Netlify - Ghost
https://github.com/TryGhost/gatsby-starter-ghost/blob/master/netlify.toml