---
layout: post
title: Jekyll-HMFAYSAL-Theme
homepage: https://github.com/hmfaysal/Jekyll-HMFAYSAL-Theme
demo: http://www.theevilgenius.tk
date: 2013-12-13 19:21:10
licence_link: https://github.com/hmfaysal/Jekyll-HMFAYSAL-Theme/blob/master/LICENSE
---
# Jekyll HMFAYSAL Theme

Project name:	Jekyll HMFAYSAL THEME  
Author:	Hossain Mohd. Faysal  
Project type:	A Bold Theme for Jekyll  
License:	GNU GPL V2  
  
Jekyll HMFAYSAL is a minimal, bold, responsive theme for your Jekyll powered blog. This theme powers [**Hossain Mohd Faysal**](http://social.hmfaysal.tk/index.php?a=profile&u=hmfaysal)'s blog [http://www.theevilgenius.tk/](http://www.theevilgenius.tk/). It is based on [**Minimal Mistakes Theme**](http://mmistakes.github.io/minimal-mistakes/) -- by designer slash illustrator [Michael Rose](http://mademistakes.com).

The theme features:

* A bold look, perfect for bloggers.
* Responsive Circular Navigation uses CSS3 transforms for better performance in mobile devices.
* Responsive layout. Looking good on mobile, tablet, and desktop.
* Gracefully degrading in older browsers. Compatible with Internet Explorer 9+ and all modern browsers.
* Minimal embellishments and subtle animations. 
* Readable typography to make your words shine. (Uses Electrolize and Abel from Adobe Edgefont)
* Support for large images to call out your favorite posts.
* Disqus comments if you choose to enable.
* Simple and clear permalink structure.
* Calculation of post read-time based on word count.
* Tags for [Open Graph](https://developers.facebook.com/docs/opengraph/) and [Twitter Cards](https://dev.twitter.com/docs/cards) for a better social sharing experience.
* Vanilla [custom 404 page](http://www.theevilgenius.tk/404.html) to get you started.
* Stylesheets for Pygments, Coderay and Highlight.Js to make your code examples look snazzy.
* Simple search that overlays results based on post title.
* Grunt build script for easier theme development.
* Sitemap for search engines

![screenshot of Jekyll HMFAYSAL Theme](http://s30.postimg.org/dk0gca0j5/Fullscreen_capture_12142013_11549_AM.jpg)

## Basic Setup for new Jekyll site

1. [Install Jekyll](http://jekyllrb.com) and read through the documentation if you haven't already.
2. Fork the [Jekyll HMFAYSAL Theme](https://github.com/hmfaysal/Jekyll-HMFAYSAL-Theme/fork)
3. Clone the repo you just forked.
4. Edit `_config.yml` to personalize your site.
5. Check out the sample posts in `_posts` to see examples for pulling in large feature images, assigning categories and tags, and other YAML data.
6. Read the documentation below for further customization pointers and documentation.


**Pro-tip:** Delete the `gh-pages` branch after cloning and start fresh by branching off `master`. There is a bunch of garbage in `gh-pages` used for the theme's demo site that I'm guessing you don't want on your site.

---

## Setup for Existing Jekyll site

1. Clone the following folders: `_includes`, `_layouts`, `plugins`, `assets`, and `images`.
2. Clone the following files and personalize content as need: `about.md`, `technical-details.md`, `index.html`, `categories.html`, `tags.html`, `feed.xml`, and `sitemap.xml`.
3. Set the following variables in your `config.yml` file:

``` yaml
title:            Site Title
description:      Site description for the metas.
logo:             site-logo.png
disqus_shortname: shortname
search:           true
#Comment out url when working locally to resolve base urls correctly
url:              http://whatever.com
cdn:		http://cdn.whatever.com

# Owner/author information
owner:
  name:           Your Name
  avatar:         your-photo.jpg
  email:          your@email.com
  signoff_text:   Till next time
  signoff_link:   http://localhost:4000/about
  signature_image:  signature.png
  # Social networking links used in footer. Update and remove as you like.
  # To register at HMFAYSAL SOCIAL, visit http://social.hmfaysal.tk
  twitter:
  facebook:
  github:
  linkedin:
  instagram:
  tumblr:
  hmfaysalsocial:
  # For Google Authorship https://plus.google.com/authorship
  google_plus:    "http://plus.google.com/123123123123132123"

# Analytics and webmaster tools stuff goes here
google_analytics:
google_verify:
# https://ssl.bing.com/webmaster/configure/verify/ownership Option 2 content= goes here
bing_verify:

# Links to include in top navigation
# For external links add external: true
links:
  - title: T-Details
    url: /technical-details
  - title: Tags
    url: /tags
  - title: Categories
    url: /categories
  - title: Blog
    url: /
    external: false
  - title: About
    url: /about

# http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
timezone:    America/New_York
future:      true
pygments:    false
highlight_js:	true
markdown:    kramdown
paginate:    4
paginate_path: "page:num"

# https://github.com/mojombo/jekyll/wiki/Permalinks
permalink:   /:categories/:title
```

---

## Post Front Matter YAML

A new post should have the following structure to utilise the themes functions

``` yaml
---
layout: post
title: "Some Title"					# Title of the post
description: Some description		# Description of the post, used for Facebook Opengraph & Twitter
headline: Some headline				# Will appear in bold letters on top of the post
modified: YYYY-MM-DD				# Date
category: personal
tags: []
image: 
  feature: some-image.jpg
  location: Some place
  locationlink: http://somewebsite.com/some-place
  credit: Some guy
  creditlink: http://someguy.com
comments: true
---
```

---

## Folder Structure
``` bash
Jekyll-HMFAYSAL-theme/
├───assets
│   ├───css
│   │       main.min.css
│   │
│   ├───fonts
│   │       fontawesome-webfont.eot
│   │       fontawesome-webfont.svg
│   │       fontawesome-webfont.ttf
│   │       fontawesome-webfont.woff
│   │       FontAwesome.otf
│   │
│   ├───js
│   │   │   highlight.js
│   │   │   modernizr-2.6.2.min.js
│   │   │   polyfills.js
│   │   │   scripts.min.js
│   │   │
│   │   ├───plugins
│   │   │       jquery.fitvids.js
│   │   │       jquery.magnific-popup.js
│   │   │       respond.js
│   │   │       simpleJekyllSearch.js
│   │   │
│   │   └───vendor
│   │           jquery-1.9.1.min.js
│   │
│   └───less
│           coderay.less
│           elements.less
│           font-awesome.less
│           forms.less
│           grid.less
│           main.less
│           mixins.less
│           page.less
│           pygments.less
│           reset.less
│           site.less
│           typography.less
│           variables.less
│
├───images
│
├───_includes
│       browser-upgrade.html
│       disqus_comments.html
│       footer.html
│       head.html
│       navigation.html
│       scripts.html
│       signoff.html
│
├───_layouts
│       page.html
│       post.html
│
├───_plugins
│       pluralize.rb
│       read-time.rb
│
└───_posts
```

---

## Questions?

Having a problem getting something to work or want to know why I setup something in a certain way? Ping me on Twitter [@hmfaysal](http://twitter.com/hmfaysal) or [file a GitHub Issue](https://github.com/hmfaysal/Jekyll-HMFAYSAL-Theme/issues/new).

---

## License

This theme is free and open source software, distributed under the [GNU General Public License](LICENSE) version 2 or later. So feel free to use this Jekyll theme on your site without linking back to me or using a disclaimer.

If you'd like to give me credit somewhere on your blog or tweet a shout out to [@hmfaysal](https://twitter.com/hmfaysal), that would be pretty sweet.


Warm Regards and Stay Creative,  
Hossain Mohd. Faysal
