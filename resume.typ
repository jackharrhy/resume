#set text(
  font: "Noto Sans",
  size: 10pt
)
#set page(
  paper: "a4",
  margin: (x: 1.25cm, y: 1.25cm),
)
#show link: underline

#let linksBar(linkarray) = {
  set text(1em)

  linkarray.map(l => {
    if "display" in l.keys() {
      link(l.link)[#{l.display}]
    } else {
      link(l.link)
    }
  })
  .join(h(16pt))
}

#let hr = {
  line(length: 100%, stroke: 0.75pt + black)
}

#let experience(
  content,
  entity: str,
  entityLink: str,
  role: str,
  tools: str,
  when: str
) = {
  link(entityLink)[*#entity*]
  h(4pt)
  role
  h(1fr)
  text([#tools], weight: 300, size: 1em)
  h(4pt)
  [_ #when _]
  content
}

#let experienceSection = [
  == Experience
  #hr

  #experience(
    entity: "C-CORE",
    entityLink: "https://c-core.ca/",
    role: "Software Developer",
    tools: "React, TypeScript, Python, FastAPI, PostgreSQL, PostGIS, GCP",
    when: "Jan 2022 - Present",
  )[
    - Lead a small team on a greenfield TypeScript / Python project to consolidate multiple repositories into a unified monolithic codebase, reducing complexity and speeding up delivery.
    - Successfully advocated for moving from Firestore to PostgreSQL, despite initial team reservations. This enabled advanced querying and addressed unexpected on-premise requirements.
    - Played a key role in task and workload management for both student and employee colleagues.
    - Entered the role with limited geospatial development expertise but quickly closed the knowledge gap by enrolling in relevant courses. Eventually, became proficient enough to make contributions back to the open-source tools used by our software.
    - Truly 'full-stack', from creating the frontend Vite React app, to writing the backend FastAPI-based Python server with the SQLAlchemy ORM, deploying to GCP Cloud Run with Docker Containers.
  ]

  #experience(
    entity: "CoLab Software",
    entityLink: "https://www.colabsoftware.com/",
    role: "Full-Stack Software Developer",
    tools: "React, Python, SQLAlchemy, GraphQL",
    when: "May 2020",
  )[
    - Advocated for a more efficient review process, contributing to the implementation of frameworks that facilitated comprehensive pull request reviews without unnecessary time consumption.
    - Introduced novel solutions to address cross-domain problems, such as implementing a system that serialized and shipped backend permission rules to the frontend, enabling the client to check if specific actions can be envoked without first consulting the backend.
    - Focused mostly on the frontend of the product, gaining substantial hands-on experience with React, with lots of backend Python contributions as well.
  ]

  #experience(
    entity: "Bluedrop ISM",
    entityLink: "https://bluedropism.com/",
    role: "Junior Developer",
    tools: "React, Material UI, Node.js, Feathers.js, SQL",
    when: "Jun 2018 – Dec 2019",
  )[
    - Began my software development career as an intern, quickly transitioning to a part-time Junior Developer.
    - Developed single-page web applications using React, migrated from class components to hooks.
    - Extensive unit and integration testing for both frontend and backend code.
  ]

  #experience(
    entity: "Retrevium",
    entityLink: "https://retrievium.ca/",
    role: "Software Developer",
    tools: "PostgreSQL, Python, React, Remix, Chakra UI, Go, OpenStack",
    when: "2019 - Present",
  )[
    - Designed and constructed a database designed for the storage and querying of 30+ million chemical molecules, as well as a frontend interface to ergonomically search through the data.
  ]

  #experience(
    entity: "MUN Computer Science Society",
    entityLink: "https://muncompsci.ca/",
    role: "Executive",
    tools: "Astro, Tailwind, LaTeX, GitHub Actions",
    when: "Oct 2017 – Present",
  )[
    - Multiple executive roles throughout, from technical focused, to president
    - Rebuilt the #link("https://muncompsci.ca/")[society homepage] using #link("https://astro.build/")[Astro], and built a #link("https://github.com/MUNComputerScienceSociety/Executive-Docs")[repository] for storing all executive meeting notes as Markdown, and building them into PDFs via Pandoc automatically on change using continuous integration within GitHub.
  ]
]

#let educationSection = [
  == Education
  #hr

  #show par: set block(spacing: .75em)

  *Memorial University of Newfoundland*

  St. John's, Newfoundland, Canada

  Bachelor of Science - Computer Science

  _2017 - Present_
]

#let project(
  content,
  name: str,
  projectLink: str,
  desc: str,
  tools: str
) = {
  link(projectLink)[*#name*]
  [#h(4pt) #desc #h(1fr) _ #tools _]

  content
}

#let projectsSection = [
  == Projects
  #hr

  #project(
    name: "jackharrhy.dev",
    projectLink: "https://jackharrhy.dev",
    desc: "Personal Website",
    tools: "Astro, Tailwind, MDX"
  )[
    - My homepage on the internet, since 2014.
  ]

  #project(
    name: "yaMUN",
    projectLink: "https://github.com/jackharrhy/yaMUN/",
    desc: "Course listing and schedule creation tool",
    tools: "TypeScript, Scraping"
  )[
    - A user friendly alternative to my University's course selection site.
  ]

  #project(
    name: "stickertrade",
    projectLink: "https://github.com/fogo-sh/stickertrade",
    desc: "Trading stickers",
    tools: "Remix, TypeScript, Tailwind"
  )[
    - Ecommerce-esq site where users post stickers they have collected, and trade them for other users physical stickers, local to St. John's.
  ]

  #project(
    name: "Advent of Code Solutions",
    projectLink: "https://github.com/jackharrhy/advent2022",
    desc: "Fun programming problems",
    tools: "Crystal, Elixir"
  )[
    - A chance to try out interesting-to-me programming languages, while practising datastructure and algorithm adjacent skills.
  ]

  #project(
    name: "Storefront",
    projectLink: "https://github.com/jackharrhy/storefront",
    desc: "Minecraft chests visible via web",
    tools: "Kotlin, Javalin, SQLite"
  )[
    - A Bukkit plugin, where users can display the contents of chests within a Minecraft server on the web.
    - Logic to serialize game data into a database, and visible via the web.
  ]
]

// --

#grid(
  columns: (1fr, 2fr),
  gutter: 2em,
  [
    #set text(1.2em)
    = Jack Harrhy
  ],
  [
    #align(center + horizon)[
      #linksBar((
        (icon: "email", link: "mailto:me@jackharrhy.com"),
        (icon: "website", link: "https://jackharrhy.dev/", display: "jackharrhy.dev"),
        (icon: "github", link: "https://github.com/jackharrhy", display: "jackharrhy"),
        (icon: "linkedin", link: "https://www.linkedin.com/in/jack-harrhy/", display: "jack-harrhy")
      ))
    ]
  ],
)

#experienceSection

#grid(
  columns: (1fr, 2fr),
  gutter: 2em,
  educationSection,
  projectsSection,
)
