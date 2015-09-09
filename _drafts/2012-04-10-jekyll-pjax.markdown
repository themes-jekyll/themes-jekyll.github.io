---
layout: post
title: jekyll-pjax
homepage: https://github.com/snaptortoise/jekyll-pjax
demo: http://snaptortoise.com/pjaxify-demo
date: 2012-04-10 01:10:05
---
# Jekyll pjax

This Jekyll template is designed to work with pjax.  Quick instructions:

- Build your Jekyll site as normal
- Run `pjaxkify.sh`
- Do what you will with your site that's now in the `_site` folder.

That's it.

Demo: [http://snaptortoise.com/pjaxify-demo](http://snaptortoise.com/pjaxify-demo)

## The important bits


`_includes/snippet.html`
This is the layout that's used to render the content for a page without the header and footer chrome.

`snippets/*`
This is where the HTML snippets, called by pjax and inserted into the designated element, are stored.

`.htaccess`
This will tell the server to use the snippets instead of the full pages when the HTTP_X_PJAX header is present. Otherwise, the pages are loaded as normal.

## How to use this

`pjaxify.sh`

After you've setup your Jekyll blog, run this script as you might normally run Jekyll.  It will go through all of the pages, copy them to the snippets folder and replace the layout in the front matter with "snippets" so that they're rendered appropriately. Once this is done it will run Jekyll, creating the site the in `_site` folder as normal, and copy the `.htaccess` file there.
