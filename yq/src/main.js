import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);
import axios from "axios";

import BaiduMap from 'vue-baidu-map';
import {BmlMarkerClusterer} from 'vue-baidu-map'
Vue.component('bml-marker-cluster', BmlMarkerClusterer)
 
Vue.use(BaiduMap, {
  ak: '5lV1aARLRMMv3AwABNWaH3UT19ydWCxq'    //这个地方是官方提供的ak密钥
})
axios.defaults.baseURL="http://localhost:5050";
Vue.config.productionTip = false;
axios.defaults.withCredentials=true;
Vue.prototype.axios = axios;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app');