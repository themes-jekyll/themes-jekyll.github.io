---
layout: post
title: bourbonify-jekyll
homepage: https://github.com/klapec/bourbonify-jekyll
date: 2014-09-11 00:23:32
licence_link: https://github.com/klapec/bourbonify-jekyll/blob/master/LICENSE
---
#bourbonify-jekyll

##Description
Simple boilerplate designed for creating [Jekyll](http://jekyllrb.com)-based websites. Allows you to quickly start on your project without having to worry about some boring stuff.

By default there are included:

- [Normalize.css](http://necolas.github.io/normalize.css/), a modern alternative to CSS resets,
- [Bourbon](http://bourbon.io), a simple and lightweight mixin library for [Sass](http://sass-lang.com),
- [Neat](http://neat.bourbon.io), a lightweight and semantic grid framework for [Sass](http://sass-lang.com) and [Bourbon](http://bourbon.io),
- [Gulp](http://gulpjs.com), task runner with several awesome plugins,
- [jQuery](http://jquery.com), javascript library,
- [svg4everybody.js](https://github.com/jonathantneal/svg4everybody), script allowing to use external SVG sprites in browser that do not support this feature.

## How to use
1. Make sure you have ``git``, ``nodejs``, ``npm`` and ``bower`` installed,
2. Clone the repo (``git clone https://github.com/klapec/jekyll-bourbonify.git`` or using a GUI git client) and ``cd`` into it,
3. Run ``npm install``,
4. First time after cloning the repo run ``gulp build`` to download and install all the assets and build jekyll.
5. Use ``gulp`` every time you want to start the local development environment.

## Gulp tasks
There are few gulp tasks present in the gulpfile.

- ``gulp build`` – downloads dependencies (Normalize.css, Bourbon and Neat) using Bower, moves them to ``assets/src/stylesheets/vendors/``, renames Normalize so that it can be imported by Sass and then builds Jekyll,
- ``gulp`` (default task) – builds all the assets (stylesheets, scripts, images and SVGs) and begins to watch all the files for changes. It will automatically re-run compilation of changed asset and reload the browser,
- ``gulp styles`` – handles stylesheets compilation. Uses **sass** (ruby-sass) to compile Sass into CSS, **autoprefixes** all the needed vendor prefixes in your CSS files, **minifies** them and outputs the compiled ``main.min.css`` to ``assets/dist/stylesheets/``,
- ``gulp scripts`` – handles JavaScript scripts. It first uses **jshint** to lint your scripts and check if there are any errors in them, it then **concatenates** all your scripts into a single file (decreasing HTTP request for performance reasons) and **minifies** it using ``uglify``,
- ``gulp vendorScripts`` – does pretty much the same as the task above. It handles vendor scripts (from ``assets/src/scripts/vendors/``) but it doesn't run them through linting – we are *assuming* that those 3rd party scripts were written properly,
- ``gulp images`` – optimizes your images. Uses **imagemin** to shrink them in size while not losing too much of quality,
- ``gulp svg`` – does pretty much the same except for your SVG files. The difference is that it automatically compiles them into a single ``sprite.svg`` file (again, performance reasons). Each of your SVG files can be accessed then in your website easily by an ID of their original name, prefixed by ``icon-``. Read more about this technique on [CSS-Tricks](http://css-tricks.com/svg-use-external-source/),
- there's also a series of tasks that automatically inject paths to relevant assets into the ``default.html`` layout file. This is necessary because we are changing compiled assets' filenames each time they're rebuilt by appending a new revision hash. And because of this, we can use better browser caching (if the server is correctly set up).

## Directory tree
```
├── _includes
│   ├── footer.html
│   └── header.html
├── _layouts
│   ├── default.html
│   ├── page.html
│   └── post.html
├── _posts
│   ├── 2014-09-08-sample-post-1.md
│   └── 2014-09-11-sample-post-2.md
├── assets
│   ├── dist
│   ├── scripts
│   │   ├── main-d41d8cd9.min.js
│   │   └── vendors-6cead6a5.min.js
│   └── stylesheets
│   │   └── main-92a05f0c.min.css
│   └── src
│   │   ├── images
│   │   ├── scripts
│   │   │   ├── vendors
│   │   │   │   └── svg4everybody.js
│   │   │   └── main.js
│   │   ├── stylesheets
│   │   │   ├── base
│   │   │   │   ├── _base.scss
│   │   │   │   ├── _settings.scss
│   │   │   │   └── _typography.scss
│   │   │   ├── components
│   │   │   │   ├── _lists.scss
│   │   │   │   ├── _post.scss
│   │   │   │   └── _posts-list.scss
│   │   │   ├── pages
│   │   │   ├── partials
│   │   │   │   ├── _footer.scss
│   │   │   │   ├── _global.scss
│   │   │   │   └── _header.scss
│   │   │   ├── themes
│   │   │   ├── utils
│   │   │   ├── vendors
│   │   │   └── main.scss
│   │   └── svg
├── LICENSE
├── README.md
├── _config.yml
├── bower.json
├── favicon-192x192.png
├── favicon.ico
├── feed.xml
├── gulpfile.js
├── index.html
├── package.json
├── sample-page.md
└── test-page.md
```

