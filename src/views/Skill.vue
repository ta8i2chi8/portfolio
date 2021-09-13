<template>
  <div class="skill">
    <div class="skill-wrapper">
      <h1>Languages</h1>
      <ul class="langs">
        <li class="card" v-for="lang in skills.langs" :key="lang.id">
          <img :src="lang.imgPath" alt="">
          <p>{{ lang.name }}</p>
        </li>
      </ul>

      <h1>Frameworks and others</h1>
      <ul class="frameworks">
        <li class="card" v-for="framework in skills.frameworks" :key="framework.id">
          <img :src="framework.imgPath" alt="">
          <p>{{ framework.name }}</p>
        </li>
      </ul>

      <!-- <h2>Others</h2>
      <ul class="others">
        <li class="card" v-for="other in skills.others" :key="other.id">
          <img :src="other.imgPath" alt="">
          <p>{{ other.name }}</p>
        </li>
      </ul> -->
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

type SkillContent = {
  id: number;
  imgPath: string,
  name: string;
};

type DataType = {
  skills: {
    langs: SkillContent[];
    frameworks: SkillContent[];
    // others: SkillContent[];
  };
};

export default defineComponent({
  data(): DataType {
    return {
      skills: {
        langs: [
          {
            id: 1,
            imgPath: '/img/skill/html-5.svg',
            name: 'HTML',
          },
          {
            id: 2,
            imgPath: '/img/skill/css-3.svg',
            name: 'CSS',
          },
          {
            id: 3,
            imgPath: '/img/skill/javascript.svg',
            name: 'JavaScript',
          },
          {
            id: 4,
            imgPath: '/img/skill/typescript.svg',
            name: 'TypeScript',
          },
          {
            id: 5,
            imgPath: '/img/skill/python.svg',
            name: 'Python',
          },
          {
            id: 6,
            imgPath: '/img/skill/C++.svg',
            name: 'C++',
          },
          {
            id: 7,
            imgPath: '/img/skill/golang.svg',
            name: 'Golang',
          },
          {
            id: 8,
            imgPath: '/img/skill/dart.svg',
            name: 'Dart',
          },
          {
            id: 9,
            imgPath: '/img/skill/mysql.svg',
            name: 'MySQL',
          },
        ],
        frameworks: [
          {
            id: 1,
            imgPath: '/img/skill/vue.svg',
            name: 'Vue.js',
          },
          {
            id: 2,
            imgPath: '/img/skill/pytorch.svg',
            name: 'Pytorch',
          },
          {
            id: 3,
            imgPath: '/img/skill/flutter.svg',
            name: 'Flutter',
          },
          {
            id: 4,
            imgPath: '/img/skill/git.svg',
            name: 'Git',
          },
          {
            id: 5,
            imgPath: '/img/skill/docker.svg',
            name: 'Docker',
          },
        ],
      }
    }
  }
})
</script>


<style lang="sass" scoped>
.skill
  position: relative
  height: 100vh
  background-color: #222
  color: #ddd
  overflow: hidden

  .skill-wrapper
    margin-top: 120px

    h2
      margin: 10px 0

    .langs, .frameworks, .others
      display: flex
      justify-content: center
      margin: 0
      padding: 0
    
    .card
      margin: 20px

      img
        width: 60px
        height: 60px
</style>