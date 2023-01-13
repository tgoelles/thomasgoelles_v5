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

Four years is a long time and a lot has changed. Python gained a lot in popularity especially due to the influx of data sciencetists from other languages. Pandas is stable and past 1.5 now.  Also new packages like streamlit and FastAPI help to get your data science projects out there even faster. On the wolfram side Mathematica 13.2 is released and the ecosystem became a bit more open with Python integration and even a free [Wolfram Engine](https://www.wolfram.com/developer/). Althouth, the free Engine is a nice idea and opens up the ecosystem a bit it is still not free for production or even research. I don't know all the details about Wolframs licensing scheme and don't want to read all the fine print. All I know is that Python is free for all use cases. 

As a disclaimer and spoiler up front: I did not use Mathematica beyhod 11 and transisioned to 100% Python. So this time the focus is more on the perspective of a past Mathematica user, while the last one was from a Matheamtica user who tried a little bit of Python.

## Why I am happy with the switch

I just like how readable the code is and how easy it is to maintain large code bases. I don't miss all the {} and \[] at all. 

Also with Wolfram debugging was a nightmare, especially since everything is a symbol and a function can take form and image to a sound file or an integer as imput. This is Wolframs strenght, and somethimes realy powerfull, but makes debugging not fun. I even developed a custom package to make debugging easier a little bit like a very very basic version of mypy for Python: [functionArgumentFailure](https://github.com/tgoelles/functionArgumentFailure).

There might be some benefits using the Workbench which is Ecliplse based. Yes in 2023.

There is just so much great tooling out there in Python. Like VS Code with the Python extensions of GibHub copilot, black, streamlit and many more.

Also with Docker collaboration and deployment are now much easier and you can define a custom Python enviroment isolated from the system for all project members.

Also pandas is just great and much easier and more powerfull than Datasets in Wolfram. Although, I used it last time in 2019, but the core concept remaind the same.

The Community aspect is also very nice. You just find answers for almost everything and sources of free courses are great like Kaggle, Podcasts and of course youtube, meetups and conferences. Last year I presented at the [GeoPython](https://2022.geopython.net) conference, and it was great!

A main issue is also the Job Market. I have an job alert from Wolfram and Mathematica Jobs in may area since 2016. In total there where 2, while in Python there are at least 5 new per day. So please educators move from Wolfram and Mathematica to Python, even if its free for you and the students now. It comes at a high hidden price later on. 

### What I still miss

An interactive documentation of all core packages like the mathematica documentation would be great. One step in that direction pypi and readthedocs. This makes documenation a bit more uniform, but is still not interactive. Altough, more and more projects include also notbooks, which can run in [binder](http://mybinder.org).

 I am a big fan of Jupyter Notebooks inside VS Code, which gives you all autocomplet and refactoring and debugging options in Notebooks. Altouh this is great it still laggs features and easy of use compared to Mathematica Notebooks.

A quick way to make a plot dynamic. Like adding a slider and changing a parameter on the fly. This is a realy great feature and I would love a simple and general way to acheive the same in Python. In Python the next best thing is streamlit which is easy to use, but still not just a function away in your notebook.

In the beginning I thought I miss the build in data, but in the end I did not. There are some many free APIs out there which do the same thing and most even come with a python package. That said, one unified way to access those would be nice in Python.

Pattern matching build is build in everywhere in Wolfram. Also the @ operators was nice. With 3.10 we got pattern mathching in Python, and I still need to start using it, since I am mostly still working in 3.8 or 3.9.

## Conclusion

I am happy that I made the switch to Python, but I wish for some things from Wolfram to find their way into Python. I still think that Wolfram is great for some use cases, but it just can not do all and everything for everyone, even if their marketing says so. During my PhD I was convinced that I would have an advantage using this fancy Language. I wrote 2/3 of my PhD Thesis code in Wolfram which I can not share to the community and is hard to maintan. I hope to get funding to translate the main parts into Python soon.