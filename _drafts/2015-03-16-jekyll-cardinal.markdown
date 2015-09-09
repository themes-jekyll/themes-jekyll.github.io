---
layout: post
title: jekyll-cardinal
homepage: https://github.com/cbracco/jekyll-cardinal
date: 2015-03-16 23:58:12
licence_link: https://github.com/cbracco/jekyll-cardinal/blob/master/LICENSE
---
# jekyll-cardinal

A boilerplate for [Jekyll](http://jekyllrb.com) using the [Cardinal LESS framework](https://github.com/cbracco/cardinal).

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Resources](#resources)
- [Developing](#developing)
- [Deploying](#deploying)
- [Known Issues](#known-issues)

# Getting Started

The following instructions will help you get up and running, so that you can start using this project from your local machine.

## Prerequisites

This project depends on some software that must already be installed on your machine before proceeding.

- [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git) (Mac users should already have this)
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (Mac users should already have this)
- [Bundler](http://bundler.io/)

  After installing Git and Ruby, you can install Bundler by running the following command(s)*:

  ```
  gem install bundler
  ```

  *Mac users may need to use `sudo gem install bundler` instead.

- [NodeJS](http://nodejs.org/) (Use [the installer](http://nodejs.org/download/))
- [Bower](http://bower.io/)

  After installing Git, Ruby, and Node, you can install Bower by running the following command(s)*:

  ```
  npm install -g bower
  ```

  *Mac users may need to use `sudo npm install -g bower` instead.

## Installation

Once you have the above tools installed, you can [clone this repository](http://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository#Cloning-an-Existing-Repository) to your local machine, where you will be making your changes.

1. Create a directory for this project on your machine, navigate to it, and clone this repository from GitHub into your directory by running the following command(s):

  ```
  cd path/to/your/projects/folder
  mkdir newproject.com && cd newproject.com
  git clone https://github.com/cbracco/jekyll-cardinal.git .
  ```

2. Create a repo for your new project, then update your the origin remote to point to your new project by running the following command(s):

  ```
  git remote set-url origin git@github.com:your-username/newproject.com.git
  ```

3. Install project dependencies by running the following command(s):

  ```
  bundle
  npm install
  bower install
  ```

4. Build the site and spin up a local server by running the following command(s) from your terminal:

  ```
  gulp
  ```

5. Navigate to [http://127.0.0.1.xip.io:9999](http://127.0.0.1.xip.io:9999) in your browser and begin working!*

  *This project uses [BrowserSync](http://www.browsersync.io/) and [xip.io](http://xip.io/) to automatically refresh your web browser on save, and to synchronize file changes and basic browser interactions (scrolling, clicking) across multiple devices. After running `gulp` in the terminal, you will see an “External URL” (e.g. [http://192.168.1.114.xip.io:9999](http://192.168.1.114.xip.io:9999)) that you can use for your various devices. Simply navigate to this URL in the browser of another device connected to your network, and watch your changes and interactions happen across multiple devices at the same time!

## Resources

If you are running Windows on your machine, and you’ve run into problems with the above, then you might find these guides useful:

- [Jekyll on Windows](http://jekyllrb.com/docs/windows/)
- [Run Jekyll on Windows](http://jekyll-windows.juthilo.com/)

# Developing

After running `gulp`, you should have a development server environment running on your local machine, and you can begin working.

# Publishing

To publish a production-ready version of your project, run the following command(s):

```
gulp publish
```

This task will delete any existing builds, build a production-ready version with your latest changes, and spin up a local server for you to test.

Navigate to [http://127.0.0.1.xip.io:9998](http://127.0.0.1.xip.io:9998) in your browser to view your local production build.

# Deploying

Right now, a simple rsync deploy task is included so you can upload a production build to the server of your choice. You will want to modify the [Gulp configuration](https://github.com/cbracco/jekyll-cardinal/blob/master/gulp/config.js#L190) to reflect your real server credentials.

To deploy your project via rsync, run the following command(s):

```
gulp deploy
```

# Known Issues

Issues are logged and tracked in using GitHub’s [Issues](https://github.com/cbracco/jekyll-cardinal/issues) feature in this repo.

