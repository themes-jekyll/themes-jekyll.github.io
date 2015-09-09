---
layout: post
title: reusable-jekyll-site
homepage: https://github.com/edrex/reusable-jekyll-site
date: 2013-08-05 18:47:38
---
This is a starter project for people making Jekyll sites for hosting in Github Pages and editing with Prose.io. See it in action on [French Pressicus Technicalus](http://edrex.github.io).

## Features:

 - Clearly documented
 - Ready for Prose.io (includes a [links.json](links.json), edit link on each page, and various _config settings)
 - Uses Bootstrap 3
 - Uses [Redcarpet](https://github.com/vmg/redcarpet), the same markdown renderer as Github. **TODO:** Document GFM features in demo page.

## Quick start

 - [Fork me](https://github.com/edrex/reusable-jekyll-site/fork).
 - Rename the fork to **YOURNAME.github.io** in project settings to enable Github Pages.
 - Wait 10 minutes for the site to show up.
 - Edit your site using [Prose](http://prose.io/) or Github. Start with [_config.yml](_config.yml) and [index.html](index.html).

## Recommended Documentation

   - [Getting Started with Prose](https://github.com/prose/prose/wiki/Getting-Started)
   - [Jekyll](http://jekyllrb.com/docs/home/), [Liquid](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)
   - [Github Pages](https://help.github.com/articles/using-jekyll-with-pages)
   - [Bootstrap 3](http://getbootstrap.com/)

## FAQs

### Why don't my edits show up immediately?

Github Pages caches pages for 10 minutes whenever they are accessed. If you make a change while the page is cached, you will still see the old page until the cached page expires.

To bypass the cache, add a "cache-busting" query string after the URL, like so: 

    `http://mysite.github.io/my-page?somerandomstring`.

### How do I troubleshoot build failures?

If you have an error in one of your pages or templates, the new version will fail to build and Github will send you an email lacking any detail about what caused the failure. 

To see the error you can [run Jekyll locally](http://jekyllrb.com/docs/quickstart/) on a workstation.

### How can I pull in future improvements after I fork?

You can [merge](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging) my changes into your branch.

Here are the basic steps, using a local checkout of your repo:

* Add me as a remote:

  ```
  git remote add reusable git@github.com:edrex/reusable-jekyll-site.git
  git fetch reusable
  ```

* Merge, resolving conflicts as needed:
  
  ```
  git merge reusable/master master
  ```

Alternatively, if you know which commits contain the features you want, you might want to [cherry-pick](http://git-scm.com/docs/git-cherry-pick) just those commits.

