---
layout: post
title: lbrn-jekyll
homepage: https://github.com/lbrn/lbrn-jekyll
demo: http://lbrn.lsu.edu
date: 2013-03-11 18:07:27
---
#### This is the source for the LBRN website.

**Note:** Make sure that you have [git](http://git-scm.com/) and [jekyll](http://jekyllrb.com/) installed on your computer and have [set up git correctly](https://help.github.com/articles/set-up-git).

#### Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo) this repository
2. Make your changes to your personal fork
3. Submit a [pull request](https://help.github.com/articles/using-pull-requests) with a description of the change


#### Developing

**Important!** Large files such as images and documents (pdf, word, etc) are not pushed to this repository. Instead, they reside in a special `files` folder that exists on the development and production servers.

Before developing, be sure to copy the `files` folder into the `lbrn-jekyll` folder. To get access to the server, consult [John Quebedeaux](mailto:johnq@lsu.edu).


- You can use `$ jekyll serve` to see your changes on [localhost:4000](http://localhost:4000) while you develop. Press `ctrl+c` to kill the server.

- Edit the site using whatever editor you like. When you are satisfied with your change, add your changed files.
    ```bash
    $ git add .
    ```

- Commit the changes and add a short message explaining what you changed...
    ```bash
    $ git commit -m "added a new news post"
    ```

- And publish your changes to Github:
    ```bash
    $ git push origin
    ```

