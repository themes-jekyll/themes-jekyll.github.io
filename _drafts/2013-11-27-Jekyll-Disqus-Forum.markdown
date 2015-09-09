---
layout: post
title: Jekyll-Disqus-Forum
homepage: https://github.com/klcodanr/Jekyll-Disqus-Forum
demo: http://klcodanr.github.io/Jekyll-Disqus-Forum
date: 2013-11-27 04:33:51
licence_link: https://github.com/klcodanr/Jekyll-Disqus-Forum/blob/gh-pages/LICENSE
---
Jekyll-Disqus-Forum
============

A simple forum with pages managed by Jekyll and threads powered by Disqus.  Check out our [sample site](http://klcodanr.github.io/Jekyll-Disqus-Forum/).

## Setup

Follow these five steps to set up your own copy of Jekyll Discuss Forums:

1. **Create a New Repository**

   Go to your https://github.com and create a new repository named forum

2. **Install Jekyll-Disqus-Forum**

    Enter these commands into your terminal in a directory you want your forum to be:

        git clone https://github.com/klcodanr/Jekyll-Disqus-Forum.git forum
        cd forum
        git remote set-url origin git@github.com:USERNAME/forum.git
        git push origin gh-pages

3. **Setup Disqus**

   [Create an application](http://help.disqus.com/customer/portal/articles/787016-how-to-create-an-api-application) and [a forum](http://help.disqus.com/customer/portal/articles/931017-registering-a-new-forum) in Disqus.  Make sure you copy down your application public key and forum short name.

4. **Update config.yml**

    Update your config.yml with all of the appropriate properties.

5. **Profit**

    Navigate your new forum at http://USERNAME.github.io/forum

## Creating Category Groups

Create a new page in the category-groups folder, it should have the following settings:

* *category-group* - always set to true
* *id* - the id of the category group
* *title* - the display title for the category group
* *layout* - default is category-group, but doesn't really matter
* *summary* - displayed as descriptive text on the category group listing

Once you are done, go ahead and updating the `group-id` of some categories.

## Creating Categories

First, create the category in Disqus.  Login and go to Admin >> Settings >> Advanced.  Click *Add New Category* and then give your category a name.  Click *Save Changes* and note the category id.

Next, create a new page in the categories directory.  It must have the following settings:

* *group-id* - the id of the group in which the category should display
* *category* - always set to true
* *id* - the id of the discus category
* *title* - the display title for the category
* *layout* - generally should be category, unless you customize the layouts
* *summary* - displayed as descriptive text on the category listing

The contents of the category page will be shown in a jumbotron on the category page by default.

## Managing Discussions

Users can create discussions at any point.  To manage your discussions, login to Disqus and select Admin >> Discussions.  To remove a discussion from the form, change it's category to General.

