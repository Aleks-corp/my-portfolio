<script setup lang="ts">
import IconMail from '../components/icons/IconMailTo.vue'
</script>

<template>
  <section class="hero">
    <div class="hero__container">
      <div class="hero__bg"></div>
      <div class="hero__text__container">
        <h1 class="hidden">Portfolio</h1>
        <h2 class="hero__text">Hello World</h2>
        <h2 class="hero__text">I'm <span class="hero__text--accent">Oleksandr Haran</span>.</h2>
        <h2 class="hero__text--accent accentGradient">{{`<FullStack web developer />`}}</h2>
      </div>
      <div class="hero__img__container">
        <img class="hero__img" src="../assets/my-photo.jpg" width="275" />
        <div class="background__image__blue"></div>
        <div class="background__image__green"></div>
      </div>
      <div class="social__container">
        <IconMail /><IconMail /><IconMail />
        <div class="social__line"></div>
      </div>
    </div>
  </section>
  <section class="about">
    <div class="about__container"><h2>ABOUT</h2></div>
  </section>
</template>

<style>
.hero__bg {
  position: absolute;
  left: -60px;
  bottom: -200px;
  width: 100%;
  height: 100%;
  background-image: url(../assets/objects.png);
  background-repeat: no-repeat;
  object-fit: cover;
  overflow: hidden;
}
.hero__text {
  font-size: 54px;
  font-weight: 300;
}
.hero__text--accent {
  font-size: 54px;
  font-weight: 600;
}
.hero__container {
  position: relative;
  max-width: 1280px;
  margin: 0 auto;
  padding: 85px 60px 101px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  overflow: hidden;
}
.hero__text__container {
  margin-top: 85px;
  margin-bottom: 40px;
}
.hero__img__container {
  position: relative;
  width: 275px;
  border-radius: 137px 15px;
  margin-right: 80px;
}
.hero__img {
  width: 275px;
  object-fit: cover;
  overflow: hidden;
  border-radius: 137px 15px;
}

.background__image__blue,
.background__image__green {
  position: absolute;
  z-index: -1;
  filter: blur(58.5px);
  border-radius: 395px;
  animation-duration: 3s;
  animation-direction: alternate;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}
.background__image__blue {
  animation-name: animation-blue;
  background-color: rgba(96, 143, 234, 0.6);
  top: 55px;
  right: 0;
  transform: rotate(45deg);
}
.background__image__green {
  animation-name: animation-green;
  background-color: rgba(66, 184, 131, 0.6);
  bottom: 55px;
  left: 0px;
  transform: rotate(-30deg);
}

@keyframes animation-blue {
  from {
    width: 262px;
    height: 315px;
  }
  to {
    width: 328px;
    height: 394px;
  }
}
@keyframes animation-green {
  from {
    width: 328px;
    height: 394px;
  }
  to {
    width: 262px;
    height: 315px;
  }
}
.social__container {
  position: absolute;
  bottom: 0;
  left: 10px;
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 30px;
}
.social__line {
  width: 2px;
  height: 62px;
  background: linear-gradient(180deg, #41d392 9.95%, #54b2bd 51.55%, #6287f3 87.59%);
}

.about {
  height: 200px;
  background: #353f3b;
}
.about__container {
  display: flex;
  justify-content: center;
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 50px;
}

@media (min-width: 1024px) {
  .hero__container {
    justify-content: space-between;
  }
  .hero__text__container {
    width: 530px;
    margin-bottom: 0;
  }
}
@media (min-width: 1280px) {
  .hero__text__container {
    width: 750px;
  }
}
</style>
