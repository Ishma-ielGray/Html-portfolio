<script setup>
import { RouterView } from "vue-router";
import NetworkBackground from "./components/NetworkBackground.vue";
</script>
<template>
  <NetworkBackground />
  <div class="site-shell"><RouterView /></div>
</template>
