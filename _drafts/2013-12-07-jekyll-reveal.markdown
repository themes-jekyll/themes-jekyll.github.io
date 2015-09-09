---
layout: post
title: jekyll-reveal
homepage: https://github.com/jens-na/jekyll-reveal
date: 2013-12-07 12:50:10
licence_link: https://github.com/jens-na/jekyll-reveal/blob/master/LICENSE.md
---
Overview
========
**jekyll-reveal** is a template for the site generator Jekyll to create presentations
with the framework revleal.js in a very easy way. You can even specify options
in the YAML front matter of Jekyll.

Currently the submodule of reveal.js points to the [2.6.1](https://github.com/hakimel/reveal.js/releases/tag/2.6.1) release.

Installation
============

```
  $ gem install jekyll  
  $ git clone --recursive https://github.com/jens-na/jekyll-reveal.git
  $ cd jekyll-reveal
  $ jekyll serve --watch
```

Aferwards you can point your favorite browser to http://localhost:4000/

Create a new slide
==================
New slides are created in the directory `_slides`. The index page updates
automatically. Take a look at the [example slides](https://github.com/jens-na/jekyll-reveal/tree/master/_slides).

YAML front matter
=================
jekyll-reveal extends the YAML front matter of Jekyll. You can specify [all available configuration
options provided by reveal.js](https://github.com/hakimel/reveal.js/#configuration) in the YAML front-matter. The default
values are set in `_config.yml`.

Example:
```yml
---
title: Test slide 2
description: Show slide numbers
reveal:
  theme: moon
  slideNumber: true
---
```

Available options:

| Option                    | Description                                                                                                                                                                         | Default |
| ------------------------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:| -------:|
| theme                     | The theme to use for the slide (any theme in the directory `/reveal.js/css/theme/`)                                                                                                   | default |
| controls                  | Display controls in the bottom right corner                                                                                                                                         | true    |
| progress                  | Display a presentation progress bar                                                                                                                                                 | true    |
| slideNumber               | Display the page number of the current slide                                                                                                                                        | false   |
| history                   | Push each slide change to the browser history                                                                                                                                       | false   |
| keyboard                  | Enable keyboard shortcuts for navigation                                                                                                                                            | true    |
| overview                  | Enable the slide overview mode                                                                                                                                                      | true    |
| center                    | Vertical centering of slides                                                                                                                                                        | true    |
| touch                     | Enables touch navigation on devices with touch input                                                                                                                                | true    |
| loop                      | Loop the presentation                                                                                                                                                               | false   |
| rtl                       | Change the presentation direction to be RTL                                                                                                                                         | false   |
| fragments                 | Turns fragments on and off globally                                                                                                                                                 | true    |
| embedded                  | Flags if the presentation is running in an embedded mode, Flags if the presentation is running in an embedded mode,                                                                 | false   |
| autoSlide                 | Number of milliseconds between automatically proceeding to the next slide, disabled when set to 0, this value can be overwritten by using a data-autoslide attribute on your slides | 0       |
| autoSlideStoppable        | Stop auto-sliding after user input                                                                                                                                                  | true    |
| mouseWheel                | Enable slide navigation via mouse wheel                                                                                                                                             | false   |
| hideAddressBar            | Hides the address bar on mobile devices                                                                                                                                             | true    |
| previewLinks              | Opens links in an iframe preview overlay                                                                                                                                            | false   |
| transition                | Transition style (default/cube/page/concave/zoom/linear/fade/none)                                                                                                                  | default |
| transitionSpeed           | Transition speed (default/fast/slow)                                                                                                                                                | default |
| backgroundTransition      | Transition style for full page slide backgrounds (default/none/slide/concave/convex/zoom)                                                                                           | default |
| viewDistance              | Number of slides away from the current that are visible                                                                                                                             | 3       |
| parallaxBackgroundImage   | Parallax background image                                                                                                                                                           |         |
| parallaxBackgroundSize    | Parallax background size                                                                                                                                                            |         |

License
=======
Licensend under the MIT License

(C) Jens Nazarenus, 2014

