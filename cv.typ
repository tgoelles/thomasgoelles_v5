#import "@preview/neat-cv:1.1.0": (
  contact-info, cv, cv-thin-side, cv-with-side, email-link, entry, item-pills, item-with-level, reference, social-links,
  thin-label, thin-metrics,
)

#import "@preview/alexandria:0.2.2": *
#show: alexandria(prefix: "x:", read: path => read(path))

#import "@preview/fontawesome:0.6.1": *

#set text(lang: "en")

// Toggle optional sections copied from commented TeX blocks.
#let sections = (
  doctoral_research_fellow_role: false,
  masters_research_roles: false,
  cad_teacher_role: false,
  further_relevant_work: false,
  relevant_courses: false,
  teaching_experience: true,
  fieldwork_techniques: true,
  remote_sensing_techniques: true,
  expeditions_and_fieldwork: false,
  outreach: false,
  supervision: true,
  successful_third_party_funding: false,
  open_third_party_funding: false,
  references: false,
)

#let project-entry(
  title: "",
  role: "",
  summary: "",
  license: "n/a.",
  url: none,
  url-label: none,
) = [
  #strong(title) (#if url != none [
    #link(url)[#if url-label != none [#url-label] else [#url]]
  ] else [
    URL: n/a (internal or unpublished).
  ]) \
  #pad(left: 1.4em)[
    #fa-scale-balanced() #h(0.5em) #license \
    #summary \
    _My role_: #role
  ]

]

#show: cv.with(
  author: (
    firstname: "Thomas",
    lastname: "Gölles",
    email: "thomas.goelles@gmail.com",
    address: [Schaftalberg 4\ 8044, Kainbach bei Graz\ Austria],
    phone: "+43 677 61132611",
    position: ("Data and Software Engineer", "Geo-Scientist"),
    website: "https://thomasgoelles.com",
    github: "tgoelles",
    linkedin: "thomasgoelles",
    researchgate: "Thomas-Goelles",
    orcid: "0000-0002-3925-6260",
  ),
  profile-picture: image("Thomas-Goelles.webp"),
  accent-color: rgb("#4c566a"),
  header-color: rgb("#4c566a"),
)

