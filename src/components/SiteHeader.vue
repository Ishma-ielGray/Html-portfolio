<script setup>
import { ref } from "vue";
import { useRoute } from "vue-router";
const route = useRoute(),
  isLight = ref(document.documentElement.dataset.theme === "light");
const links = [
  { label: "Home", path: "/" },
  { label: "About", path: "/about" },
  { label: "Skills", path: "/skills" },
  { label: "Projects", path: "/work" },
  { label: "Contact", path: "/contact" },
];
function toggleTheme() {
  isLight.value = !isLight.value;
  if (isLight.value) document.documentElement.dataset.theme = "light";
  else delete document.documentElement.dataset.theme;
}
</script>
<template>
  <header class="site-header">
    <nav class="site-nav page-shell" aria-label="Main navigation">
      <RouterLink class="brand" to="/" aria-label="Ishma-iel Gray home"
        ><span class="brand-mark">IG</span></RouterLink
      >
      <div class="nav-actions">
        <ul class="nav-links">
          <li v-for="link in links" :key="link.label">
            <RouterLink
              :to="{ path: link.path, hash: link.hash || '' }"
              :class="{
                active:
                  route.path === link.path &&
                  (link.hash ? route.hash === link.hash : !route.hash),
              }"
              >{{ link.label }}</RouterLink
            >
          </li>
        </ul>
        <button
          class="theme-toggle"
          type="button"
          :aria-label="
            isLight ? 'Switch to dark theme' : 'Switch to light theme'
          "
          @click="toggleTheme"
        >
          <svg v-if="!isLight" viewBox="0 0 24 24">
            <path
              d="M20.2 15.3A8.5 8.5 0 0 1 8.7 3.8 8.6 8.6 0 1 0 20.2 15.3Z"
            /></svg
          ><svg v-else viewBox="0 0 24 24">
            <circle cx="12" cy="12" r="4" />
            <path d="M12 2v2m0 16v2M2 12h2m16 0h2" />
          </svg>
        </button>
      </div>
    </nav>
  </header>
</template>
