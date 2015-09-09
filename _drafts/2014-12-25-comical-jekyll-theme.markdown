---
layout: post
title: comical-jekyll-theme
homepage: https://github.com/chrisanthropic/comical-jekyll-theme
demo: http://chrisanthropic.github.io/comical-jekyll-theme/
date: 2014-12-25 04:05:41
licence_link: https://github.com/chrisanthropic/comical-jekyll-theme/blob/master/LICENSE
---
comical-jekyll-theme
=============
Live Demo [HERE](http://chrisanthropic.github.io/comical-jekyll-theme/)

A webcomic theme for Jekyll based on my [Slim-Pickins](https://github.com/chrisanthropic/slim-pickins-jekyll-theme) Jekyll theming framework.

*All content included for the demo page is duplicated from my wife's [webcomic site](http://www.shamseecomic.com) and is availabe via Creative Commons.*

## Basic features include:

* SASS
* Responsive grid
* Responsive navigation
* Responsive Comic Images (using SRCSET)
* Optional responsive full-width banner (using SRCSET)
* Sticky footer
* Thumbnail creation plugin
* **Javascript free**
* Custom Rakefile with tasks for deploying, minifying, and notifying search engines about updates
* image_optim plugin to optimize all images
* Basic SEO

### SASS
Includes the following variables for easy customization:

**Base Colors**

* $primary-color
* $secondary-color
* $complimentary-color
* $body-bg
* $body-font-color

**Links**

* $link-color
* $link-hover-color
* $link-visited-color

**Text**

* $base-font-family
* $base-font-size
* $small-font-size
* $base-line-height

**Primary Navbar Settings**

* $navbar-height
* $navbar-color
* $navbar-text-color
* $navbar-hover-color
* $navbar-active-color
* $navbar-font-size
* $navbar-font-family

**Socials Navbar Settings**

* $socials-font-color
* $socials-font-size

**Comic Settings**

* $comic-nav-background
* $comic-nav-height
* $comic-border-color
* $comic-border-width
* $comic-nav-color
* $comic-nav-hover
* $archive-border-color
* $archive-border-width
* $archive-hover-color
* $figcaption-background-color
* $figcaption-text-color

**Utility**

* $spacing-unit

**Footer**

* $footer-height
* $footer-color

### GRID
Uses minimal sass [components](https://github.com/zurb/bower-foundation/tree/master/scss/foundation/components) from Zurb Foundation:

* [grid](http://foundation.zurb.com/docs/components/grid.html)

### NAVIGATION
A fully responsive navigation bar with the following features:

* 2 navigation areas
  * Left - Primary navigation 
  * Right - Social media links
* Both navigation areas are populated using Jekyll 'data' files, nav.yml and socials.yml respectively
* Easily customizable text, link, and background colors using the supplied sass variables

### BANNER
This theme is configured with a 'wrap' of 1920px so banner images look best at that width.

First it checks a pages yaml frontmatter for the header image, if none is found then it checks for a site-wide default in your config.yml, if none is found then no banner image is displayed.

**Site-Wide**
You can set a site-wide default banner image by adding the following to your _config.yml:
  `header_image: "path/to/image.jpg"`

**Per Page**
You can also override it per page by adding the following code to a pages yaml front matter:
  `header_image: path/to/image.jpg`

### STICKY FOOTER
I like my footers to stay on the bottom of the page no matter what. You can easily edit the size and color using the supplied sass variables.

### JAVASCRIPT FREE
The only thing in the theme that uses Javascript is the optional use of google analytics.

### RAKEFILE
Includes the following custom tasks:

* *minify_html* - uses HTML_compressor to minify HTML
* *notify* - pings google and bing to notify them about changes to the site/sitemap

These 3 tasks have been bundled into custom build and deploy tasks

* *build* - runs `jekyll build` followed by `minify_html`
* *deploy* - runs `s3_website push` and then `notify`

### IMAGE_OPTIM PLUGIN

* Custom [image_optim](https://github.com/chrisanthropic/image_optim-jekyll-plugin) plugin will optimize all images in the /images folder and any subdirectories
  * Uses the original [image_optim](https://github.com/toy/image_optim)
* Cache file is created on the first run so that only updated/new images are optimized

## Basic Use

For things to work properly you'll need to do the following:

* **config.yml** - permalink settings of "permalink: /:categories/:title/" are expected
* **categories** - add "categories: name-of-comic" to your yml front matter for comics/posts. Add a single category that reflects the name of your comic.

**Front Page**

The main page will always show the most recent comic and will autopopulate the navigation for next/previous/archives.
You can disable the sidebar by adding "sidebar:false" to the yml frontmatter.

**Character Bios**

This page uses Jekyll's data feauture to populate the page.
It offers the following data inputs:

* Character Name
* Character Image
* Characater Bio

Edit _data/characters.yml to fit your needs and it will autopopulate the character bios page.

**Thumbnail Archive**

In order to use the thumbnail archive page you'll need to add "thumbnail: /path/to/thumb.jpg" to the yml front matter for your comic posts. 

The _includes/category.html template will automatically pull the thumbnails from the posts and display them.

**About Page**
This page uses Jekyll's data feauture to populate the page. I feel like I'm abusing it's intended purposes, but it works nicely.

It offers the following data inputs for information about the comic:

* **pic:** "/path/to/image.jpg"
* **tagline:** "tagline of the comic."
* **blurb:** "Summary of the story. Displayed in italics."
* **misc:** "anything else you want to mention after the blurb."
* **important:** "listed at the end, in bold"
* **amazon:** "link to your comic on amazon"
* **comixology:** "link to your comic in comixology"
* **drivethru:** "link to your comic on DriveThruComics"
* **gumroad:** "link to your comic on gumroad"

It offer the following data inputs for information about the creators:

* **title:** "author/artist/cook/etc"
* **pic:** "/path/to/image.jpg"
* **info:** "bio stuff to make you sound interesting"
* **twitter:** 
* **facebook:**
* **tumblr:**
* **googleplus:**
* **web:**

**Thumbnailer**

A thumbnailer plugin is icluded by default. You'll need to add this to your config.yml:

```
# Autogenerate thumbs for comics
mini_magick:

#Create Thumbs for the Archive Page
    thumbnail:
      source: images/comics/
      destination: /images/comics/thumbs
      resize: "182x280"

#Autogenerate smaller size for small screens
    small:
      source: images/comics/
      destination: /images/comics/small
      resize: "350x535"
```

This will create 2 sizes of 'thumbnails' from any images in the `/images/comics` directory:

* thumbs is used for the thumbnail archive page
* small is used for smaller sized screens instead of using the full sized image
  * this makes loading times faster and saves on bandwidth, it's the same technique we use for our banner image

**SEO**

* Google Analytics (optional)
  * just add your `google_universal_analytics` ID to the config.yml file
* Facebook Opengraph
  Fill out the following in your config.yml

  ```
    facebook_app_id:                      #enter your App ID
    facebook_locale: en_US
    facebook_page:                        #the URL of your Facebook Page
    facebook_image:			#enter a default image (at least 200x200px) to use here for posts/pages that don't have one.	
  ```

* Twitter Cards
  Fill out the following in your config.yml

  ```
    twitter_user: 
    twitter_card: true
    twitter_image: 			 #enter a default image (at least 200x200px) to use here for posts/pages that don't have one.
  ```

* Keywords
  You can set default sitewide keywords or keywords per post/page. Keywords will show up in the metadata of the page/post.
  * Sitewide: add `keywords: stuff, things, comics` to your config.yml
  * Per page/post: add `keywords: new stuff, other things, comics` to the frontmatter of your page/post

### Installation

For now it's best to start fresh or install the theme and then transfer over any old files (posts, images, etc) from your previous site.

* Git clone this repo, and cd into the directory.
* run `bundle install --binstubs --path=vendor` to install the required dependencies.
* Transfer over any old stuff.

* Edit your config.yml file
  * Change the title and description at a minimum.
* Update your navigation 
  * edit the `_data/nav.yml` file as needed
* Update your social links
  * edit the `_data/socials.yml` file as needed
* Update your about page
  * edit the `_data/about.yml` file as needed
* Update your characters page
  * edit the `_data/characters.yml` file as needed
* For google analytics just add your google_universal_analytics ID to the _config.yml file

## Deploying
I use S3 to host my site and the [s3_website](https://github.com/laurilehmijoki/s3_website) plugin to deploy, if you don't do both of these, delete the `s3_website.yml` file and edit the deploy raketask to fit your needs.

If you plan on using S3 make sure you edit the configs:

* FIRST - add the s3_website.yml file to your gitignore so your credentials don't end up on the web.
* s3_website.yml
  * add your `s3_id`. `s3_secret`, and `s3_bucket`
* Update the Rakefile notify task to use your url
  * replace `site = "www.YOUR-URL.com"` with your actual url.

## MISC.
The comic posts included are duplicated from my wife's [webcomic site](http://www.shamseecomic.com) and are availabe via Creative Commons.
