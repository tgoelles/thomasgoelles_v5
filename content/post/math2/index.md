---
title: Update on Wolfram Language (Mathematica) vs. Python for data science projects
date: 2023-01-13T13:14:44.697Z
draft: true
featured: true
tags:
  - python
  - Mathematica
image:
  filename: featured
  caption: ""
  focal_point: ""
  preview_only: false
---

# Introduction

It has been now almost four years since my last post about Mathematica vs Python. It gaint quite some popularity and reached place one on the google search. Also, I got some direct enquires by Wolfram employees and an enquire to write a book. So I think it deserves an update.

Four years is a long time and a lot has changed. Python gained a lot in popularity especially due to the influx of data sciencetists from other languages. Pandas is stable and past 1.5 now.  Also new packages like streamlit and FastAPI help to get your data science projects out there even faster. On the wolfram side Mathematica 13.2 is released and the ecosystem became a bit more open with Python integration and even a free [Wolfram Engine] (https://www.wolfram.com/developer/). Althouth, the free Engine is a nice idea and opens up the ecosystem a bit it is still not free for production or even research. I don't know all the details about Wolframs licensing scheme and don't want to read all the fine print. All I know is that Python is free for all use cases. 

As a disclaimer and spoiler up front: I did not use Mathematica beyhod 11 and transisioned to 100% Python. So this time the focus is more on the perspective of a past Mathematica user, while the last one was from a Matheamtica user who tried a little bit of Python.

## Why I am happy with the switch

I just like how readable the code is and how easy it is to maintain large code bases. I don't miss all the {} and [] at all. 

Also with Wolfram debugging was a nightmare, especially since everything is a symbol and a function can take form and image to a sound file or an integer as imput. This is Wolframs strenght, and somethimes realy powerfull, but makes debugging not fun. There might be some benefits using the Workbench which is Ecliplse based. Yes in 2023.

There is just so much great tooling out there in Python. Like VS Code with the Python extensions of GibHub copilot. 

Finding answers

Pandas

state of the art packages


## What I still miss from Mathematica

An interactive documentation of all core packages like the mathematica documentation would be great. One step in that direction pypi and readthedocs. This makes documenation a bit more uniform, but is still not interactive. Altough, more and more projects include also notbooks, which can run in [binder](http://mybinder.org).

A quick way to make a plot dynamic. Like adding a slider and changing a parameter on the fly. This is a realy great feature and I would love a simple and general way to acheive the same in Python. I tried jupyter widgets, but did not use it further, since I was not realy impressed and switched to 100% VS Code. For me the best solution is streamlit for something like this. Although, I don't use it for quick experimentation.

In the beginning I thought I miss the build in data, but in the end I did not. There are some many free APIs out there which do the same thing and most even come with a python package. That said, one unified way to access those would be nice in Python.


Notebooks: Collabsable sections, suggestions, the little widget depending on the output like for audio, video and so on.

Easy to maintain: The number of available packages in Python come at a price. There are often many solutions to the same problem. Also it takes some time getting used to the conept of virtual environments. Currently I just manage everything with docker and devcontainers in VS Code. I like that solution, but its not as easy as installing just one application.

Pattern matching build in everywhere. Also the @ operators was nice.
With 3.10 we get pattern mathching in Python, and I am realy looking forward to it since, I got so used to them in Wolfram and know how powerfull it can be.

## Conclusion

I am happy that I made the switch to Python, but I wish for some things from Wolfram to find their way into Python.