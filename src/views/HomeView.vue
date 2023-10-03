<script setup lang="ts"></script>

<template>
  <div class="homepage">
    <h1 class="hidden">Portfolio</h1>
    <h2 class="homepage__text">Hello World</h2>
    <h2 class="homepage__text">I'm <span class="homepage__text--accent">Oleksandr Haran</span>.</h2>
    <h2 class="homepage__text--accent accent">{{`<FullStack web developer />`}}</h2>
  </div>
</template>

<style>
.homepage__text {
  font-size: 54px;
  font-weight: 300;
}
.homepage__text--accent {
  font-size: 54px;
  font-weight: 600;
}
.homepage {
  margin: 30px auto;
}
@media (min-width: 1024px) {
  .homepage {
    min-height: 100vh;
    align-items: center;
  }
}
</style>
