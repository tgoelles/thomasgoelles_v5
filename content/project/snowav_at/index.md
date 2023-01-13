---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "SnowAV_AT"
summary: ""
authors: []
tags: [avalanche, lidar]
categories: []
date: 2023-01-08T11:43:26+01:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

One year exploratory project funded by the Austrian Research Promotion Agency (FFG) to develop a snow avalanche detection service for the Austrian Alpine region using remote sensing data from Sentinel and automotive lidar data.


In the last 25 years, 587 people lost their lives in snow avalanches in the Austrian Alps (avalanches.org). The annual financial loss due to road closures and damages is estimated to be more than one billion euros in Europe. Avalanche detection is currently mainly done by experts or laymen during on-site observations. Avalanche activity is well known for limited regions only, e.g., skiing resorts. However, in a typical region for avalanche probability assessment, which cover areas of hundreds of km2, avalanche observations are largely incomplete. Area-wide and accurate avalanche detections are therefore key for a reliable assessment of avalanche danger. Since its start in 2014, the Copernicus Sentinel-1 programme has provided free of charge, weather independent, and high-resolution satellite Earth observations and has set major scientific advances in the detection of avalanches from satellite imagery in motion. Recently, operational avalanche detection from Sentinel-1 Synthetic Aperture Radar (SAR) images were successfully introduced for some test regions in Norway. This automated detection system is faster and more comprehensive than manual detection through experts. More recently, deep learning architectures were applied to avalanche detection and led to improved probability of detection and accuracy. An operational avalanche monitoring system in Austria with state-of-the-art automated detection and forecasting based on satellite images could dramatically improve avalanche forecasting, and in the long run, improve the safety of people, buildings, and infrastructure.
In the framework of RSnowAUT, we aim to set up an automated avalanche detection system for Austria based on Sentinel-1 SAR imagery including a best practice data pipeline and deep learning algorithms. Furthermore, we aim to establish a first set up for avalanche forecasting. Several comprehensive avalanche datasets are available to train the neural networks, e.g., a collection of more than 18 000 avalanches from Switzerland, around 7000 avalanches from Norway and around 800 wet snow avalanches from Greenland. For both, avalanche detection and forecasting, we aim to include high-resolution weather data into the data pipeline and make use of correlations between avalanche events and precipitation and other weather parameter. To validate the detected avalanches, we will obtain ground truth data with a recently developed and thoroughly tested sensor box. It incorporates automotive lidar and radar sensors and is an easy to use and cost-efficient alternative to current instruments for local avalanche detection. In addition, the LAWIS database (lawis.at), a collection of avalanches in Austria and measurements collected with a Riegl VZ-6000 laser scanner will be used.
Our strong consortium comprises partners from industry and science and provide expertise in remote sensing (UniGraz-Geo, NORCE), machine learning (UniGraz-Geo, VIF), SAR processing (NORCE), algorithm development (UniGraz-Geo, NORCE, VIF), radar and lidar ground measurements (SnowScan, UniGraz-Geo, VIF) and practical knowledge in avalanches detection and forecasting (LWD Tirol, Skiresort Lech). Our resulting satellite detection and forecasting tool shall be ready to use by the Austrian avalanche warning services, skiing resorts and related associations, and it shall be available as open-source modules. The scientific outcome includes thorough statistical analyses of avalanche events from 2014 onwards and a correlation with weather condition and snow stability. Furthermore, we aim to develop a strategy together with the relevant technologies to use inexpensive automotive sensors for continuously measuring local avalanche activities at relevant slopes.

Duration: 01.10.2021 - 28.02.2023

Role: Lead Software Architect and overall technical Lead

Link: [https://projekte.ffg.at/projekt/4570968] (https://projekte.ffg.at/projekt/4570968)