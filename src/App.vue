<template>
    <div class="container-fluid" id="app">
        <div class="row">
            <div class="col-auto">
                <side-bar></side-bar>
            </div>
            <div class="col">
                <router-view></router-view>
            </div>
        </div>
    </div>
</template>

<script>
import SideBar from '../src/components/SideBar'

export default {
    metaInfo: {
        title: 'Login',
        titleTemplate: '%s | Admin Ecommerce'
    },

    components: {
        SideBar
    },

}
</script>

<style lang="scss">
  @import './assets/styles/variables';
  @import './assets/styles/bootstrap';
  @import './assets/styles/global';
</style>
