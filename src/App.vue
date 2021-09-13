<template>
  <div class="app">

    <!-- ヘッダー -->
    <header>
      <HeaderMenu />
      <!-- <HambMenu /> -->
    </header>

    <!-- メイン部分 -->
    <router-view/>

    <!-- フッター -->
    <footer>
      <FooterIcons />
      <p>&copy; 2021 Taichi Morimoto All Rights Reserved.</p>
    </footer>

  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import HeaderMenu from '@/components/HeaderMenu.vue'
// import HambMenu from '@/components/HambMenu.vue'
import FooterIcons from '@/components/FooterIcons.vue'

export default defineComponent({
  components: {
    HeaderMenu,
    // HambMenu,
    FooterIcons
  }
})
</script>


<style lang="sass">
.app
  font-family: "Squada One",sans-serif
  -webkit-font-smoothing: antialiased
  -moz-osx-font-smoothing: grayscale
  text-align: center
  background-color: #222

  a 
    text-decoration: none
    color: #ddd

  li 
    list-style-type: none
  
  header
    position: fixed
    top: 0
    width: 100%
    z-index: 1
    background-color: rgba(0, 0, 0, 0)
  
  footer
    color: #daf6ff

    p
      margin: 0
      padding: 10px

</style>
