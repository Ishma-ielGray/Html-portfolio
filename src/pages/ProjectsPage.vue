<script setup>
import SiteHeader from "../components/SiteHeader.vue";
import SiteFooter from "../components/SiteFooter.vue";
import pythonToolkitImage from "../../Python mini toolkit.png";
const projects = [
  {
    title: "Lightning News",
    image: "/Screenshot_16-10-2026_10626_www.linkedin.com.jpeg",
    alt: "Lightning News analytics dashboard",
    description:
      "Working in an Agile Scrum team, we built a RESTful API backend using Flask, executed automated web scraping with BeautifulSoup, and developed a responsive frontend dashboard in Vue.js.",
    features: [
      "Automated web scraping & data cleaning engine",
      "Flask REST API endpoints with search & filtering",
      "Dynamic Vue.js analytics dashboard with export options",
      "Git feature-branching workflow & code reviews",
    ],
    link: "https://lnkd.in/dbQggjs9",
  },
  {
    title: "ModernTech Solutions",
    image: "/User attachment.png",
    alt: "ModernTech Solutions HR Central Portal dashboard",
    description:
      "Over the last few weeks, my development team and I have been building ModernTech Solutions, an interactive front-end web application designed to streamline core workplace operations by centralizing employee management, attendance tracking, and payroll automation into a single, cohesive portal.",
    team: [
      {
        name: "Anela Nqenqa",
        link: "https://www.linkedin.com/in/anela-nqenqa-393800413/",
      },
      {
        name: "Purrity Gwabeni",
        link: "https://www.linkedin.com/in/purrity-gwabeni-24124a403/",
      },
      {
        name: "Phumezile Sibeko",
        link: "https://www.linkedin.com/in/phumezile-sibeko-41b14a209/",
      },
      {
        name: "Ishma-iel Gray",
        link: "https://www.linkedin.com/in/ishma-iel-gray-6236b7399/",
      },
      {
        name: "Mubaarik Davids",
        link: "https://www.linkedin.com/in/baarikthegoat/",
      },
    ],
    link: "https://lnkd.in/dEGUTYWy",
  },
  {
    title: "Python Mini Toolkit",
    image: pythonToolkitImage,
    alt: "Python Mini Toolkit terminal and source code",
    description:
      "For my project, I created a Python Mini Toolkit - a menu-based program that includes different mini tools and allows users to interact with the program through the terminal. This project helped me practise important Python concepts such as variables, data types, user input, operators, conditionals, loops, functions, lists, and modules.",
    link: "https://github.com/Ishma-ielGray/python-mini-toolkit",
    linkLabel: "View GitHub",
  },
];
</script>
<template>
  <SiteHeader />
  <main class="page-shell inner-page">
    <header class="page-heading">
      <p class="eyebrow">Projects</p>
      <h1>A selection of things<br /><span>I've built.</span></h1>
      <p class="section-copy">
        Web applications and coursework that helped me grow as a developer.
      </p>
    </header>
    <section class="work-grid" aria-label="Project portfolio">
      <article
        v-for="project in projects"
        :key="project.title"
        class="work-card"
      >
        <div class="work-card-image">
          <img class="work-image" :src="project.image" :alt="project.alt" />
        </div>
        <div class="work-content">
          <p class="work-kicker">Featured project</p>
          <h2>{{ project.title }}</h2>
          <p class="work-description">{{ project.description }}</p>
          <div v-if="project.features" class="feature-block">
            <h3>Key features</h3>
            <ul>
              <li v-for="feature in project.features" :key="feature">
                {{ feature }}
              </li>
            </ul>
          </div>
          <div v-if="project.team" class="team-block">
            <h3>Team</h3>
            <ul>
              <li v-for="member in project.team" :key="member.name">
                <a :href="member.link" target="_blank" rel="noreferrer"
                  >{{ member.name }} <span aria-hidden="true">&#8599;</span></a
                >
              </li>
            </ul>
          </div>
          <a
            v-if="project.link"
            class="primary-button"
            :href="project.link"
            target="_blank"
            rel="noreferrer"
            >{{ project.linkLabel || "View Live Site" }} <span>&#8599;</span></a
          >
        </div>
      </article>
    </section>
  </main>
  <SiteFooter />
</template>
