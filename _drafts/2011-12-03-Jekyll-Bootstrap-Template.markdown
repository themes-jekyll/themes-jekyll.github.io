---
layout: post
title: Jekyll-Bootstrap-Template
homepage: https://github.com/jgritman/Jekyll-Bootstrap-Template
date: 2011-12-03 22:44:04
---
# Jekyll Bootstrap Template

This is a forked version of [Kris Brown's jekyll template](https://github.com/krisb/jekyll-template/) modified to provide a layout driven by [Twitter Bootstrap](http://twitter.github.com/bootstrap/).

Additional differences between this and the original are:

 * [Less](http://lesscss.org/) is used instead of Compass for CSS.
 * The pages render HTML5 semantic elements (nav, header, article, time) where appropriate.  The design was based on [this article from HTML5 Doctor](http://html5doctor.com/designing-a-blog-with-html5/).
 * The 'html5 shim' is used to support these HTML5 elements older versions of IE.
 * A 'recent entries' navigation bar was added on the left hand side of the page.
 * A Google site search was added to the top of the page.
 * Deploy to Heroku through rake added based on [this blog post](http://joshuawood.net/how-to-deploy-jekyll-slash-octopress-to-heroku/).

A sample version of the template is available at http://electric-autumn-8147.heroku.com/.

The original documentation is below.  The only difference in the installation is that the lessc executable is required on the path when running rake.

# Original documentation from Jekyll Template

This is a template project for jekyll that you can clone and customise to suit your needs.  Its quite opinionated in what it provides, the idea is to get you up and running with feed support, analytics and comments and feedback.  This is meant for a standalone blog, not for [github pages](http://pages.github.com/)

Please don't fork otherwise I'll see lots of noise on the fork queue that are your customisation for your blog.  I suggest you create a repo on github (public or private, its up to you) and do the following assuming the new repo is available at `https://github.com/username/reponame`:

    git clone https://github.com/krisb/jekyll-template.git mysite
    cd mysite
    rm -rf .git
    git init
    git add -A
    git commit -m 'initial template based on https://github.com/krisb/jekyll-template'
    git remote add origin git@github.com:username/reponame.git
    git push -u origin master

The following sections detail how to set up and use the template.  The commands are known to work on my macbook, YRMV.

## Ruby 1.9.2 via RVM

I recommend that you install [rvm](http://rvm.beginrescueend.com/) and set everything up using that.  For single user install run the following:

    bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )

Follow the instructions, adding the necessary lines in `.bashrc`, e.g.

    # RVM
    if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
      source "$HOME/.rvm/scripts/rvm"
    fi

Now source `.bashrc` (you don't need to do this normally as it runs on login, it is just to update the current term window)

    source ~/.bashrc

You can then install and use ruby 1.9.2:

    rvm install 1.9.2
    rvm use 1.9.2

## Gems

Run the following to install the necessary gems:

    gem install jekyll rdiscount compass

## Markup

I prefer markdown, but you can use a number of supported markup formats.

## Pygments (code highlighting)

Assuming you have python installed with `easy_install` available:

    sudo easy_install Pygments

## Stylesheets

I recommend that you use [compass](http://compass-style.org/).  I've included `_sass/mixins/_syntax.scss` for the pygments syntax highlighting.

## Rake deploy task

The following tasks are available (use `rake -T` to list them):

    rake build        # Build site with Jekyll
    rake check_links  # Check links for site already running on localhost:4000
    rake clean        # Clean up generated site
    rake deploy       # Build and deploy
    rake server       # Start server with --auto

The deploy task is simplistic and uses rsync to copy the generated site to your server.  You will need to replace the username, servername and path as appropriate.

## Configuration

There are a number of values in `_config.yml` to customise your site.  Change as appropriate.

The following enhancements are baked in and enabled if you provide the configuration required.

* [Google Analytics](http://www.google.com/analytics) - web analytics using the [async](http://www.google.com/support/analytics/bin/answer.py?hl=en&answer=174090) script
* [Disqus](http://disqus.com/) - comments and feedback
* [Feedburner](http://feedburner.google.com/) - rss feeds
* [Github Ribbon](https://github.com/blog/273-github-ribbons) - fork me on github ribbon

