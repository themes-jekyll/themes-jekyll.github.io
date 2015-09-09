---
layout: post
title: jekyllstarter
homepage: https://github.com/msanand/jekyllstarter
date: 2014-11-03 09:54:38
licence_link: https://github.com/msanand/jekyllstarter/blob/master/LICENSE
---
[![GitHub version](https://badge.fury.io/gh/msanand%2Fjekyllstarter.svg)](http://badge.fury.io/gh/msanand%2Fjekyllstarter) [![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)


### What is Jekyll Starter?

[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/msanand/jekyllstarter?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Jekyll Starter is a bootstrap project for quickly creating a blog site based on [Jekyll](http://jekyllrb.com/). The starter project provides a foundation based on [Lanyon](https://github.com/poole/lanyon), which is a flavor of [Poole](https://github.com/poole/poole).

In addition to the clean, minimalistic styling borrowed from Lanyon, Jekyll Starter provides the following functionality out-of-the-box:

* Comments using [Disqus](https://disqus.com/)
* [Google Analytics](http://www.google.co.in/analytics/) Integration with [superProxy](https://developers.google.com/analytics/solutions/google-analytics-super-proxy)
  * Page view counter
  * Website counter
* Social sharing using [AddThis](http://www.addthis.com/)
* Author following using [AddThis](http://www.addthis.com/)
* Tag visualization per post
* Archive organized by tags
* Customizable profile picture in sidebar and about page
* [Grunt](http://gruntjs.com/) based build with CSS merge and minification

This is the base on which [anandmanisankar.com](http://anandmanisankar.com) is built.

### Usage

##### Pre-requisites (Optional)

You will need a Disqus account, AddThis account and Google Analytics Tracking ID, if you want to integrate your blog with these services. Ensure you have enabled share and follow tools in AddThis. To make use of the Google Analytics integration, ensure you set-up and configure the Google Analytics Super Proxy as described [here](https://developers.google.com/analytics/solutions/google-analytics-super-proxy). Also ensure that your super proxy returns 'ga:pageviews' and 'ga:pagePath'.
(To tackle the CORS issue with super proxy, refer to my [StackOverflow response](http://stackoverflow.com/a/25758257/121241))

##### Option 1:

Use the [Jekyll Starter Yeoman generator](https://www.npmjs.org/package/generator-jekyllstarter) to scaffold your blog in a matter of seconds.

[![npm version](https://badge.fury.io/js/generator-jekyllstarter.svg)](http://badge.fury.io/js/generator-jekyllstarter)


To install generator-jekyllstarter from npm, run:

```bash
npm install -g generator-jekyllstarter
```

Now, initiate the generator:

```bash
yo jekyllstarter
```

Answer the questions asked by the generator, and you're blog is ready!

You can also generate a new post:

```bash
yo jekyllstarter:newpost
```

##### Option 2:

Fork the [Jekyll Starter github repository](https://github.com/msanand/jekyllstarter) and manually alter `_config.yml` based on your requirements.


#### What is Yeoman?

Trick question. It's not a thing. It's this guy:

![](http://i.imgur.com/JHaAlBJ.png)

Basically, he wears a top hat, lives in your computer, and waits for you to tell him what kind of application you wish to create.

Not every new computer comes with a Yeoman pre-installed. He lives in the [npm](https://npmjs.org) package repository. You only have to ask for him once, then he packs up and moves into your hard drive. *Make sure you clean up, he likes new and shiny things.*

```bash
npm install -g yo
```

### Bugs / Feature Requests

You can report issues or request new features [here](https://github.com/msanand/jekyllstarter/issues).

### Contribution

Feel free to send a pull request in the [Jekyll Starter repository on Github](https://github.com/msanand/jekyllstarter).

### License

MIT © [Anand Mani Sankar](http://anandmanisankar.com)

