---
layout: post
title: jekyll-restful-api-generator
homepage: https://github.com/benbalter/jekyll-restful-api-generator
demo: https://benbalter.github.io/jekyll-restful-api-generator
date: 2012-07-25 02:12:30
---
Jekyll RESTful API Generator
============================

Given a CSV file (or a series of YAML files), generates a RESTful API. Sorta. Uses XML and JSON Jekyll templates to generate machine-readable files from the YAML headers of any file in the directory project. Any key value pair will be converted.

Usage for CSV files
-------------------

1. Place CSV file in /raw/
1. Edit _config.yml as appropriate
1. Run /php/config.php
1. Push to GitHub or run Jekyll locally

Usage for YAML files
--------------------

1. Place YML files in either the root directory, or any number of sub directories.
1. Place key/value pairs in the YML header
1. Push to GitHub or run Jekyll locally

Status
------

This project constitutes a functional proof-of-concept. The script that converts CSV files to YAML files is written in PHP, which is probably not the best choice in the long run.

Todo
----

* Generate XML and JSON indexes of all records
* Multi-dimensional arrays within YAML headers

Example Data
------------

* [US Farmers Markets](https://explore.data.gov/Agriculture/Farmers-Markets-Geographic-Data/wfna-38ey)

License
-------

GPLv3 or Later
