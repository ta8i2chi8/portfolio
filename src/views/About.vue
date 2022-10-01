<template>
  <div class="about">
    <div class="aboutme">
      <div class="aboutme-left">
        <h1>About me</h1>
        <img src="../assets/img/about/aboutMe.png" alt="">
      </div>
      <ul>
        <li v-for="aboutMeContent in aboutMe" :key="aboutMeContent.id">
          <span>{{ aboutMeContent.title }}</span>{{ aboutMeContent.context }}
        </li>
      </ul>
    </div>
    <div class="detail" v-html="detail">
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

type AboutMeContent = {
  id: number;
  title: string;
  context: string;
};

type DataType = {
  aboutMe: AboutMeContent[];
  detail: string;
};

export default defineComponent({
  data(): DataType {
    return {
      aboutMe: [
        {
          id: 1,
          title: '名前',
          context: '　　森本 汰一'
        },
        {
          id: 2,
          title: '所属',
          context: '　　千葉大学大学院 電気電子工学コース 修士2年'
        },
        {
          id: 3,
          title: '保有資格',
          context: '応用情報、統計検定２級'
        },
        {
          id: 4,
          title: '趣味',
          context: '　　旅行，スノボ　（最近行けてないです、、）',         
        },
        {
          id: 5,
          title: 'メール',
          context: '　taichi0828*chiba-u.jp (*を@に変えてください)',    
        },
      ],
      detail: `千葉県出身の大学院生。千葉大学の電気電子工学コースを卒業し、現在同大学院に在籍中。</br>
      大学院では、深層ニューラルネットワークの自動アーキテクチャ設計の研究をしております。</br>
      またベンチャー企業にて、Flutterを用いたアプリ開発・データエンジニアリングに携わっております。
      `
    }
  }
})
</script>

<style lang="sass" scoped>
.about
  position: relative
  height: 100vh
  background-color: #222
  color: #ddd
  overflow: hidden

  .aboutme
    margin: 120px auto 60px
    display: flex
    justify-content: center

    .aboutme-left

      img
        width: 250px
        height: 250px
        border-radius: 50%

    ul 
      margin-top: 0px

      li
        position: relative
        padding: 30px
        text-align: left
        font-size: 20px
        font-weight: bold

        &:before
          content: ''
          position: absolute
          left: 0
          bottom: 0
          border-bottom: solid 2px #ddd
          animation: border_anim 2s ease forwards

          @keyframes border_anim
            0%
              width: 0%
            100%
              width: 100%

        span
          padding-right: 70px
  
  .detail
    width: 60%
    margin: 0 auto
    text-align: left
</style>