---
title: "bibtui: a terminal UI for your BibTeX library"
subtitle: ""
summary: "A keyboard-driven terminal tool for searching, organizing, and curating .bib reference libraries — built for my own workflow and as a testbed for AI-driven development."
authors: []
tags:
  - Python
  - terminal
  - reproducible science
  - AI-assisted development
categories: []
date: 2026-06-26
lastmod: 2026-06-26
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

projects: []
---

I manage my literature as plain `.bib` files — they live in Git, they outlive any app, and they stay the single source of truth. What I was missing was a fast way to actually *work* with them. So I built [**bibtui**](https://tgoelles.github.io/bib_tui), a keyboard-driven terminal app for searching, tagging, and curating BibTeX libraries.

It does a few things I reach for constantly:

- **Search as you type** across title, author, journal, keywords, and cite key.
- **Automatic PDF downloads** of open-access papers from arXiv, Copernicus, OpenAlex, and Unpaywall.
- **Keyword organization** with read state and priorities, so a big `.bib` stays navigable.
- **Plain-text and Git-friendly**, so sharing and versioning a reference collection with collaborators just works.

It's built on the [Textual](https://textual.textualize.io/) TUI framework, works with mouse and keyboard, and ships with a handful of themes (Catppuccin, Nord, Dracula, Gruvbox).

The fastest way to try it, no install required:

    uvx --prerelease=allow bibtui

Beyond scratching my own itch, bibtui has been my testbed for **AI-driven development** — a real, non-trivial project to push agentic coding workflows on. It's open source (MIT) and on PyPI.

## Links

- Docs: [tgoelles.github.io/bib_tui](https://tgoelles.github.io/bib_tui)
- Source: [github.com/tgoelles/bib_tui](https://github.com/tgoelles/bib_tui)
