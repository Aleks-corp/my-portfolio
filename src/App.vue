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
nav {
  font-size: 1rem;

  padding: 1rem 0;
  margin-top: 1rem;
  display: flex;
  justify-content: center;
  gap: 10px;
}
nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}
nav a:first-of-type {
  border: 0;
}
.logo {
  display: block;
  margin: 0 auto 2rem;
}
</style>
