<template>
    <div>
        <div style="margin-top:100px;margin-left:100px">
            <van-uploader v-model="fileList" multiple :max-count="2"/>
            <van-button @click="tijiao">提交</van-button>
        </div>
    </div>
</template>
<script>
// import {getTest} from '../apis/Test'
export default {
    data() {
    return {
      fileList: []
    }
  },
  methods:{
      tijiao(){
          console.log(this.fileList[0].file.name)
      }
  }
    // data(){
    //     return{
    //         // list:{}
    //     }
    // },
    // created(){
    //     var url="/xqdet"
    //     var uname="shan123";
    //     var pid=1;
    //     var list={uname:uname,pid:pid}
    //     getTest(url,list).then(data=>{
    //         console.log(data)
    //     })
    //     // getHome().then(data=>{
    //     //     // console.log(data);
    //     //     var addXimg=data.slice(0,5)
    //     //     // console.log(addXimg)
    //     //     this.xiaotubiao=addXimg;
    //     //     var addXimg2=data.slice(5,10)
    //     //     this.xiaotubiao2=addXimg2;
    //     //   });
    // }
}
</script>