#cv-with-side[
  = Profile
  Interdisciplinary researcher and engineer with a background in physics, geoscience,
  machine learning, mechanical engineering and software development. Leading applied research projects from
  concept to deployment, with a focus on lidar, remote sensing, and production-ready
  data systems.

  = Interests
  - Cryosphere
  - Natural Hazards
  - Earth Observation
  - Process Automatization
  - Reproducible Science

  = Contact
  #contact-info()

  = Personal
  Nationality: Austrian \
  Driving License: B

  #v(1fr)
  #social-links()

  #colbreak()

  = Languages
  #item-with-level("German", 5, subtitle: "Native")
  #item-with-level("English", 4.5)
  #item-with-level("Swedish", 3.5)
  #item-with-level("Norwegian", 2.5)

  = Core Skills
  #item-with-level("Lidar and Point Clouds", 5)
  #item-with-level("Geospatial data pipelines", 4.5)
  #item-with-level("Machine Learning", 4)


  = Programming Skills
  #item-with-level("Python", 4.5)
  #item-with-level("Fortran", 4.5)
  #item-with-level("Wolfram", 4)
  #item-with-level("SQL", 3.5)
  #item-with-level("ROS2", 3)
  #item-with-level("HTML,CSS", 3)
  #item-with-level("C++", 2.0)
  #item-with-level("Rust", 1)




  = Tooling
  #item-pills((
    "Git",
    "GitHub",
    "Docker",
    "REST APIs",
    "PostgreSQL",
    "SQLite",
    "QGIS",
    "Zenodo",
    "CI/CD",
    "GitHub Actions",
    "Notion",
    "AutoCAD",
    "Inventor",
    "latex",
    "typst",
    "Linux",
    "Ansible",
    "Raspi"

  ))

  = Favorite Python Packages
  #item-pills((
    "uv",
    "ruff",
    "xarray",
    "rioxarray",
    "pandas",
    "geopandas",
    "pointcloudset",
    "plotly",
    "litestar",
    "streamlit",
    "pytest",
    "pytorch",
    "kedro",
    "dask",
    "scikit-learn",
    "rich",
    "textual",

  ))

][
  = Academic Work Experience

  == Senior Research Scientist

  #entry(
    title: "Lead Researcher",
    date: "01.2025-now",
    institution: "Virtual Vehicle Research GmbH",
    location: "Graz (Austria)",
  )[
    - Lead scientist in the GeoMar team of the Control Systems Group.
    - Project Lead on the snow avalanche project RSnowAUT.
    - Lead of internal Data Management Project
    - Project acquisition related to Maritime and Geotechnology topics
  ]

  #entry(
    title: "Spin-off Fellow",
    date: "04.2024-04.2026",
    institution: "University of Graz",
    location: "Graz (Austria)",
    [Leading the FFG Spin-off Fellowship project GEOTEQ related to snow monotoring with low-cost lidar.],
  )

  #entry(
    title: "Scientist",
    date: "10.2023-04.2024",
    institution: "University of Graz",
    location: "Graz (Austria)",
    [- Interim position with Teaching at the Institute of Geography and Regional Science. ],
  )

  #entry(
    title: "Senior Researcher",
    date: "09.2019-01.2025",
    institution: "Virtual Vehicle Research GmbH",
    location: "Graz (Austria)",
  )[
    - Led and contributed to several lidar relate projects.
    - Developed software for data analytics and project data management.
  ]

  #entry(
    title: "Spin-off Project Co-lead",
    date: "10.2022-10.2023",
    institution: "University of Graz",
    location: "Graz (Austria)",
    [GEOSENS: university spin-off based on lidar and machine learning research.],
  )

  #entry(
    title: "Project Researcher",
    date: "10.2021-10.2022",
    institution: "University of Graz",
    location: "Graz (Austria)",
  )[
    - Technical lead of SnowAV_AT.
    - Built core data pipeline and machine learning components.
  ]

  #entry(
    title: "Visiting Scientist",
    date: "01.2017-03.2017",
    institution: "Institute of Low Temperature Science, Hokkaido University",
    location: "Sapporo (Japan)",
  )[
    - Improved numerical stability of the SICOPOLIS open-source ice sheet model.
  ]

  == Doctoral Research

  #entry(
    title: "PhD Candidate in Physics",
    date: "09.2010-01.2016",
    institution: "The University Centre in Svalbard",
    location: "Longyearbyen (Norway)",
  )[
    - Topic: simulating impurity effects on the Greenland ice sheet.
    - Thesis: Impurities of glacier ice: accumulation, transport and albedo.
    - Trial lecture: feedback loops in the ice sheet-climate interaction.
    - Supervisors: Cecilie Rolstad Denby, Carl Egede Bøggild, Ralf Greve.
  ]

  #if sections.doctoral_research_fellow_role [
    #entry(
      title: "Research Fellow in Snow and Ice Physics",
      date: "09.2010-01.2016",
      institution: "The University Centre in Svalbard",
      location: "Longyearbyen (Norway)",
    )[
      - Taught undergraduate courses in class and in the field.
      - Managed procurement and maintenance of scientific equipment.
    ]
  ]

  #entry(
    title: "Visiting Scientist",
    date: "10.2011-12.2011",
    institution: "Institute of Low Temperature Science, Hokkaido University",
    location: "Sapporo (Japan)",
    [Contributed to the ice sheet model SICOPOLIS development and simulation workflows. Especially improvements of the numerical stability of the solver.],
  )

  #if sections.masters_research_roles [
    == Masters Research

    #entry(
      title: "Junior Scientist",
      date: "03.2009-03.2010",
      institution: "Alfred Wegener Institute",
      location: "Bremerhaven (Germany)",
      [Implemented higher-order tracer transport in SICOPOLIS via a semi-Lagrangian method.],
    )

    #entry(
      title: "Junior Scientist",
      date: "03.2010-08.2010",
      institution: "Wegener Center",
      location: "Graz (Austria)",
      [Master thesis finalisation.],
    )
  ]

  = Non-academic Work Experience

  #entry(
    title: "Co-Founder and Data Scientist",
    date: "07.2018-08.2021",
    institution: "ATSEDA AB",
    location: "Älvdalen (Sweden), Graz (Austria)",
  )[
    - Product development in data analytics.
    - Project management, administration, and marketing.
  ]

  #entry(
    title: "Freelance Data Scientist",
    date: "2017-2018",
    institution: "Self-employed",
    location: "Älvdalen (Sweden), Graz (Austria)",
    [Mathematical modelling and data analytics projects (Fortran, Python, SQL).],
  )

  #entry(
    title: "Co-owner and Guide",
    date: "2013-2016",
    institution: "FatBike Spitsbergen DA",
    location: "Longyearbyen (Norway)",
    [Co-founded one of the first fatbike tour operators in Europe.],
  )

  #entry(
    title: "Mechanical Design Engineer",
    date: "2000-2006",
    institution: "BK-Maschinenbau",
    location: "Graz (Austria)",
    [Designed assembly stations for the automotive industry.],
  )

  #if sections.cad_teacher_role [
    #entry(
      title: "3D-CAD Teacher",
      date: "2006-2007",
      institution: "E&S IT-Consulting",
      location: "Graz (Austria)",
      [Taught AutoDesk Mechanical Desktop courses.],
    )
  ]

  = Education

  #entry(
    title: "PhD in Physics - Glaciology",
    date: "09.2010-09.2016",
    institution: "UNIS and Norwegian University of Life Sciences (NMBU)",
    location: "Longyearbyen and Ås (Norway)",
  )[
    - Public defence: 29.09.2016.
    - Included two parental leaves with a combined duration of 547 days.
    - Thesis: Impurities of glacier ice: accumulation, transport and albedo.
  ]

  #entry(
    title: "Mag. rer. nat.",
    date: "2008-2010",
    institution: "University of Graz",
    location: "Graz (Austria)",
  )[
    - Environmental system sciences, major in physics, with distinction.
    - Thesis in cooperation with Alfred Wegener Institute and Wegener Center.
  ]

  #entry(
    title: "Bakk. rer. nat.",
    date: "2004-2008",
    institution: "University of Graz",
    location: "Graz (Austria)",
    [Environmental system sciences, major in physics.],
  )

  #entry(
    title: "Ing",
    date: "1994-1999",
    institution: "HTBLA Weiz",
    location: "Weiz (Austria)",
    [Mechanical engineering followed by four years of industry experience.],
  )



  = Software Projects

  === Owner / Lead


  #project-entry(
    title: "pointcloudset",
    url: "https://virtual-vehicle.github.io/pointcloudset/",
    url-label: "virtual-vehicle.github.io/pointcloudset",
    role: "Creator and owner.",
    summary: "Python package for efficient analysis of large point-cloud time series. Available on PyPI",
    license: "MIT.",
  )

  #project-entry(
    title: "api.avalanchemonitoring.com",
    url: "https://api.avalanchemonitoring.com/schema/swagger",
    url-label: "api.avalanchemonitoring.com/schema/swagger",
    role: "Owner and sole developer.",
    summary: "Production API for lidar-based avalanche monitoring workflows.",
    license: "Service platform (proprietary).",
  )

  // #project-entry(
  //   title: "ISOPOLIS",
  //   role: "Owner and developer.",
  //   summary: "Tooling around ice-sheet model workflows and simulation data handling.",
  //   license: "n/a.",
  // )

  #project-entry(
    title: "specarray",
    url: "https://github.com/tgoelles/specarray",
    url-label: "github.com/tgoelles/specarray",
    role: "Owner and maintainer.",
    summary: "Python package for analysis of hyperspectral data from SPECIM devices. Available on PyPI",
    license: "MIT.",
  )

  // #project-entry(
  //   title: "functionArgumentFailure",
  //   url: "https://github.com/tgoelles/functionArgumentFailure",
  //   url-label: "github.com/tgoelles/functionArgumentFailure",
  //   role: "Owner and developer.",
  //   summary: "Mathematica package for robust function-argument validation and error handling.",
  //   license: "GPL-3.0.",
  // )


  #project-entry(
    title: "bibtui",
    url: "https://github.com/tgoelles/bib_tui",
    url-label: "github.com/tgoelles/bib_tui",
    role: "Owner and maintainer.",
    summary: "Terminal UI tool for managing, searching, and curating .bib literature databases. Made for own use and for testing AI driven development workflows. Available on PyPI.",
    license: "MIT.",
  )


  #project-entry(
    title: "cookiecutter_science",
    url: "https://github.com/tgoelles/cookiecutter_science",
    url-label: "github.com/tgoelles/cookiecutter_science",
    role: "Owner and sole maintainer.",
    summary: "Cookiecutter template for reproducible scientific software and data projects.",
    license: "MIT.",
  )

  === Contributor
  - SICOPOLIS, YELMO, BioSNICAR-PY, Kedro-based GeoTIFF pipelines, Many more.

  #if sections.further_relevant_work [
    = Further Relevant Work Experience
    #entry(
      title: "Data Management",
      date: "2022",
      institution: "Project lead",
      location: "Architecture design and programming",
      "",
    )
    #entry(
      title: "biosnicar-py",
      date: "2022",
      institution: "Contributor",
      location: "Code and web app improvements",
      "",
    )
    #entry(
      title: "pointcloudset",
      date: "2020-2022",
      institution: "Maintainer",
      location: "Large-scale point-cloud analysis package",
      "",
    )
    #entry(
      title: "Data Science Template",
      date: "2020-2022",
      institution: "Maintainer",
      location: "Reproducible processing environment",
      "",
    )
    #entry(
      title: "Soil Erosion Model",
      date: "2018-2019",
      institution: "Consultant",
      location: "Fortran modernization",
      "",
    )
    #entry(
      title: "Mobile Automatic Weather Station",
      date: "2015",
      institution: "Developer",
      location: "Cooperation with Dr. Marius Jonassen",
      "",
    )
    #entry(
      title: "NetCDF Output Explorer",
      date: "2010-2017",
      institution: "Developer",
      location: "Analytics tool for ice sheet model output",
      "",
    )
    #entry(
      title: "SICOPOLIS database",
      date: "2010-2015",
      institution: "Developer",
      location: "Data management for simulations",
      "",
    )
  ]

  #if sections.relevant_courses [
    = Some Relevant Courses

    #entry(title: "First Aid for Excursions", date: "2024", institution: "Red Cross and Uni Graz", location: "", "")
    #entry(title: "Arctic Survival and Safety", date: "2011", institution: "UNIS", location: "", "")
    #entry(
      title: "Project Management Basic and Advanced",
      date: "2021",
      institution: "Oliver Posvek, MBA",
      location: "",
      "",
    )
    #entry(title: "Conflict Management", date: "2022", institution: "Mag. Manfred Wolf", location: "", "")
    #entry(
      title: "Dynamics of the Greenland Ice Sheet",
      date: "2014",
      institution: "University of Bergen",
      location: "",
      "",
    )
    #entry(title: "Cryospheric Modelling", date: "2012", institution: "University of Oslo", location: "", "")
  ]

  = Project Leadership

  #entry(title: "GEOTEQ", date: "2024-2025", institution: "Lead", location: "Spin-Off Fellowship", "PI and technical lead for advancing a production lidar monitoring system from TRL5 to TRL7, including REST API development and deployment at sites in Austria and Svalbard.")

  #entry(title: "RSnowAUT", date: "2022-2025", institution: "Co-PI", location: "Remote sensing and avalanche detection", "Technical lead and co-PM. Built an automated avalanche detection pipeline on Sentinel-1 SAR data using U-Net segmentation models and a Kedro-based processing framework, validated against lidar-derived ground truth.")

  #entry(title: "DM_VIF", date: "2022-2023", institution: "PI", location: "Data management for Virtual Vehicle", "Evaluation of data management platforms and design of automated processing workflows for Virtual Vehicle Research.")

  #entry(title: "GEOSENS", date: "2022-2023", institution: "Technical Lead", location: "Spin-off project", "Lidar point cloud processing pipeline development; foundational work leading to the GEOTEQ spin-off.")

  #entry(title: "Sensor FDIR", date: "2020-2021", institution: "PI", location: "Lidar fault detection", "Fault detection and diagnostics on automotive lidar sensors. Developed and published pointcloudset, an open-source Python library for time-series point cloud processing (JOSS).")

  #entry(title: "iLIDS4SAM", date: "2020-2021", institution: "WP Lead", location: "Lidar for automated mobility", "WP6 lead for lidar sensor fusion in the context of smart and safe automated mobility.")

  #entry(title: "Private Sector Projects", date: "2017-2019", institution: "PM and CEO", location: "ATSEDA AB", "Led data science projects for industry and e-commerce clients.")


  #if sections.fieldwork_techniques [
    = Fieldwork Techniques
    *SMB*: Glacier surface mass balance stakes, operation, and data processing.
    *DGNSS*: Operation, maintenance, and data processing.
    *AWS*: Automatic weather station operation and data processing.
    *CTD*: Conductivity, temperature, and depth data processing.
    *Snow pits*: Stratigraphy, density, hardness, weak-layer analysis.
  ]

  #if sections.remote_sensing_techniques [
    = Remote Sensing Techniques
    *Ground penetrating radar*: operation and data processing.
    *Lidar*: operation, point cloud processing, and SLAM.
    *Hyperspectral imaging*: operation and data processing.
    *SAR*: Sentinel-1 data processing.
  ]

  #if sections.successful_third_party_funding [
    = Successful Third-Party Funding
    #entry(title: "GEOTEQ", date: "2023", institution: "FFG Spin-off Fellowship", location: "500k EUR", "")
    #entry(title: "GEOSENS", date: "2022", institution: "Unicorn funding", location: "100k EUR", "")
    #entry(title: "RSnowAUT", date: "2022", institution: "Avalanche detection", location: "700k EUR", "")
    #entry(title: "URBANSens", date: "2021", institution: "Energy efficient UAS logistics", location: "6M EUR", "")
  ]

  #if sections.supervision [
    = Supervision and Co-Supervision of Thesis

    #entry(
      title: "Master Thesis Supervision",
      date: "2024-now",
      institution: "TU Graz",
      location: "Christian Krobath",
      [Avalanche Radar Data Analysis.],
    )

    #entry(
      title: "Master Thesis Supervision",
      date: "2022-2023",
      institution: "Institute for Systems and Robotics, ISR-Lisboa",
      location: "Berin Dikic",
      [Automotive lidar technology for marine applications.],
    )

    #entry(
      title: "PhD Co-Supervision",
      date: "2019-2024",
      institution: "TU Graz",
      location: "Birgit Schlager",
      [Automotive lidar fault injection and detection.],
    )

    #entry(
      title: "PhD Co-Supervision (in prep.)",
      date: "2022-2025",
      institution: "Uni Graz",
      location: "Christoph Gaisberger",
      [Weather effects on automotive lidar.],
    )

    #entry(
      title: "Master Thesis Supervision",
      date: "2021",
      institution: "Uni Graz and TU Graz",
      location: "Tobias Hammer",
      [New applications of automotive lidar sensors in geosciences.],
    )

  ]

  #if sections.open_third_party_funding [
    = Open Third-Party Funding Applications
    #entry(title: "GRIS-LAI", date: "2024-2027", institution: "FWF, PI", location: "450k EUR", "")
    #entry(title: "GLOFWATCH", date: "2025-2029", institution: "EU, Partner", location: "600k EUR", "")
    #entry(title: "ICY-TWINS", date: "2024-2027", institution: "EU, WP Lead", location: "175k EUR", "")
    #entry(title: "AVALIK", date: "2024", institution: "Interact, PI", location: "12k EUR", "")
  ]




  #if sections.teaching_experience [
    = Teaching Experience
    #entry(
      title: "Arctic Technology",
      date: "2025-2026",
      institution: "FH Joanneum",
      location: "Lecture and practical training",
      "",
    )
    #entry(
      title: "Automotive Sensors and Actuators, Laboratory",
      date: "2022-2025",
      institution: "TU Graz",
      location: "Lecture and practical training",
      "",
    )
    #entry(
      title: "Spatial Statistical Analysis and Visualisation 1",
      date: "2023-2024",
      institution: "Uni Graz",
      location: "Lecture and practical training",
      "",
    )
    #entry(
      title: "Hydrological Monitoring of Alpine Catchments",
      date: "2024",
      institution: "Uni Graz",
      location: "Field course",
      "",
    )
    #entry(
      title: "Modeling in Physical Geography",
      date: "2024",
      institution: "Uni Graz",
      location: "Lecture and practical training",
      "",
    )
    #entry(
      title: "Snow and ice processes (AGF-212)",
      date: "2010-2014",
      institution: "UNIS",
      location: "Lecture and field course",
      "",
    )
  ]



  #if sections.expeditions_and_fieldwork [
    = Expeditions and Fieldwork
    #entry(
      title: "Co-Leader",
      date: "07.2023",
      institution: "Sermilik Station (Greenland)",
      location: "Lidar and hyperspectral imaging",
      "",
    )
    #entry(title: "Leader", date: "05.2023", institution: "Sonnblick (Austria)", location: "Lidar", "")
    #entry(
      title: "Leader",
      date: "03.2022",
      institution: "Tunabreen (Svalbard)",
      location: "Lidar calving front mapping",
      "",
    )
    #entry(
      title: "Search and Rescue Delegate",
      date: "04.2012",
      institution: "Siachen glacier (Pakistan)",
      location: "Avalanche search with GPR",
      "",
    )
    #entry(
      title: "Participant",
      date: "11.2009-01.2010",
      institution: "RV Polarstern ANT-XXVI/2",
      location: "Pacific and Southern Ocean",
      "",
    )
  ]

  #if sections.outreach [
    = Outreach
    #entry(
      title: "Der Pragmaticus",
      date: "20.01.2025",
      institution: "Online",
      location: "Was uns Satelliten über Lawinen erzählen können",
      "",
    )
    #entry(title: "UNIZEIT", date: "01.12.2024", institution: "Print", location: "Schneesicher", "")
    #entry(title: "ORF", date: "31.01.2024", institution: "TV", location: "Avalanche research project of Uni Graz", "")
    #entry(
      title: "WegenerNet4Climate",
      date: "01.07.2022",
      institution: "Exhibition",
      location: "MOLISENS demonstration",
      "",
    )
  ]

  #if sections.references [
    = References

    #reference(
      name: "Univ.-Prof. Dr. Wolfgang Schöner",
      role: "University of Graz",
      location: "Graz (Austria)",
      [
        Contact: #email-link("wolfgang.schoener@uni-graz.at")
      ],
    )

    #reference(
      name: "Univ.-Prof. Dr. Ralf Greve",
      role: "Hokkaido University",
      location: "Sapporo (Japan)",
      [
        Contact: #email-link("greve@lowtem.hokudai.ac.jp")
      ],
    )
  ]
]

#pagebreak()

#cv-thin-side[
  #thin-label("Bibliography")
  #v(1em)
  #thin-metrics((
    (label: "h-index", value: "11"),
    (label: "Citations", value: "332"),
  ))
][
  #show "Goelles": strong
  #show "Gölles": strong
  #bibliography("publications.bib", full: true, style: "ieee")

  #bibliographyx("presentations.bib", full: true, title: "Presentations", style: "ieee")
]
