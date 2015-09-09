---
layout: post
title: jekyll-boilerplate
homepage: https://github.com/chrisjacob/jekyll-boilerplate
demo: http://chrisjacob.github.com/jekyll-boilerplate
date: 2011-02-05 10:17:22
---
# ( NOT FINISHED / UNDER DEVELOPMENT )
# Jekyll Boilerplate

My starting template for Jekyll powered websites.

Repository:
[https://github.com/chrisjacob/jekyll-boilerplate](https://github.com/chrisjacob/jekyll-boilerplate)

GitHub Pages:
[http://chrisjacob.github.com/jekyll-boilerplate](http://chrisjacob.github.com/jekyll-boilerplate)

My publishing method is a bit different to most...

I work on my local machine, run "jekyll --server", which generates the _/site files.

I make sure everything looks good, then run "git add -a", "git commit -am "my comment"", "git push origin master"

I then run the Grancher command "rake publish", which copies the files from _site/ into the gh-pages branch, 
commits and pushes the update automatically up to GitHub.

Because GitHub Pages is hosting my files under the subfolder "/jekyll-boilerplate"

https://github.com/chrisjacob/jekyll-boilerplate

I need to set in _config.yml "baseurl: "/jekyll-boilerplate""

In layouts/pages all urls need to have e.g. href="{{ site.baseurl}}/path/to/file.html"

As a result my localhost server root path is

http://localhost:4000/jekyll-boilerplate/

If I were using a CNAME e.g. http://jekyll-boilerplate.com then this "baseurl" stuff is not needed.



By publishing this way I am able to make use of Jekyll _plugins on my local system... + other hacks.

Where GitHub Pages blocks the use of extensions ... see _config.yml "safe: true"...
