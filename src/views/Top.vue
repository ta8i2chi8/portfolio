<template>
  <div class="top">
    <div class="bluelight">
      <h1>Taichi's Portfolio</h1>
      <p>Click on the top to see the details.</p>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'Top',
  components: {
  },
});
</script>

<style lang="sass" scoped>
.top
  position: relative
  height: 100vh
  background-color: #222
  color: #daf6ff

  .bluelight 
    position: absolute
    left: 50%
    top: 50%
    transform: translate(-50%, -50%)

    h1
      font-size: 50px
      font-weight: bold
      text-align: center
      vertical-align: middle
      border-radius: 50%
      transition: background 1s, border-width 0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000), text-shadow 0.5s
      color: #daf6ff
      text-shadow: 0 0 20px rgba(10, 175, 230, 1),  0 0 20px rgba(10, 175, 230, 0)
      box-shadow: 0 0 0 rgba(10, 175, 230, 0),  inset 0 0 0 rgba(10, 175, 230, 0)
      background-image: radial-gradient(center, ellipse farthest-corner, rgba(10, 175, 230, 0) 0%, rgba(10, 175, 230, 0) 90%)
      border: 0 dotted rgba(10, 175, 230, 0.0)

      &:hover 
        color: #fff
        text-shadow: 0 0 50px rgba(10, 175, 230, 1),  0 0 50px rgba(10, 175, 230, 1)
        background-image: radial-gradient(center, ellipse farthest-corner, rgba(10, 175, 230, 0.3) 0%, rgba(10, 175, 230, 0) 60%)
    
    &:before, &:after, h1:before, h1:after 
        transition: 0.2s ease-in-out
        content: ""
        display: block
        position: absolute
        border-radius: 50%
        border: 60px dashed transparent
        left: 50%
        top: 50%
        transform : translate(-50%,-50%)
    
    &:before 
        animation: rotate 20s linear 0s infinite
        width: 180%
        height: 180%
        border: 3px dotted rgba(10, 175, 230, 0)
        z-index: -1
    
    &:after 
        animation: rotate 10s linear 0s infinite reverse
        border: 80px dashed rgba(10, 175, 230, 0)
        width: 160%
        height: 160%
        z-index: -2
    
    h1
      &:before 
        animation: rotate 5s ease-in-out 0s infinite alternate
        width: 120%
        height: 120%
        border: 50px dashed rgba(10, 175, 230, 0)
      
      &:after 
        animation: rotate 5s linear 0s infinite
        border: 18px dashed rgba(10, 175, 230, 0)
        width: 120%
        height: 120%
    
    &:hover 
      &:before 
        border-color: rgba(10, 175, 230, 0.3)
      
      &:after 
        border-color: rgba(10, 175, 230, 0.1)
      
      h1
        &:before 
          border-color: rgba(10, 175, 230, 0.3)
          
        &:after
          border-color: rgba(10, 175, 230, 0.3)
  
  @keyframes rotate 
    0% 
      transform: translate(-50%,-50%) rotate(0deg)
    100% 
      transform: translate(-50%,-50%) rotate(360deg)
</style>