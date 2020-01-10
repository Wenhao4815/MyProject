import Vue from 'vue'

Vue.filter("Searchfilter",function(SearchVal,arr){
    var Arrsearch=[];
    for (let i = 0; 1 < array.length; i++) {
        if(arr[i].title.indexOf(SearchVal)!=-1){
            arr.id.push(Arrsearch)
        }  
    }
    console.log(Arrsearch)        
})