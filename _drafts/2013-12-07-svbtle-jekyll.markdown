---
layout: post
title: svbtle-jekyll
homepage: https://github.com/orlando/svbtle-jekyll
date: 2013-12-07 19:11:02
licence_link: https://github.com/orlando/svbtle-jekyll/blob/master/LICENSE.txt
---
# Svbtle Jekyll

A Jekyll blog with Svbtle theme.

## Generators

Since we need to setup some stuff in the post front matter, there's a post generator to make things easier

`rake posts:create`

it accepts the following params (order matters)

* **post_name**: your post name
* **category_name**: your category name
* **date**: date in ISO format (optional)

### Example

`rake posts:create "my new shiny post" code 2013-12-07`

this will create a file called `2013-12-07-my-new-shiny-post.markdown` in the `_posts` directory with the following content:

```
---
layout: post
title: my new shiny post
date: December 07, 2013
category: code
customid: k1f1wf8ax3h7wb1x6vkit
---

write content here
```

`customid` is used by the kudos server to track kudos, if you use the generator it will create one for you, if not, make sure it's unique.

## Kudos Server

If you want to enable the kudos widget in your blog, you need to setup a kudos server [https://github.com/orlando/kudos_server](https://github.com/orlando/kudos_server). You can
deploy it to heroku, just follow the instructions in the repo.

then edit to the `_data/svbtle.yml` file and change the last two lines

```
enable_kudos: true
kudos_url: http://yourkudosurlhere.com/kudos
```

# Contributing

Just create a pull request.

# Copyright

Copyright (c) 2013 Orlando Del Aguila. See LICENSE.txt for further details.

