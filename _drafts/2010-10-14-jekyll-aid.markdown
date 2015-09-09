---
layout: post
title: jekyll-aid
homepage: https://github.com/coolaj86/jekyll-aid
demo: http://coolaj86.github.com/jekyll-aid
date: 2010-10-14 16:53:19
---
Jekyll-aid
====

Jekyll, the ruby-based blog-aware site builder has no default setup.

Jekyll-aid provides a nice "template" for a Jekyll-based site.

  * Disqus Comments
  * Google Analytics
  * categories for posts (in a tag-like fashion)
  * plays well with subdirectories

Usage
====

Add Jekyll-aid to your Jekyll-blog.

    git remote add jekyll-aid git://github.com/coolaj86/jekyll-aid.git
    git pull jekyll-aid gh-pages

You will have conflicts if you already had any content.

    git mergetool
    git checkout --ours ./path/to/file
    git checkout --theirs ./path/to/file

    git commit -a -m "now using jekyll-aid"

You Jekyll-aid!

    ./mkdocument 'Title of my Awesome-blog post!!!'

  * creates `_posts/2010-10-14-title-of-my-awesome-blog-post.md`
  * create link `edit/title-of-my-awesome-blog-post.md`
  * adds `created_at` timestamp
  * creates `UUID` (for disqus comments)
  * adds to `unfinished` category

Prepare
====

Accounts you'll need:

  * [Google Analytics](http://code.google.com/apis/ajaxsearch/signup.html)
  * Disqus Comments

Files to edit:

  * `all.html` -- change the `title`
  * `index.html` -- change the `title`
  * `_layouts/default.html` -- replace `___YOUR_ID_HERE___` and `___YOUR_UA_HERE` with your `disqus id` and `google analytics id`
  * `_layouts/article.html` -- replace `___YOUR_ID_HERE___` with your `disqus id`
  * `_config.yml`
    * change the `destination`
    * url_root to `/your/subpath`
  * `CNAME` -- if you're hosting on github and have a custom domain, enter it here (*without* the www prefix)

TODO
====

  * `./editdocument edit/title-of....`
    * updates `updated_at` date automagically

  * join forces with / steal ideas from [Jekyll-base](http://raphinou.github.com/jekyll-base/)
    * use jekyll-base format for url_root, ga_id, google_ajax_search in _config.yml

  * Post about this to [the Jekyll mailing list](http://groups.google.com/group/jekyll-rb)

