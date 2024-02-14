---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:
  - block: about.avatar
    id: about
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      # Override your bio text from `authors/admin/_index.md`?
      text:
  - block: experience
    content:
      title: Current Positions
      # Date format for experience
      #   Refer to https://wowchemy.com/docs/customization/#date-format
      date_format: Jan 2006
      # Experiences.
      #   Add/remove as many `experience` items below as you like.
      #   Required fields are `title`, `company`, and `date_start`.
      #   Leave `date_end` empty if it's your current employer.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - title: Scientist
          company: Unverisity of Graz
          company_url: 'https://www.uni-graz.at/de/'
          company_logo: Logo_Universitaet-Graz_4c
          location: Graz, Austria
          date_start: '2021-10-01'
          date_end: ''
          description: |2-

              * Co-lead for Spin-Off project
              * Avalanche Research
              * Lead Software Architect in 2 Research Projects
              * Development and automatisation
              * Proposal writing

        - title: Senior Scientist
          company: Virtual Vehicle Research GmbH
          company_url: 'https://www.v2c2.at'
          company_logo: ""
          location: Graz, Austria
          date_start: '2019-09-01'
          date_end: ''
          description: |2-

            * Leading several projects on automotive lidar
            * Data Management
            * Reproducible Science
            * Data Science
            * Lidar testing
            * Proposal writing

    design:
      columns: '2'
  - block: features
    content:
      title: Skills
      items:
        - name: Geophysics
          icon: mountain
          icon_pack: fas
        - name: Data Science
          icon: chart-line
          icon_pack: fas
        - name: Automotive
          icon: car
          icon_pack: fas
        - name: Python
          icon: python
          icon_pack: fab
        - name: Fortran
          icon: textxfortran_103619
          icon_pack: custom
        - name: Wolfram (Mathematica)
          icon: Mathematica_Logo
          icon_pack: custom


  - block: collection
    id: posts
    content:
      title: Recent Posts
      subtitle: ''
      text: ''
      # Choose how many pages you would like to display (0 = all pages)
      count: 5
      # Filter on criteria
      filters:
        folders:
          - post
        author: ""
        category: ""
        tag: ""
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: compact
      columns: '2'
  - block: portfolio
    id: projects
    content:
      title: Projects
      filters:
        folders:
          - project
      # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
      default_button_index: 0
      # Filter toolbar (optional).
      # Add or remove as many filters (`filter_button` instances) as you like.
      # To show all items, set `tag` to "*".
      # To filter by a specific tag, set `tag` to an existing tag name.
      # To remove the toolbar, delete the entire `filter_button` block.
      buttons:
        - name: All
          tag: '*'
        - name: avalanche
          tag: avalanche
        - name: Greenland
          tag: Greenland
        - name: lidar
          tag: lidar
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '1'
      view: showcase
      # For Showcase view, flip alternate rows?
      flip_alt_rows: false
  - block: markdown
    id: teaching
    content:
      title: Teaching
      subtitle: ''
      text: |-
        ## Current Teaching
        * Spatial Statistical Analysis and Visualisation 2
        * Field trip (snow and avalanches)
        * Modeling in Physical Geography

        ## Past Teaching
        * Spatial Statistical Analysis and Visualisation 1
        * Hydrological Monitoring of Alpine Catchments
        * Practical Course in Hydrology
        * Automotive Sensors and Actuators, Laboratory, TU Graz, 2022/23
        * Geographical field course, 2022/23
        * Geoscientific model development: best practices of software development and an introduction to machine learning, Uni Graz, 2021
        * Field trip (Snow and avalanches), Uni Graz, 2022
        * Snow and ice processes (AGF-212), The University Centre in Svalbard, 2010-2014
        * IPY field school, The University Centre in Svalbard, 2011 & 2012
        * Arctic hydrology and climate (AT-209), The University Centre in Svalbard, 2010
        * 3D-CAD, E&S IT-Consulting, 2006-2007
    design:
      columns: '2'
  - block: markdown
    content:
      title: Gallery
      subtitle: ''
      text: |-
        {{< gallery album="demo" >}}
    design:
      columns: '1'
  - block: collection
    id: featured
    content:
      title: Featured Publications
      filters:
        folders:
          - publication
        featured_only: true
    design:
      columns: '2'
      view: card
  - block: collection
    content:
      title: Recent Publications
      text: |-
        {{% callout note %}}
        Quickly discover relevant content by [filtering publications](./publication/).
        {{% /callout %}}
      filters:
        folders:
          - publication
        exclude_featured: true
    design:
      columns: '2'
      view: citation
  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      filters:
        folders:
          - event
    design:
      columns: '2'
      view: compact
  - block: tag_cloud
    content:
      title: Popular Topics
    design:
      columns: '2'
  - block: contact
    id: contact
    content:
      title: Contact
      subtitle:
      text: |-
        Contact me in German, English, or Swedish
      # Contact (add or remove contact options as necessary)
      email: thomas.goelles@gmail.com
      phone: ""
      appointment_url: ''
      address:
        street: Heinrichstraße 18
        city: Graz
        region: Styria
        postcode: '8010'
        country: Austria
        country_code: AT
      directions: Top Level
      contact_links:
        - icon: mastodon
          icon_pack: fab
          name: Follow
          link: https://fosstodon.org/@thomasgoelles
      # Automatically link email and phone or display as text?
      autolink: true
      # Email form provider
      form:
        provider: netlify
        formspree:
          id:
        netlify:
          # Enable CAPTCHA challenge to reduce spam?
          captcha: true
    design:
      columns: '2'
---
