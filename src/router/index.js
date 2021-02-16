import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Produtos from '../views/Produtos.vue'
import Cupons from '../views/Cupons.vue'
import Banners from '../views/Banners.vue'
import Vagas from '../views/Vagas.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/produtos',
    name: 'Produtos',
    component: Produtos
  },
  {
    path: '/cupons',
    name: 'Cupons',
    component: Cupons
  },
  {
    path: '/banners',
    name: 'Banners',
    component: Banners
  },
  {
    path: '/vagas',
    name: 'Vagas',
    component: Vagas
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
