---
layout: post
title: jekyll-starter
homepage: https://github.com/cnunciato/jekyll-starter
date: 2012-09-17 16:48:49
---
jekyll-starter
==============

A super-simple starter kit for a bare-bones Jekyll instance.  To use, just install Jekyll  (if you haven't already):

    gem install jekyll

... then:

	mkdir my-new-blog; cd my-new-blog
	git clone git://github.com/cnunciato/jekyll-starter.git .

... and then finally:

    jekyll --server

Then open your browser and hit [http://localhost:5000](http://localhost:5000).

That'll get you a home page and one post.  The rest is all you!  See the [Jekyll docs](https://github.com/mojombo/jekyll/wiki) for details.

Keep in mind that at this point, you'll have a cloned version of my repository, which you might not want.  To start fresh with a commit history of your own (which I'd recommend, unless you plan on contributing to this project), do this from the root of `my-new-blog`:

    rm -rf .git
    git init
    git add .
    git commit -am "my first commit"

### What This Actually Does	

All this kit does is set you up with the typical Jekyll directory structure, a sample index.html file, a sample post, a shared header and footer, and a couple of tweaks to the default configuration (port 5000, auto-regenerate true).  That's it -- no categories, no tags, no Twitter or Disqus integration, no fanciness.  Deliberately simple, just the basics.  I know I wanted this when I first got started with Jekyll, so here it is -- hopefully helpful to you, too.

To create a new post, just:

    touch _posts/yyyy-mm-dd-url-friendly-title.markdown

... where yyyy-mm-dd is a date (e.g., 2012-08-31) and url-friendly-title is, well, a URL-friendly title.  Then inside that post, be sure to add at least the minimal [YAML front matter](https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter) (see the _posts folder for an example):

    ---
    layout: post
    title: "My Second Post"
    ---

   	It was a dark and stormy night...

Enjoy.

