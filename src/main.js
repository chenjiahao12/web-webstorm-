// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import 'element-ui/lib/theme-chalk/index.css'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'//引入
import VueAxios from 'vue-axios'
import axios from '@/api/http'

Vue.use(ElementUI)
Vue.use(VueAxios, axios)
Vue.config.productionTip = false

/* eslint-disable no-new */
window.vm = new Vue({
  el: '#app',
  router,

  components: { App },
  template: '<App/>',
  data: {
    //自定义的事件总线对象，用于父子组件的通信
    Bus: new Vue()
  }
})
