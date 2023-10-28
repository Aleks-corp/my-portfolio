<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
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
    <p class="header__logo accentGradient">Portfolio</p>
    <nav>
      <button @click="state.seen = !state.seen" v-if="state.windowWidth < 768">
        <div v-if="state.seen"><CloseMenu /></div>
        <div v-else><Menu /></div>
      </button>
      <Transition>
        <div class="header__nav" v-if="state.seen || state.windowWidth > 767">
          <RouterLink class="header__nav__link" to="/" @click="state.seen = false">Home</RouterLink>
          <RouterLink class="header__nav__link" to="/about" @click="state.seen = false"
            >About</RouterLink
          >
          <RouterLink class="header__nav__link" to="/projects" @click="state.seen = false"
            >My projects</RouterLink
          >
          <RouterLink class="header__nav__link" to="/contacts" @click="state.seen = false"
            >Contacts</RouterLink
          >
        </div>
      </Transition>
    </nav>
    <Transition>
      <div class="header__cv" v-if="state.seen || state.windowWidth > 767">
        <a
          class="header__cv__link"
          href="https://drive.google.com/file/d/1vydLRrwpNI7HpjYWv8hJvZ1ryWy7Cugx/view?usp=sharing"
          target="_blank"
          >My CV</a
        >
      </div>
    </Transition>
  </header>
  <main>
    <RouterView />
  </main>
</template>

<style scoped>
.header {
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 50px;
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
  z-index: 10;
  border-radius: 10px;
  padding: 20px 60px 60px;
  background-color: var(--color-background);
}
.header__nav__link {
  position: relative;
  display: block;
  margin: 15px 0;
  font-weight: 300;
}

.header__nav a.router-link-exact-active {
  color: var(--color-text-accent);
}
.header__nav a.router-link-exact-active:hover {
  background-color: transparent;
}

.header__cv {
  position: absolute;
  top: 270px;
  right: 135px;
  z-index: 12;
}
.header__logo {
  font-size: 24px;
  font-weight: 600;
}
.header__cv__link {
  color: var(--color-text-accent-fill);
  font-size: 16px;
  font-weight: 600;
  padding: 8px 16px;
  border-radius: 12px;
  box-shadow: 4px 3px 7px 0px rgba(0, 0, 0, 0.25);
  border: 2px solid var(--color-text-accent-fill);
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
  .header__nav__link {
    display: inline-block;
    margin: 0 15px;
  }

  .header__nav__link::after {
    position: absolute;
    width: 0;
    height: 1px;
    background-color: #fff;
    bottom: -5px;
    right: 50%;
    transform: translate(50%);
    content: '';
  }
  .header__nav__link:hover.header__nav__link::after {
    width: calc(100%);
    transition: width 0.3s ease-in-out;
  }
  .header__cv {
    position: static;
  }
}

@media (min-width: 1024px) {
}
</style>
