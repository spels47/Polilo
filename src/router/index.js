import Vue from 'vue'
import Router from 'vue-router'
import Valg from '@/components/Valg'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Valg',
      component: Valg
    }
  ]
})
