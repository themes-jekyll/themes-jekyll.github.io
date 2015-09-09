---
layout: post
title: jekyll-angular-firebase
homepage: https://github.com/MaxHorstmann/jekyll-angular-firebase
demo: http://maxhorstmann.github.io/jekyll-angular-firebase
date: 2014-08-09 17:46:02
licence_link: https://github.com/MaxHorstmann/jekyll-angular-firebase/blob/gh-pages/LICENSE
---
jekyll-angular-firebase
=======================

Base template for a web app using the Jekyll-Angular-Firebase (JAF) stack.

Click [here](http://maxhorstmann.github.io/jekyll-angular-firebase) to see it in action.

So, what's the JAF stack?

* [Jekyll](http://jekyllrb.com) is a static site generator. In the JAF stack, we're using it mostly to 
generate static navigation elements on every page of our web site.

* [Angular](https://angularjs.org) is a client-site MVC framework. Actually, there are at least two versions 
of Angular: the very popular AngularJS for JavaScript, and the lesser known [AngularDart](https://angulardart.org).
For this template, we're using AngularJS to implement all the business logic (which runs client-side).

* [Firebase](https://www.firebase.com) is a commercial real-time storage and synchronization service. Firebase
is acting as the data store in the JAF stack.

Note what's missing? **There's no backend code.** That's the whole point. All the "logic" lives in Angular, which runs client-side. All the data 
plus the security model and some basic validation rules live in Firebase. 

Note that the template currently uses Bootstrap for UI stuff, which again requires jQuery. That's more 
optional though, they can easily be replaced with any other UI framework or no UI framework.





