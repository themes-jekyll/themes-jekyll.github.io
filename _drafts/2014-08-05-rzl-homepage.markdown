---
layout: post
title: rzl-homepage
homepage: https://github.com/raumzeitlabor/rzl-homepage
demo: https://raumzeitlabor.de
date: 2014-08-05 23:17:26
licence_link: https://github.com/raumzeitlabor/rzl-homepage/blob/master/LICENSE.md
---
# rzl-homepage
[![Build Status](https://travis-ci.org/raumzeitlabor/rzl-homepage.svg?branch=master)](https://travis-ci.org/raumzeitlabor/rzl-homepage)
[![DevDependency Updates](https://david-dm.org/raumzeitlabor/rzl-homepage/dev-status.svg)](https://david-dm.org/raumzeitlabor/rzl-homepage#info=devDependencies&view=table)

*This repository is rather large (about 200MB at the time of writing) because
everything (including images) is included. The initial cloning therefore takes
a few seconds (depending on your Internet connection).*

**Please have a look at our [contribution guidelines](CONTRIBUTING.md).**

## Development Setup

We have a Docker build container 'cause it's hip, but you may also roll your
own environment. Choose as you like.

### Docker

**experimental**

    docker run --rm=true -e DEVUID=$(id -u) -p 127.0.0.1:8000:8000 -v $(pwd):/home/dev raumzeitlabor/rzl-homepage-dev-docker

### Plain

#### Requirements

##### Debian

    sudo apt-get install nodejs npm bundler
    sudo npm install -g grunt-cli bower

##### Arch Linux

    sudo pacman -S nodejs npm
    gem install bundler
    sudo npm install -g grunt-cli bower

##### FreeBSD

    sudo pkg install node npm rubygem-bundler nasm
    sudo npm install -g grunt-cli bower

*Note: nasm(1) is needed to compile some node packages from source.*

##### OSX

Needs [Homebrew](http://brew.sh/).

    brew install node ruby
    sudo gem install bundler
    sudo npm install -g grunt-cli bower

#### Dependencies

    npm install
    export PATH=$PATH:$(npm bin)
    bundler install --path vendor/bundle
    bower install

#### Hacking

    grunt serve
    $EDITOR app/$file

#### Building

    grunt

uses the default task in the [Gruntfile](Gruntfile.js) to build the whole site
(targets `test` and `build`). This is what Travis does on new commits (see
[.travis.yml](.travis.yml)).

You can also run individual Grunt targets, e.g.

    grunt build
    grunt test

To check the result use

    grunt serve:dist

which rebuilds the whole project and serves the "dist" folder on port `8080`.
The editing of files then triggers a new build.

You can read about all targets in the [Gruntfile](Gruntfile.js).

## Deployment

This homepage is auto-deployed by Travis if the following requirements are met:

* we're on the master branch
* the build is green (grunt exited with status 0)

Travis will rsync the contents of the dist directory to citizenfour (this is
really fast). Please note that it may take a few minutes until Travis is able
to complete a build. We originally used Travis' new container-based
infrastructure; due to lack of IPv6 (we deploy via IPv6) we had to switch back
to the standard virtualized boxes, leading to a much slower build.

The homepage is served by the
[rzl-homepage-docker](https://github.com/raumzeitlabor/rzl-homepage-docker)
container. Anything related to webserver setup should be filed against that
repository.

## Internals

The data flow is as follows:

                                 app
                 app/_layouts     |
                        |         v
                        v      +--------+
                   .layouts -> | jekyll | -> .tmp -> dist
                               +--------+
The Gruntfile we're using was initially generated using the yeoman webapp
generator. While it allows for really nice development setups, it is a bit
complicated to understand. Here's some information on how the homepage is
built (rough sketch):

1. All JS code is linted. If you don't meet our style, you're out.
2. The target directory is cleaned up.
3. CSS is auto-prefixed (see e.g. http://scottriley.im/autoprefix).
4. All files relevant for Jekyll (especially HTML) is copied to .tmp
5. CSS and JS files are minified, concatenated and revved.
6. Images are optimized and revved.
7. Jekyll is run to generate the contents.
8. All HTML files are minified (e.g. templates, static pages).

