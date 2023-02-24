---
title: "pointcloudset - A Python package to analyze large datasets of point clouds recorded over time "

event: EGU General Assembly 2023
event_url: https://meetingorganizer.copernicus.org/EGU23/session/47016

location: Room -2.21
address:
  country: Austria

summary: Talk about the Python package pointcloudset.
abstract: 'Point clouds can be acquired by different sensor types and methods, such as lidar (light detection and ranging), radar (radio detection and ranging), RGB-D (red, green, blue, depth) cameras, SfM (structure from motion), etc.

In many cases multiple point clouds are recorded over time, sometimes also referred to as 4D point clouds. For example, automotive lidars from Ouster or Velodyne record point clouds at around 10-20Hz resulting in millions of points per second. In addition, monitoring with terrestrial laser scanners is becoming used more often. Producing similar datasets than the automotive lidars, although with larger individual point clouds at a lower frame rate.

Analyzing such a large collection of point clouds is a big challenge due the size and unstructured nature of the data. The Python package "pointcloudset" provides a way to store, analyze, and visualize large datasets consisting of multiple point clouds recorded over time. Pointcloudset features lazy evaluation, parallel processing and is designed to enable the development of new point cloud algorithms and their application on big datasets. The package is based on the Python packages pandas, pytncloud, dask and open3D. Its API is easy to use and high level and the package is open source and available on GitHub.'

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: '2023-04-24T12:20:00Z'
date_end: '2023-04-24T12:30:00Z'
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: '2023-02-24T00:00:00Z'

authors: []
tags: []

# Is this a featured talk? (true/false)
featured: false

image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/bzdhc5b3Bxs)'
  focal_point: Right

links:
  - icon: mastodon
    icon_pack: fab
    name: Follow
    url: https://fosstodon.org/@thomasgoelles
url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
  - ["rsnow_aut"]
---


