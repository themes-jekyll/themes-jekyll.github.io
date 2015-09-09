---
layout: post
title: HTML5-Boilerplate-Jekyll-Template
homepage: https://github.com/bobschi/HTML5-Boilerplate-Jekyll-Template
demo: http://lebobs.ch/
date: 2011-05-04 12:49:54
licence_link: https://github.com/bobschi/HTML5-Boilerplate-Jekyll-Template/blob/master/LICENSE.md
---
# Jekyll Template with HTML 5 Boilerplate and "320 and up"

## Thanks
A special thanks to [Markus "Cypher" Prinz][Cypher] who brought me to Jekyll and Github Pages in the first place. Another special thanks goes out to [Thomas "xon1c" Nägele][xon1c], for pointing me to "320 and up". 

A shout out to Vito Botta for his blog post [Migrating from Wordpress to Jekyll - Part 2: **Everything** you need to know about Jekyll][migratewpjekyll] -- I've found some pretty helpful  hints in there.

Thank you [Paul Irish][paulirish] and the numerous commiters to the [HTML5 Boilerplate][boilerplate] project on [github][boilerplaterepomem] as well as [Andy Clarke][andyclarke] for creating [320 and up][320andup] -- you guys are awesome. :)

## Foreword
Hi, my name is Florian, and I created this little template to help me with two things: get familiar with the stuff I wanted to use (HTML5 Boilerplate, 320 and up, Jekyll) and to ease the deployment of the whole package to [my blog][myblog].

**This is very much a work in progress, so don't expect too much of it.**

I've just started. I've basically just bundled *HTML5 Boilerplate* and *320 and up* and set up the default folder structure for Jekyll. With some fumbling here and there it seems to work pretty fine already. I'm unsure about what I should get up to next, but if you look into my TODO-file, you'll find some of the stuff I'm planning to do.

Have fun! ;-)
Florian Holzner,
Vienna,
2011-05-04

## Getting Started
Just check out this repository from github, and you're pretty much good to go. You might want to edit `_config.yml` so your name shows up on the homepage.

You should have Jekyll and Pygments installed locally, if you want to really work with this. Once jekyll is installed, just run Jekyll from the root directory of the template with `jekyll --safe --server --pygments` and you are golden.

## License
This software is shared under [The Unlicense][unlicense].

## Folder Structure for Jekyll
This template contains the default folder structure for a blog to be rendered by Jekyll (like those on [Github Pages][ghp]). The following files and folders are a part of that.

<pre>
+-- _includes
|   |-- boilerplate_analytics_scripts.html
|   `-- boilerplate_css_scripts.html
+-- _layouts
|   |-- default.html
|   |-- frontpage.html
|   `-- post.html
+-- _plugins
|   `-- README.md
+-- _posts
|   |-- 1970-1-1-hello-world.md
|   |-- 1971-1-1-hello-world.md
|   |-- 1972-1-1-hello-world.md
|   |-- 1973-1-1-hello-world.md
+-- _site
|-- _config.yml
|-- 404.html
|-- atom.xml
`-- index.md
</pre>

For a basic introduction go to the [Page about Usage of Jekyll][usage] on the [Jekyll-Wiki][] on [Github][].

### _includes
This is the folder where all the files go that you want Jekyll to include for you. You can do includes with `{% include filename.filetype %}` and Jekyll will go and look for the file in this folder. The Files `boilerplate_analytics_scripts.html` and `boilerplate_css_scripts.html` both get included in the default-Layout file. (See *_layouts*.)

### _layouts
This is where your layout files go. I've included three into the default package.
+  The default page layout is found in `default.html`. This is where all the includes of the stylesheets and scripts happen. (See *_includes*)
+  The layout for the blogs frontpage is in `frontpage.html`.
+  The layout for a single is defined `post.html`.

### _plugins
This is the directory where all your plugins go. Since I don't have any plugins for Jekyll that I want to bundle, I have included the nearly empty file `README.md` so this folder gets added to the repository and committed non the less.

### _posts
This is the folder where your Blogposts go. `1970-1-1-hello-world.md`, `1971-1-1-hello-world.md`, `1972-1-1-hello-world.md` and `1973-1-1-hello-world.md` are just sample data.

### _site
This folder is not in the repository, you have to create it. It is, however, in the gitignore-file. This is where Jekyll will put the finished files for your site after performing all it's magic.

### _config.yml
The config file for jekyll. You can finde some hints on configuring Jekyll in the [Jekyll-Wiki][], especially on [this][config] page.

### 404.html
Your error page.

### atom.xml
This is where you can set up an Atom-Feed for your page. I will provide a more detailed explaination in one of the next iterations.

## index.md
This is were the content for your index page goes. The generation of an overview of the blog posts is independent of this, though.

## Rest of the Folder Structure & Included Software
[HTML5 Boilerplate][boilerplate] and [320 and up][320andup] are responsible for the rest of the folder structure. It's pretty much the basic folder structure of every website that you will find around the interwebz.

### Bundeled Software with Licenses
+  [HTML5 Boilerplate][boilerplate] stripped ([The Unlicense][unlicense])
  *  [jQuery][] ([MIT][mit]/[GPL][gpl] license)
  *  [Modernizr][modernizr] ([MIT][mit]/[BSD][bsd] license)
  *  [DD_belatedPNG][ddbelated] ([MIT][mit] license)
  *  YUI Profiling ([BSD][bsd] license)
  *  HTML5Doctor CSS reset (Public Domain)
  *  CSS Reset Reloaded (Public Domain)
