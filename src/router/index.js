import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Menus from '../views/Menus.vue'
import Produtos from '../views/Produtos.vue'
import Cupons from '../views/cupons/Cupons.vue'
import Banners from '../views/Banners.vue'

import TrabalheConosco from '../views/trabalhe_conosco/TrabalheConosco'
import Vagas from '../views/trabalhe_conosco/Vagas'
import Setores from '../views/trabalhe_conosco/Setores'
import Beneficios from '../views/trabalhe_conosco/Beneficios'

Vue.use(VueRouter)

const routes = [
  {
    path: '/trabalhe_conosco',
    component: TrabalheConosco,
    children: [
        { path: 'vagas', component: Vagas },
        { path: 'setores', component: Setores },
        { path: 'beneficios', component: Beneficios }
    ]
  },



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
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
