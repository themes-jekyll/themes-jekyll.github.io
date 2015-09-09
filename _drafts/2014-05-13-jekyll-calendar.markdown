---
layout: post
title: jekyll-calendar
homepage: https://github.com/budparr/jekyll-calendar
date: 2014-05-13 02:47:06
---
jekyll-calendar
===============

A Dynamic Calendar for Static Sites

I put this calendar together for a client site, so my initial goal was to make it functional. At this point, it's usable but could use some work, so feel free to contribute or leave an issue.


- add _data folder and the events.yaml file with sample data
- add [calendar.json](http://localhost:4000/calendar.json) to generate a JSON file
- add calendar.js to includes folder
- include jquery/underscore/moment.js in the footer
- include calendar.js in the footer below the others.
- add the tags below wherever you want your events to show up.

<strong>Upcoming Events</strong>
```<div id="calendar"></div>```


<strong>Past Events</strong>
```<div id="calendar-past"></div>```

---

##### To Do


- [ ] Template (underscore templates).
- [ ] Improve styling
- [ ] Styleguide
- [ ] Fix multi-day events

