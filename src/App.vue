<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import IconMail from './components/icons/IconMailTo.vue'
import Menu from './components/icons/IconMenu.vue'
import CloseMenu from './components/icons/IconCloseMenu.vue'
import { onUnmounted, reactive } from 'vue'
import { onMounted } from 'vue'
let state = reactive({
  seen: false,
  windowWidth: window.innerWidth
})
function onResize() {
  state.windowWidth = window.innerWidth
}
onMounted(() => {
  window.addEventListener('resize', onResize)
})
onUnmounted(() => {
  window.removeEventListener('resize', onResize)
})
</script>

<template>
  <header class="header">
    <p class="header__logo accent">My Portfolio</p>
    <nav>
      <button @click="state.seen = !state.seen" v-if="state.windowWidth < 768">
        <div v-if="state.seen"><CloseMenu /></div>
        <div v-else><Menu /></div>
      </button>
      <Transition>
        <div class="header__nav" v-if="state.seen || state.windowWidth > 767">
          <RouterLink to="/" @click="state.seen = !state.seen">Home</RouterLink>
          <RouterLink to="/about" @click="state.seen = !state.seen">About</RouterLink>
          <RouterLink to="/projects" @click="state.seen = !state.seen">My projects</RouterLink>
          <RouterLink to="/contacts" @click="state.seen = !state.seen">Contacts</RouterLink>
        </div>
      </Transition>
    </nav>
    <div class="header__mail">
      <IconMail />
      <a href="mailto:aleks.haran.dev@gmail.com">aleks.haran.dev@gmail.com</a>
    </div>
  </header>
  <main>
    <RouterView />
  </main>
</template>

<style scoped>
.header {
  position: relative;
  display: flex;
  justify-content: space-between;
  align-items: center;
  line-height: 1.5;
  height: 50px;
  width: 100%;
}

.header__nav {
  position: absolute;
  top: 50px;
  right: 50px;
  border-radius: 10px;
  padding: 20px 60px;
  background-color: var(--color-background);
}
.header__nav a {
  display: block;
  padding: 20px 0;
}

.header__nav a.router-link-exact-active {
  color: var(--color-text);
}
.header__nav a.router-link-exact-active:hover {
  background-color: transparent;
}

.header__mail {
  display: none;
}
.header__logo {
  width: 220px;
  font-size: 24px;
  font-weight: 600;
}
.v-enter-active,
.v-leave-active {
  transition: opacity 0.5s ease;
}

.v-enter-from,
.v-leave-to {
  opacity: 0;
}
@media (min-width: 768px) {
  .header__nav {
    position: static;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    padding: 0;
  }
  .header__nav a {
    display: inline-block;
    padding: 0 1rem;
    border-left: 1px solid var(--color-border);
  }
  .header__nav a:first-of-type {
    border: 0;
  }
}

@media (min-width: 1024px) {
  .header__mail {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 220px;
  }
}
</style>
