<script setup>
import SiteHeader from "../components/SiteHeader.vue";
import SiteFooter from "../components/SiteFooter.vue";
const faqs = [
  {
    question: "What's your typical project timeline?",
    answer:
      "It depends on the scope, but most small to medium projects take 2-6 weeks. I give a realistic timeline after we discuss the details.",
  },
  {
    question: "Do you work on existing projects?",
    answer:
      "Absolutely. I can help with fixes, updates, and new features, and I am comfortable working with an existing codebase.",
  },
  {
    question: "Can you help with design too?",
    answer:
      "I can handle layout and basic design work, and I am happy to collaborate with a dedicated designer on larger projects.",
  },
];
</script>
<template>
  <SiteHeader />
  <main class="page-shell inner-page">
    <section class="contact-heading">
      <div>
        <p class="eyebrow">Contact</p>
        <h1>Let's build something<br /><span>worth talking about.</span></h1>
        <p class="section-copy">
          Have a project in mind, want to collaborate, or just want to say
          hello? Send me a message.
        </p>
      </div>
      <a class="contact-email" href="mailto:ishmaeelgray7@gmail.com"
        ><span>Email me</span><strong>ishmaeelgray7@gmail.com</strong
        ><span>&#8599;</span></a
      >
    </section>
    <section class="contact-layout">
      <div class="contact-panel">
        <p class="eyebrow">Send a message</p>
        <h2>Tell me about it.</h2>
        <form
          class="contact-form"
          action="https://formspree.io/f/xvzyevbq"
          method="POST"
        >
          <label for="name">Your name</label
          ><input
            id="name"
            type="text"
            name="name"
            placeholder="Jane Smith"
            required
          /><label for="email">Email address</label
          ><input
            id="email"
            type="email"
            name="email"
            placeholder="jane@example.com"
            required
          /><label for="subject">Subject</label
          ><input
            id="subject"
            type="text"
            name="subject"
            placeholder="What would you like to build?"
            required
          /><label for="message">Message</label
          ><textarea
            id="message"
            name="message"
            rows="5"
            placeholder="A few details about your project..."
            required
          ></textarea
          ><button class="primary-button" type="submit">
            Send message <span>&#8599;</span>
          </button>
        </form>
      </div>
      <aside class="contact-aside">
        <div class="contact-panel">
          <p class="eyebrow">Find me online</p>
          <h2>Elsewhere on the web.</h2>
          <div class="online-links">
            <a
              href="https://github.com/Ishma-ielGray"
              target="_blank"
              rel="noreferrer"
              ><span>GitHub</span><b>&#8599;</b></a
            ><a
              href="https://www.linkedin.com/in/ishma-iel-gray/"
              target="_blank"
              rel="noreferrer"
              ><span>LinkedIn</span><b>&#8599;</b></a
            ><a
              href="https://www.instagram.com/ishmaielgray/"
              target="_blank"
              rel="noreferrer"
              ><span>Instagram</span><b>&#8599;</b></a
            >
          </div>
        </div>
        <div class="contact-panel availability">
          <span class="availability-dot"></span>
          <div>
            <strong>Available for work</strong>
            <p>I'm currently taking on new projects and collaborations.</p>
          </div>
        </div>
      </aside>
    </section>
    <section class="faq-section">
      <p class="eyebrow">A few answers</p>
      <h2 class="section-title">Common questions.</h2>
      <div class="faq-grid">
        <article v-for="faq in faqs" :key="faq.question">
          <h3>{{ faq.question }}</h3>
          <p>{{ faq.answer }}</p>
        </article>
      </div>
    </section>
  </main>
  <SiteFooter />
</template>
