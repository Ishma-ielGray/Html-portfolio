<script setup>
import SiteHeader from "../components/SiteHeader.vue";
import SiteFooter from "../components/SiteFooter.vue";
import profileImage from "../../IMG_7161.jpg";
const skills = [
  "HTML & CSS",
  "JavaScript",
  "Vue.js",
  "Python",
  "SQL",
  "Git & GitHub",
  "Bootstrap",
  "Responsive Design",
  ".NET",
];
const interests = [
  {
    title: "Gaming",
    text: "In my free time you will catch me gaming, especially Forza Horizon.",
  },
  {
    title: "Driving & Music",
    text: "Long drives and listening to music are my way of clearing my head.",
  },
  {
    title: "Coffee",
    text: "I enjoy trying different coffee shops and finding a good flat white.",
  },
  { title: "Movies", text: "I love a good movie, mainly comedy and action." },
];
</script>
<template>
  <SiteHeader />
  <main class="page-shell inner-page">
    <section class="about-intro">
      <div class="about-photo">
        <img
          :src="profileImage"
          alt="Ishma-iel Gray wearing a black shirt"
        /><span class="photo-accent"></span>
      </div>
      <div class="about-copy">
        <p class="eyebrow">A little about me</p>
        <h1>Building for people, with <span>curiosity.</span></h1>
        <p>
          I'm an aspiring web developer based in Cape Town, South Africa. I've been
          building things through the MSITA Web Development course, mostly
          working with small web pages and startups.
        </p>
        <p>
          What I love about this work is that every project is different. One
          week I'm building an online store, the next I'm working on a booking
          system or a content management tool. It keeps things interesting.
        </p>
        <p>
          I spend most of my time with JavaScript and its frameworks, and I'm
          comfortable working across the full stack. I like taking a project
          from concept to deployment.
        </p>
        <RouterLink class="primary-button" to="/contact"
          >Let's work together <span>&#8599;</span></RouterLink
        >
      </div>
    </section>
    <section class="content-section">
      <p class="eyebrow">My approach</p>
      <h2 class="section-title">Clear thinking. Careful work.</h2>
      <div class="surface approach-grid">
        <p>
          I prefer to keep things simple. Before writing code, I spend time
          understanding what needs to be built and why.
        </p>
        <p>
          I value regular updates, clear timelines, and being honest when
          something isn't working.
        </p>
        <p>
          Code quality matters to me. I aim to write clean, documented code that
          other developers can understand.
        </p>
        <p>
          I'm always learning. I read documentation, follow other developers,
          and try new tools to see what is useful.
        </p>
      </div>
    </section>
    <section class="content-section">
      <p class="eyebrow">Away from the keyboard</p>
      <h2 class="section-title">A few other interests.</h2>
      <div class="interest-grid">
        <article
          v-for="interest in interests"
          :key="interest.title"
          class="interest-card"
        >
          <i></i>
          <h3>{{ interest.title }}</h3>
          <p>{{ interest.text }}</p>
        </article>
      </div>
    </section>
  </main>
  <SiteFooter />
</template>
