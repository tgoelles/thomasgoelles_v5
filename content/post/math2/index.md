---
title: "A new perspective on: Wolfram Language (Mathematica) vs. Python for data
  science projects"
subtitle: A 2023 perspective after I moved 100% to Python
date: 2023-01-13T13:14:44.697Z
draft: false
featured: true
tags:
  - python
  - Mathematica
image:
  filename: adventdalen
  caption: ""
  focal_point: ""
  preview_only: false
---
# Introduction

It has been now almost four years since my last post about Mathematica vs Python. It gained quite some popularity and reached place one on the google search. Also, I got some direct enquires by Wolfram employees and an enquire to write a book. So I think it deserves an update.

Four years is a long time and a lot has changed. Python gained a lot in popularity especially due to the influx of data scientist. Pandas is stable and past 1.5 now. Also new packages like streamlit and FastAPI help to get your data science projects out there even faster. On the Wolfram side Mathematica 13.2 is released and the ecosystem became a bit more open with Python integration and even a "free" [Wolfram Engine](https://www.wolfram.com/developer/). Although, the free Engine is a nice idea and opens up the ecosystem a bit, it is still not free for production or even research. I don't know all the details about Wolframs licensing scheme and don't want to read all the fine print. All I know is that Python is free for all use cases.

As a disclaimer and spoiler up front: I did not use Mathematica beyond 11 and transitioned to 100% Python. So this time the focus is more on the perspective of a past Mathematica user, while the last one was from a Mathematica user who tried a little bit of Python.

## Why I am happy with the switch

I just like how readable the code is and how easy it is to maintain large code bases. I don't miss all the {} and \[] at all.

Also with Wolfram debugging was a nightmare, especially since everything is a symbol and a function can take everything from an image to a sound or an integer as input. This is Wolframs strengths, and really powerful, but makes debugging not fun. I even developed a custom package to make debugging easier. A package like a very very basic version of mypy for Python: [functionArgumentFailure](https://github.com/tgoelles/functionArgumentFailure).


![functionArgumentFailure Example](/media/blog/failure.png)

There might be some benefits using the Workbench which is Eclipse based. Yes Eclipse in 2023.

There is just so much great tooling out there in Python. Like VS Code with the official Python extensions or GibHub copilot, black, streamlit and many more.

Besides tooling there are of course so many state of the art packages. Recently I started on a project where we want to detect avalanches from satellite data.  We will use the new [torchgeo](https://github.com/microsoft/torchgeo) package for this which is specially for remote sensing data.

![An example from the trochgeo package:](https://raw.githubusercontent.com/microsoft/torchgeo/main/images/vhr10.png)

Collaboration and deployment with Docker is now so much easier and you can define a custom Python environments isolated from the system for all project members. Although, this is still more hassle then just starting Mathematica, but it gives more flexibility. For Example in the avalanche project w use a custom docker image with all the dependencies and code and use the same setup for local development on M1 and x86 machines and GPU servers.

Also pandas is just great and much easier than Datasets in Wolfram, and in my opinion much better suited for data exploration and cleaning. Although, I used it last time in 2019, but the core concept remained the same.

The community aspect is also very nice. You just find answers for almost everything and sources of free courses are great like [Kaggle](https://www.kaggle.com/learn), podcasts, youtube, meetups and conferences. Last year I presented at the [GeoPython](https://2022.geopython.net) conference, and it was great!

A main issue is also the job market. I have an job alert for Wolfram and Mathematica jobs running since 2016. In total there were 2, while in Python there are at least 5 new each day. So please educators, move from Mathematica and Matlab to Python, even if its free for you and the students now. It comes at a high hidden price later on.

### What I still miss

An interactive documentation of all core packages like the Mathematica documentation would be great. One step in that direction is pypi and readthedocs. This makes documentation a bit more uniform, but is still not interactive. Although, more and more projects include also notebooks, which can run in [binder](http://mybinder.org).

 I am a big fan of Jupyter Notebooks inside VS Code, which gives you all autocomplete, refactoring and debugging options in Notebooks. Although this is great, it still lags features and ease of use compared to Mathematica notebooks.

I still miss a quick way to make a plot dynamic. Like adding a slider and changing a parameter on the fly. This is a really great feature and I would love a simple and general way to achieve the same in Python. In Python the next best thing is [streamlit](https://streamlit.io) together with plotly which is easy to use, but still not just a function away in your notebook.

In the beginning I thought I miss the build-in data, but in the end I did not. There are so many free APIs out there which do the same thing and most even come with a Python package. That said, one unified way to access those would be nice in Python.

Pattern matching is build in everywhere in Wolfram, which I really liked. Also the @ operators was nice and I still catch myself thinking in that way. With 3.10 we got pattern matching in Python, and I still need to get used to it, since I am mostly still working in 3.9.

## Conclusion

I am happy that I made the switch to Python, but I wish for some things from Wolfram to find their way into Python. I still think that Wolfram is great for some use cases, but it just can not do all and everything for everyone, even if their marketing says so. During my PhD I was convinced that I would have an advantage using this fancy language. I wrote 2/3 of my PhD thesis code in Wolfram which I can not share to the community and is hard to maintain. I hope to get funding to translate the main parts into Python soon.
