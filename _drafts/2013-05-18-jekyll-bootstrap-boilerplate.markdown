---
layout: post
title: jekyll-bootstrap-boilerplate
homepage: https://github.com/albrow/jekyll-bootstrap-boilerplate
date: 2013-05-18 00:10:33
licence_link: https://github.com/albrow/jekyll-bootstrap-boilerplate/blob/master/LICENSE
---
Jekyll Bootstrap Boilerplate
============================

## What's This?

This is a boilerplate jekyll setup that includes bootstrap, and some other nifty stuff.
It is what I typically use when developing static websites. It's better than working
with static html and css files directly because:

- Sass is compiled automatically
- It includes a lot of cool features from Jekyll and Octopress
- You can use the liquid templating language to write DRYer code
- You can write pages and templates in any combination of html and markdown
- Assets are automatically uglified and gzipped
- Deployment tools for aws or rsync are included

NOTE: Though these tools work great for me, they're relatively untested.
I offer no guarantees that they will work for you. (But I hope someone might find them useful!)

Requires ruby and rubygems.

## Basic Usage

#### Set Up:
- Fork or clone it.
- Run `cp -r jekyll-bootstrap-boilerplate/ your-new-project-name/`
- `cd your-new-project-name`
- `bundle install`

#### Adding stylesheets
- Bootstrap is already included.
- Your stylesheets should go in the custom folder. They will be automatically imported after bootstrap (so they will override it).

#### Adding pages
- Run `bundle exec rake g new_page[:your_page_name]`
- Jekyll will create a folder in the source directory with an index.markdown file.
- It's static, so requests to '/your_page_name' will be directed to the index file in that folder.

#### Serving Locally
- Run `bundle exec rake generate` to compile your static site to the public directory.
- You can run `bundle exec rake watch` to listen for changes and recompile automatically.
- Visit the public folder in your browser.
- Or (my preferred method) use [pow](http://pow.cx/)

#### Deploying to AWS S3 (and CloudFront)
- Set up an account and a bucket on [Amazon Web Services](http://aws.amazon.com/).
- Add a bucket and cf_distribution_id (optional) in _config.yml
- You will need to set two environment variables: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY,
which you can find on the AWS website after you register.
- Run `bundle exec rake deploy`
- Other deploy methods are available in Rakefile (I haven't personally tested them).

## TODO:

In general:

- Add some tests
- Improve generality and customizability
- Strip out some stuff that isn't typically used

## Acknowledgements
This uses all or parts of the following (sometimes with modification): 
* [Octopress by Brandon Mathis](http://octopress.org/) – [(License)](https://github.com/imathis/octopress#license)
* [Jekyll by Tom Preston-Werner & Nick Quaranto](https://github.com/mojombo/jekyll) – [(License)](https://github.com/mojombo/jekyll/blob/master/LICENSE)
* [Bootstrap by Twitter](http://twitter.github.com/bootstrap/) – [(License)](https://github.com/twitter/bootstrap/blob/master/LICENSE)
* [bootstrap-sass by Thomas McDonald](https://github.com/thomas-mcdonald/bootstrap-sass) – [(License)](https://github.com/thomas-mcdonald/bootstrap-sass/blob/master/LICENSE)

Much thanks to everyone who contributed to the above projects, and to any other projects, frameworks,
or snippets of code that I've incorporated.


## LICENSE
(The MIT License)

Copyright (C) 2012, Alex Browne

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

