<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <nav>
      <RouterLink to="/">Home</RouterLink>
      <RouterLink to="/about">About</RouterLink>
      <RouterLink to="/projects">My projects</RouterLink>
      <RouterLink to="/contacts">Contacts</RouterLink>
    </nav>
  </header>
  <main>
    <RouterView />
  </main>
</template>

<style scoped>
header {
  line-height: 1.5;
  height: 50px;
  width: 100%;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}
</style>
