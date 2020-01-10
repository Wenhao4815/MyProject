<template>
  <div class="taitou">
    <div class="pinglunhead">
      <img class="headimg" src="../assets/left2.png" @click="Jump" alt="">
      <span>评论</span>
    </div>
    <div class="zongpingfen">
      <img src="../assets/logo/logo.png" alt="">
      <div>
        <span>4.8</span>分&nbsp;超赞
      </div>
    </div>
    <div class="pingjiahead">{{addd}}条评价</div>
    <div class="pinglunneirong"  v-for="(item,i) of list" :key="i">
      <img src="../assets/logo/logo.png" alt="">
      <div class="yonghuming">{{item.uname}}</div>
      <div class="riqiii">2019年12月发表</div>
      <pre class="neirong">  {{item.context}}</pre>
    </div>
  </div>
</template>
<script>
import {getTest} from '../apis/Test'
export default {
  data(){
    return{
      list:[],
      addd:[]
    }
  },
  methods:{
    Jump(){
      this.$router.push("/Product")
    }
  },
  created(){
    var url="/Evaluation";
    var pid=this.$route.query.pid;
    // console.log(pid)
    var list={pid:pid}
    getTest(url,list).then(data=>{
        this.list=data.reverse();
        var add=Object.keys(data).length
       this.addd=add;
    })
  }
}
</script>
<style scoped>
/* head */
.pinglunhead img{
  width: 5%;
  margin-top: 7px;
  margin-left: 7px;
  float: left;
}
.pinglunhead span{
  float: left;
  margin-left: 40%;
  font-weight: 600;
  font-size: 18px;
  line-height: 45px;
}
.pinglunhead{
  height: 50px;
  /* height: 30px; */
  border-bottom: 1px solid rgba(128, 128, 128, 0.342);
}
/* head */
.zongpingfen{
  width: 90%;
  padding-top: 20px;
  padding-bottom: 10px;
  margin-left: 5%;
  position: relative;
  box-shadow: 0px 0px 5px 1px rgba(152,152,152,0.5);
  height: 80px;
  border-radius: 10px;
  margin-top: 5%;
}
.zongpingfen img{
  width: 18%;position: absolute;
  left: 5%;top: 26.5px;
}
.zongpingfen div{
  position: absolute;
  left: 28%;top:39px;
  font-size: 17px;
  /* font-weight: 500; */
}
.zongpingfen span{
  font-size: 38px;
}
.pingjiahead{
  width: 90%;
  margin-left: 5%;
  height: 60px;
  line-height: 60px;
  font-size: 20px;
  font-weight: 600;
}
.pinglunneirong{
  position: relative;
  width: 90%;
  margin-left: 5%;
  height: 200px;
  /* box-shadow: 0px 0px 5px 1px rgba(152,152,152,0.5); */
  border-radius: 10px;
  border: 1px solid rgba(128, 128, 128, 0.342);
  margin-bottom: 30px;
}
.pinglunneirong img{
  width: 13%;
  position: absolute;
  left: 5%;top: 10px;

}
.pinglunneirong .yonghuming{
  position: absolute;
  top: 10px;left: 70px;
}
.pinglunneirong .riqiii{
  position: absolute;
  top: 35px;left: 70px;
  font-size: 14px;
  color: gray;
}
.pinglunneirong .neirong{
  position: absolute;
  top: 70px;
  width: 90%;margin-left: 5%;
  white-space:pre-wrap; /* css3.0 */ 
  white-space:-moz-pre-wrap; /* Firefox */ 
  white-space:-pre-wrap; /* Opera 4-6 */ 
  white-space:-o-pre-wrap; /* Opera 7 */ 
  word-wrap:break-word; /* Internet Explorer 5.5+ */ 
  line-height:2;
  background-color: #f7f8fa;
  padding-top: 10px;
  border-radius: 5px;
  height: 90px;
  font-size: 14px;
  font-weight: 600;
}
</style>