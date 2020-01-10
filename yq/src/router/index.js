import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Test from '../views/Test.vue'
import Shoucang from '../views/Shoucang'
import Xiaoxi from '../views/Xiaoxi'
import Tabbar from '../views/Tabbar'
import date from '../date/date.vue'
import Login from '../views/Login.vue'
import Me from '../views/Me.vue'
import Product from '../views/Product.vue'
import Find from '../views/Find.vue'
import xq from '../views/xq.vue'
import Reg from '../views/Reg.vue'
// import Register from '../views/Register.vue'
import Testcopy from '../views/Testcopy.vue'
import Findxq from '../views/Findxq.vue'
import Tijiao from '../views/Tijiao.vue'
import myorder from '../views/myorder.vue'
import admin from '../views/admin.vue'
import Evaluation from '../views/Evaluation.vue'
import Write from '../views/Write.vue'
import adminuser from '../views/adminuser.vue'
import WriteFind from '../views/WriteFind.vue'
Vue.use(VueRouter)

const routes = [
  {
    path:'/WriteFind',
    name:'WriteFind',
    component:WriteFind
  },
  {
    path:'/adminuser',
    name:'adminuser',
    component:adminuser
  },
  {
    path:'/Write',
    name:'Write',
    component:Write
  },
  {
    path:'/Evaluation',
    name:'Evaluation',
    component:Evaluation
  },
  {
    path:'/admin',
    name:'admin',
    component:admin
  },
  {
    path:'/myorder',
    name:'myorder',
    component:myorder
  },
  {
    path:'/Tijiao',
    name:'Tijiao',
    component:Tijiao
  },
  {
    path:'/Findxq',
    name:'Findxq',
    component:Findxq
  },
  {
    path:'/Testcopy',
    name:'Testcopy',
    component:Testcopy
  },
  {
    path:'/Reg',
    name:'Reg',
    component:Reg
  },
  {
    path:'/xq',
    name:'xq',
    component:xq
  },
  {
    path:'/Find',
    name:'Find',
    component:Find
  },
  {
    path:'/Product',
    name:'Product',
    component:Product
  },
  {
    path:'/Me',
    name:'Me',
    component:Me
  },
  {
    path:'/Login',
    name:'Login',
    component:Login
  },
  {
    path:'/date',
    name:'date',
    component:date
  },
  {
    path:'/Tabbar',
    name:'Tabbar',
    component:Tabbar
  },
  {
    path:'/Xiaoxi',
    name:'Xiaoxi',
    component:Xiaoxi
  },
  {
    path:'/Shoucang',
    name:'Shoucang',
    component:Shoucang
  },
  {
    path:'/Test',
    name:'Test',
    component: Test
  },
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
