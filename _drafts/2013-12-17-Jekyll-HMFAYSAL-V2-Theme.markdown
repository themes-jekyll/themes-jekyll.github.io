---
layout: post
title: Jekyll-HMFAYSAL-V2-Theme
homepage: https://github.com/hmfaysal/Jekyll-HMFAYSAL-V2-Theme
demo: http://v2.theevilgenius.tk
date: 2013-12-17 15:30:19
licence_link: https://github.com/hmfaysal/Jekyll-HMFAYSAL-V2-Theme/blob/master/LICENSE
---
# HMFAYSAL V2

**[HMFAYSAL V2](http://v2.theevilgenius.tk)** is a two column responsive Jekyll theme by Engineer [Hossain Mohd Faysal](http://hmfaysal.tk) featuring a slide out drawer menu in mobile browsers.

## HMFAYSAL V2 is all about:

* Responsive templates. Looking good on mobile, tablet, and desktop.
* Gracefully degrading in older browsers. Compatible with Internet Explorer 8+ and all modern browsers. 
* Minimal embellishments. Content first; other widget nonsense never.
* Large feature images for posts and pages.
* Simple and clear permalink structure.
* [Custom 404 page](http://v2.theevilgenius.tk/404.html) to get you started.
* Stylesheets for Pygments and Coderay [syntax highlighting](http://v2.theevilgenius.tk/articles/code-highlighting-post/) to make your code examples look snazzy.

![screenshot of HMFAYSAL V2 theme](http://v2.theevilgenius.tk/images/Jekyll-HMFAYSAL-Theme.jpg)

General notes and suggestions for customizing HMFAYSAL V2 Theme.

## Basic Setup

1. [Install Jekyll](http://jekyllrb.com) if you haven't already.
2. Fork the [Jekyll HMFAYSAL V2 Theme repo](http://github.com/hmfaysal/Jekyll-HMFAYSAL-V2-Theme/)
3. Clone the repo you just forked to your computer.
4. Edit `_config.yml` to personalize your site.
5. Check out the sample posts in `_posts` to see examples for pulling in large feature images, tags, and other YAML data.
6. Read the documentation below for further customization pointers and documentation.

[Demo the Theme](http://v2.theevilgenius.tk)

**Pro-tip:** Delete the `gh-pages` branch after cloning and start fresh by branching off `master`. There is a bunch of garbage in `gh-pages` used for the theme's demo site that I'm guessing you don't want on your site. Also type in `chcp 65001` if the prompt shows UTF-8 or IBM47 error.

---

## Setup for an Existing Jekyll site

1. Clone the following folders: `_includes`, `_layouts`, `assets`, and `images`.
2. Clone the following files and personalize content as need: `about.md`, `articles.html`, `index.md`, `feed.xml`, `sitemap.xml`
3. Set the following variables in your `config.yml` file:

``` yaml
title:            Site Title
description:      Describe your website here.
disqus_shortname: shortname
url:              http://your-website.com

# Owner/author information
owner:
  name:           Your Name
  avatar:         avatar.jpg
  bio:            "Your bio goes here. It shouldn't be super long but a good two sentences or two should suffice."
  email:          you@email.com
  # Social networking links used in footer. Update and remove as you like.
  twitter:        
  facebook:       
  github:         
  stackexchange:  
  linkedin:       
  instagram:      
  flickr:         
  tumblr:         
  hmfaysalsocial:	
  # For Google Authorship https://plus.google.com/authorship
  google_plus:    

# Analytics and webmaster tools stuff goes here
google_analytics:   
google_verify:      
# https://ssl.bing.com/webmaster/configure/verify/ownership Option 2 content= goes here
bing_verify:         

# Links to include in top navigation
# For external links add external: true
links:
  - title: Home
    url: /
  - title: About
    url: /about/
  - title: Articles
    url: /articles/
  - title: Setup
    url: /theme-setup/
  - title: T-Details
    url: /technical-details/
  - title: The Evil-Genius
    url: http://www.theevilgenius.tk/
    external: true

# http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
timezone:    America/New_York
future:      true
pygments:    true
markdown:    kramdown

```

---

## Questions?

Having a problem getting something to work or want to know why I setup something in a certain way? Ping me on Twitter [@hmfaysal](http://twitter.com/hmfaysal) or [file a GitHub Issue](https://github.com/hmfaysal/Jekyll-HMFAYSAL-V2-Theme/issues/new). And if you make something cool with this theme feel free to let me know.

---

## License

This theme is free and open source software, distributed under the [GNU General Public License](http://v2.theevilgenius.tk/LICENSE) version 2 or later. So feel free to use this Jekyll theme on your site without linking back to me or including a disclaimer. 

