---
layout: post
title: copybar-jekyll
homepage: https://github.com/copybar/copybar-jekyll
date: 2012-10-03 19:46:51
---
# Copybar-Jekyll

Jekyll Bootstrap preconfigured with Copybar.  Put your username in _includes/JB/setup.  New pages and posts come loaded with Copybar elements, ready for editing, right in your browser.  


## Requirements

* [Ruby](http://http://www.ruby-lang.org/) 
* [Jekyll gem](https://github.com/mojombo/jekyll)
* [Git](http://git-scm.com/)
* [Github account](http://www.github.com)  


## Getting Started

1. Download or clone this repository
2. In the terminal, 'cd *the root directory of what you downloaded*'
3. With a text editor, edit '_includes/JB/setup' to include your Copybar username
4. Generate your first post with the command 'rake post title='Hello World'
5. Run your new blog with the command 'jekyll --server'
6. Visit your blog at: <http://localhost:4000>
7. Begin editing with Copybar


## Copybar Setup

Enter your Copybar account name in:
_includes/JB/setup

Every new page or blog post is generated with Copybar elements, each containing your username and page title.  

A blog post has one Copybar element.  A new main page comes with 3 copybar elements: main content, secondary content, and sidebar right.

You can customize your site by adding more template Copybar elements in these layout files:
_includes/themes/twitter/post.html
_includes/themes/twitter/page.html

Use the Copybar elements you find as examples.  Create as many elements as you want and put them almost anywhere you want.



## Creating new pages and blog posts

To create new a new blog post called 'Hello World':

rake post title='Hello World'

For a new main page, like 'About Me':

rake page title='About Me'

Jekyll will create a new blog post complete with a Copybar element for you to edit. Main pages are similar, but they appear in the main nav and they come with 3 copybar elements for you to edit.  

You can edit these locally, but the new post or page won't appear on Github Pages until you push it to Github: 

'git push'.


## Deploying to Github pages

You can create a Github Pages blog for your main github account by pushing your new Copybar-Jekyll blog to a repo titled 'your-username.github.com'.  

Github will generate the site and you can visit it at http://your-username.github.com.  You can edit your copybar content when visiting this site.

You deploy your Jekyll blog to Github Pages using git.  Here are more detailed instructions:

<https://help.github.com/articles/using-jekyll-with-pages>

<http://jekyllbootstrap.com>


## Usage for Jekyll Bootstrap

Thanks to some hard work by a committed developer, this version of Jekyll comes with Twitter Bootstrap and jQuery. Also, the entire Jekyll workflow is maintained, so you can manage your blog with just your command line and a text editor.

For all usage and documentation please see the original at: <http://jekyllbootstrap.com>

To learn to customize your site, a good resource on this site is: 
<http://jekyllbootstrap.com/lessons/jekyll-introduction.html#initial_setup)>

## Version of Jekyll

0.2.13 - stable and versioned using [semantic versioning](http://semver.org/).


## License

[Creative Commons](http://creativecommons.org/licenses/by-nc-sa/3.0/)



