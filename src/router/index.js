import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Menus from '../views/Menus.vue'
import Produtos from '../views/Produtos.vue'
import Cupons from '../views/cupons/Cupons.vue'
import Banners from '../views/Banners.vue'
import Vagas from '../views/Vagas.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/menus',
    name: 'Menus',
    component: Menus
  },
  {
    path: '/produtos',
    name: 'Produtos',
    component: Produtos
  },
  {
    path: '/banners',
    name: 'Banners',
    component: Banners
  },
  {
    path: '/cupons',
    name: 'Cupons',
    component: Cupons
  },
  {
    path: '/pagamentos',
    name: 'Condições de pagamento',
    component: Cupons
  },
  {
    path: '/vagas',
    name: 'Vagas',
    component: Vagas
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