+  [320 and up][320andup] for responsive styling ([MIT][mit] License)

#### Boilerplate
I pull boilerplate directly from the [Github repository][boilerplaterepo] from the branch stripped, so all the comments and links and stuff are left out. If you need comments, you should check out a copy of the master branch.

#### 320 and up
I have to download "320 and up" directly from the homepage, as there appears to be no repository available for the public. The version included in the initial release of this is v0.9. If there is a repository available and I'm just to stupid to find it, please tell me.

Find out more about [320 and up][320andup].


### The Folder Structure
<pre>
+-- build
|  +-- config
|  |  |-- default.properties
|  |  `-- project.properties
|  +-- tools
|  |  +-- optipng-0.6.4-exe
|  |  |  |-- LICENSE.txt
|  |  |  `-- optipng.exe
|  |  |-- ant-contrib-1.0b3.jar
|  |  |-- htmlcompressor-0.9.9.jar
|  |  |-- jpegtran.exe
|  |  `-- yuicompressor-2.4.2.jar
|  |-- build.xml
|  |-- creaproject.sh
|  `-- runbuildscript.bat
+-- css
|  +-- mylibs
|  |  `-- forms.css
|  |-- 2x.css
|  |-- 480.css
|  |-- 768.css
|  |-- 992.css
|  |-- 1382.css
|  |-- handheld.css
|  |-- print.css
|  `-- style.css
+-- img
|  +-- h
|  |  |-- apple-touch-icon.png
|  |  `-- splash.png
|  +-- l
|  |  |-- apple-touch-icon.png
|  |  |-- apple-touch-icon-precomposed.png
|  |  `-- splash.png
|  +-- m
|  |  `-- apple-touch-icon.png
|  +-- tmp
|  |  `-- grid.png
|  `-- .gitignore
+-- js
|  +-- libs
|  |  |-- dd_belatedpng.js
|  |  |-- DOMAssistantCompressed-2.8.js
|  |  |-- imgsizer.js
|  |  |-- jquery-1.5.1.js
|  |  |-- jquery-1.5.1.min.js
|  |  |-- modernizr-1.7.min.js
|  |  |-- respond.min.js
|  |  |-- respond.src.js
|  |  `-- selectivizr-1.0.1.js
|  |-- mylibs
|  |  |-- .gitignore
|  |  `-- helper.js
|  |-- plugins.js
|  `-- script.js
+-- test
|  +-- qunit
|  |  |-- qunit.css
|  |  `-- qunit.js
|  |-- index.html
|  `-- test.js
|-- .htaccess
|-- 404.html
|-- apple-touch-icon.png
|-- apple-touch-icon-57x57-precomposed.png
|-- apple-touch-icon-72x72-precomposed.png
|-- apple-touch-icon-114x114-precomposed.png
|-- crossdomain.xml
|-- favicon.ico
|-- humans.txt
`-- robots.txt
</pre>

[xon1c]: http://strichundfaden.com/														"Portfolio of Thomas Nägele"
[cypher]: http://nuclearsquid.com/														"Blog of Markus Prinz"
[myblog]: http://lebobs.ch/																"My Blog about me and the stuff I care about. ;)"
[paulirish]: http://paulirish.com/ 														"Paul Rish' private homepage"
[andyclarke]: http://stuffandnonsense.co.uk/											"Homepage of Andy Clarke's design firm"
[Github]: https://github.com/ 															"Github.com"
[Jekyll-Wiki]: https://github.com/mojombo/jekyll/wiki/ 									"The Jekyll Wiki on github.com"
[usage]: https://github.com/mojombo/jekyll/wiki/usage 									"The page on the usage of Jekyll in the Jekyll Wiki"
[config]: https://github.com/mojombo/jekyll/wiki/Configuration 							"Page in the Jekyll Wiki on the configuration of Jekyll"
[ghp]: http://pages.github.com/ 														"Github Pages"
[boilerplaterepo]: https://github.com/paulirish/html5-boilerplate						"Github repository of HTML5 Boilerplate"
[boilerplaterepomem]: https://github.com/paulirish/html5-boilerplate/network/members 	"Committers to the HTML5 Boilerplate repoistory on github"
[boilerplate]: http://html5boilerplate.com/												"HTML5 Boilerplate"
[320andup]: http://stuffandnonsense.co.uk/projects/320andup/ 							"320 and up"
[migratewpjekyll]: http://vitobotta.com/how-to-migrate-from-wordpress-to-jekyll/ 		"Migrating from Wordpress to Jekyll - Part 2: **Everything** you need to know about Jekyll"
[modernizr]: http://www.modernizr.com/ 													"Modernizr"
[unlicense]: http://unlicense.org/ 														"The Unlicense"
[mit]: http://opensource.org/licenses/mit-license.php 									"The MIT license"
[bsd]: http://www.opensource.org/licenses/bsd-license.php 								"The BSD license"
[gpl]: http://www.gnu.org/licenses/gpl.html 											"The GPL"
[jQuery]: http://jquery.com/															"The jQuery Framework"
[ddbelated]: http://www.dillerdesign.com/experiment/DD_belatedPNG/						"DD_belatedPNG -- Medicine for your IE6/PNG headache!"
