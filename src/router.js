import { createRouter, createWebHistory } from "vue-router";
import HomePage from "./pages/HomePage.vue";
import ProjectsPage from "./pages/ProjectsPage.vue";
import AboutPage from "./pages/AboutPage.vue";
import SkillsPage from "./pages/SkillsPage.vue";
import ContactPage from "./pages/ContactPage.vue";
export default createRouter({
  history: createWebHistory(),
  routes: [
    { path: "/", component: HomePage },
    { path: "/work", component: ProjectsPage },
    { path: "/about", component: AboutPage },
    { path: "/skills", component: SkillsPage },
    { path: "/contact", component: ContactPage },
  ],
  scrollBehavior(to) {
    return to.hash
      ? { el: to.hash, behavior: "smooth" }
      : { top: 0, behavior: "smooth" };
  },
});
