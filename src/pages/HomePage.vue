<script setup>
import { ref } from "vue";
import SiteHeader from "../components/SiteHeader.vue";
import SiteFooter from "../components/SiteFooter.vue";
import profileImage from "../../IMG_7161.jpg";
import ferrariIntro from "../../ferrari_458_clean.mp4";

const showIntro = ref(!sessionStorage.getItem("portfolio-intro-seen"));
const replayIntro = () => {
  sessionStorage.removeItem("portfolio-intro-seen");
  showIntro.value = true;
};
const dismissIntro = () => {
  showIntro.value = false;
  sessionStorage.setItem("portfolio-intro-seen", "true");
};
const skills = [
  "Vue.js",
  "JavaScript",
  "HTML & CSS",
  "Python",
  "SQL",
  "Git & GitHub",
];
const projects = [
  {
    title: "Lightning News",
    image: "/Screenshot_16-10-2026_10626_www.linkedin.com.jpeg",
    alt: "Lightning News analytics dashboard",
    description:
      "A news analytics dashboard built with a Flask REST API, web scraping, and Vue.js.",
  },
  {
    title: "ModernTech Solutions",
    image: "/User attachment.png",
    alt: "ModernTech Solutions HR Central Portal dashboard",
    description:
      "An employee operations portal for attendance tracking, management, and payroll.",
  },
];
</script>
<template>
  <section
    v-if="showIntro"
    class="video-intro"
    aria-label="Portfolio video introduction"
  >
    <video
      class="video-intro-media"
      autoplay
      muted
      playsinline
      preload="auto"
      aria-hidden="true"
      @ended="dismissIntro"
      @error="dismissIntro"
    >
      <source :src="ferrariIntro" type="video/mp4" />
    </video>
    <div class="video-intro-shade"></div>
    <div class="video-intro-content">
      <p class="eyebrow">Welcome</p>
      <h1>Ishma-iel Gray</h1>
      <p>Web Developer <span>&middot;</span> Cape Town, South Africa</p>
      <button class="primary-button" type="button" @click="dismissIntro">
        Enter portfolio <span aria-hidden="true">&#8594;</span>
      </button>
    </div>
  </section>
  <SiteHeader />
  <main>
    <section class="home-hero">
      <div class="page-shell hero-grid">
        <div class="hero-copy">
          <button
            class="intro-replay-button"
            type="button"
            @click="replayIntro"
          >
            <span aria-hidden="true">&#8635;</span> Watch intro again
          </button>
          <p class="eyebrow">Web developer &middot; Cape Town, South Africa</p>
          <h1>
            Hi,<br />I'm <span>Ishma-iel</span><br /><strong
              >Web Developer</strong
            >
          </h1>
          <p class="hero-summary">
            I build thoughtful web experiences, from clean interfaces to
            practical applications that solve real problems.
          </p>
          <div class="hero-actions">
            <RouterLink class="primary-button" to="/contact"
              >Contact me <span>&#8599;</span></RouterLink
            ><RouterLink class="ghost-button" to="/work"
              >View my work</RouterLink
            >
          </div>
          <div class="social-row" aria-label="Social links">
            <a
              href="https://www.linkedin.com/in/ishma-iel-gray/"
              target="_blank"
              rel="noreferrer"
              aria-label="LinkedIn"
              >in</a
            ><a
              href="https://github.com/Ishma-ielGray"
              target="_blank"
              rel="noreferrer"
              aria-label="GitHub"
              ><svg viewBox="0 0 24 24">
                <path
                  d="M12 .9a11.1 11.1 0 0 0-3.5 21.6c.6.1.8-.3.8-.6v-2.1c-3.1.7-3.8-1.3-3.8-1.3-.5-1.3-1.3-1.6-1.3-1.6-1-.7.1-.7.1-.7 1.1.1 1.7 1.2 1.7 1.2 1 .1.7 2.5 4.2 1.8.1-.7.4-1.2.7-1.5-2.5-.3-5.2-1.2-5.2-5.5 0-1.2.4-2.2 1.2-3-.1-.3-.5-1.4.1-2.9 0 0 1-.3 3.1 1.2a10.8 10.8 0 0 1 5.7 0C17.9 6 19 6.3 19 6.3c.6 1.5.2 2.6.1 2.9.8.8 1.2 1.8 1.2 3 0 4.3-2.6 5.2-5.2 5.5.4.3.8 1 .8 2v2.2c0 .3.2.7.8.6A11.1 11.1 0 0 0 12 .9Z"
                /></svg></a
            ><a href="mailto:ishmaeelgray7@gmail.com" aria-label="Email">@</a>
          </div>
        </div>
        <div class="hero-portrait-wrap">
          <div class="portrait-orbit"></div>
          <img
            class="hero-portrait"
            :src="profileImage"
            alt="Ishma-iel Gray wearing a black shirt"
          /><span class="portrait-caption"><i></i>Open to opportunities</span>
        </div>
      </div>
      <div class="hero-scroll page-shell"><span></span>Scroll to explore</div>
    </section>
    <section class="home-section page-shell">
      <div class="section-heading">
        <div>
          <p class="eyebrow">A few things I work with</p>
          <h2 class="section-title">Tools for turning ideas into products.</h2>
        </div>
        <RouterLink to="/skills" class="text-link"
          >Explore my skills <span>&#8599;</span></RouterLink
        >
      </div>
      <div class="skill-pills">
        <span v-for="skill in skills" :key="skill">{{ skill }}</span>
      </div>
    </section>
    <section class="home-section page-shell">
      <div class="section-heading">
        <div>
          <p class="eyebrow">Selected work</p>
          <h2 class="section-title">Recent projects.</h2>
        </div>
        <RouterLink to="/work" class="text-link"
          >All projects <span>&#8599;</span></RouterLink
        >
      </div>
      <div class="featured-grid">
        <RouterLink
          v-for="project in projects"
          :key="project.title"
          class="featured-card"
          to="/work"
          ><img :src="project.image" :alt="project.alt" />
          <div class="featured-card-copy">
            <h3>{{ project.title }}</h3>
            <p>{{ project.description }}</p>
          </div></RouterLink
        >
      </div>
    </section>
    <section class="home-cta page-shell">
      <p class="eyebrow">Have a project in mind?</p>
      <h2>Let's make something<br /><span>useful together.</span></h2>
      <RouterLink class="primary-button" to="/contact"
        >Get in touch <span>&#8599;</span></RouterLink
      >
    </section>
  </main>
  <SiteFooter />
</template>
