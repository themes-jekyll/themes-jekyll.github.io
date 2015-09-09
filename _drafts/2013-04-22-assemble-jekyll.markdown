---
layout: post
title: assemble-jekyll
homepage: https://github.com/hariadi/assemble-jekyll
date: 2013-04-22 23:34:47
licence_link: https://github.com/hariadi/assemble-jekyll/blob/master/LICENSE-MIT
---
# Assemble Jekyll [v0.4.2]
[![Build Status](https://travis-ci.org/hariadi/assemble-jekyll.png)](https://travis-ci.org/hariadi/assemble-jekyll)

> Jekyll scaffold that use [Assemble][assemble] as a Grunt plugin that makes it dead simple to build modular sites and components from reusable **templates** and **data**.


## Getting started
* Clone OR **[Download this project][download]** and unzip it into a `your.github.com` folder

  ```
  git clone https://github.com/hariadi/assemble-jekyll.git your.github.com
  ```

* Run:

  ```
  npm install && bower install
  ```

  to install [Assemble][assemble], [Grunt](http://gruntjs.com/) and any other dependencies.
* Once the dependencies are installed you may run

  ```
  grunt
  ```
  to build the example project.

## Deployment `gh-pages`

After `grunt` command, Assemble task will generates `_site` directory that can be deployed.

1. Initialize your repo/project
  ```shell
  cd _site && git init && git add -A && git commit -m "Initial _site commit"
  ```

2. Add repo/project remote & checkout `gh-pages` branch (change `hariadi/assemble-jekyll` with your own repo/project)
  ```shell
  git remote add origin https://github.com/hariadi/assemble-jekyll.git && git checkout -b gh-pages
  ```

3. Push to `gh-pages` branch
  ```shell
  git push origin gh-pages
  ```

If you not comfortable with this way, you can follow using [git subtree](http://yeoman.io/deployment.html).

NOTE for `msysgit` user: `git subtree` is still part of the 'contrib' folder and isn't installed by default on `msysgit` (`git subtree` installed by default on Git for Windows).

You need to install `git subtree` manually:

```shell
cd /path/to/msysgit/contrib/subtree && make install INSTALL=/bin/install prefix=
```

## Assemble
Visit [Assemble][assemble-docs] documentation


## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Use [Assemble][assemble] to build and maintain your gh-pages, blog or documentation. Lint and test your code using [Grunt](http://gruntjs.com/).


## Release History
* 2013-12-02    **v0.4.1**    Add `gh-pages` deployement guideline.
* 2013-12-01    **v0.4.0**    Refactor base from assemble-blog-theme. Use Bower as package management. Update Assemble to 0.4.23 to support plugins and helpers. Update Bootstrap to v3.0.2
* 2013-07-22    **v0.3.2**    Update Bootstrap v3.0 LESS, font and js.
* 2013-05-12    **v0.3.1**    Bootstrap v3.0 layout.
* 2013-05-01    **v0.2.0**    Add Grunt contrib task: `jshint`, `uglifyjs`, `less`, `concat`, `copy` sample configuration. Also Bootstrap v3.0
* 2013-04-24    **v0.1.3**    Add assemble-example-basic as Jekyll template.
* 2013-04-23    **v0.1.1**    Travis, Jekyll skeleton.
* 2013-04-23    **v0.1.0**    First commit.

[download]: https://github.com/hariadi/assemble-jekyll/archive/master.zip
[assemble]: https://assemble.io
[assemble-docs]: https://assemble.io/docs
[assemble-examples]: https://github.com/assemble/assemble-examples
[assemble-jekyll]: https://github.com/hariadi/assemble-jekyll
[gruntfile]: http://gruntjs.com/sample-gruntfile

