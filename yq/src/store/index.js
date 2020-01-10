import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    Riqidate:{},
    uname:"",
  },
  mutations: {
    getRiqidate(state,Riqidate){
      state.Riqidate=Riqidate
    },
    getName(state,uname){
      state.uname=uname;
    }
  },
  actions: {

  },
  modules: {
    
  }
})
