<template>
  <div class="header-menu">
    <router-link to="/" class="menu-btn">Top</router-link>
    <router-link to="/about" class="menu-btn">About</router-link>
    <router-link to="/research" class="menu-btn">Reseach</router-link>
    <router-link to="/skill" class="menu-btn">Skill</router-link>
    <router-link to="/work" class="menu-btn">Works</router-link>
  </div>
</template>

<style lang="sass" scoped>
.header-menu
  padding: 15px

  .menu-btn
    margin: 0px 10px
    font-weight: bold
    font-size: 20px
    color: #daf6ff

    &:hover
      color: rgba(256, 256, 256, 1)
</style>