<script setup>
import SiteHeader from "../components/SiteHeader.vue";
import SiteFooter from "../components/SiteFooter.vue";

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
</script>
<template>
  <SiteHeader />
  <main class="page-shell inner-page">
    <header class="page-heading">
      <p class="eyebrow">Experience &amp; skills</p>
      <h1>What I bring to a <span>team.</span></h1>
      <p class="section-copy">
        A look at my development experience and the tools I use to build for the
        web.
      </p>
    </header>
    <section class="content-section">
      <div class="two-column">
        <article class="surface">
          <h3>Work history</h3>
          <ol class="timeline">
            <li>
              <i class="timeline-dot"></i>
              <div>
                <time>2026 - Present</time>
                <strong>Student at Life Choices Coding Academy</strong>
              </div>
            </li>
            <li>
              <i class="timeline-dot"></i>
              <div>
                <time>Jan 2025 - Dec 2025</time>
                <strong>Studying Web Development</strong>
              </div>
            </li>
          </ol>
        </article>
        <article class="surface">
          <h3>Technical skills</h3>
          <div class="skill-cloud">
            <span v-for="skill in skills" :key="skill">{{ skill }}</span>
          </div>
        </article>
      </div>
    </section>
  </main>
  <SiteFooter />
</template>
