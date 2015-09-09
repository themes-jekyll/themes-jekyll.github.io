---
layout: post
title: jekyll-site
homepage: https://github.com/noamross/jekyll-site
date: 2012-04-12 19:48:13
---
This is my website, found at <http://www.noamross.net>.  It is produced using [Jekyll](https://github.com/mojombo/jekyll) with [Pandoc](http://johnmacfarlane.net/pandoc/) and the Pandoc [plugin](https://github.com/dsanson/jekyll-pandoc-plugin)

This repository (<http://github.com/noamross/jekyll-site>) has the pre-processed files and the post-processed files are under `_site`.   I process the website locally on my computer and then push it to the host ([nearlyfreespeech.net](nearlyfreespeech.net)).

I do some post-processing of the jekyll site before pushing to tweak RSS feeds.  See `newpost.sh` for and my [post](http://www.noamross.net/blog/2012/4/4/math-in-rss-feeds.html) on this.
