import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Meta from 'vue-meta'

Vue.config.productionTip = false

import '@fortawesome/fontawesome-free/css/all.css'
import '@fortawesome/fontawesome-free/js/all.js'

import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.use(Meta)



import VueApexCharts from 'vue-apexcharts'
Vue.use(VueApexCharts)

Vue.component('apexchart', VueApexCharts)

import TopBar from '../src/components/TopBar'
Vue.component('top-bar', TopBar)

import BreadCrumb from '../src/components/BreadCrumb'
Vue.component('bread-crumb', BreadCrumb)



new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
