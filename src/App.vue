<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
    metaInfo: {
        title: 'Login',
        titleTemplate: '%s | Admin Ecommerce'
    }
}
</script>

<style lang="scss">
  @import './assets/styles/variables';
  @import './assets/styles/bootstrap';
  @import './assets/styles/global';
</style>
