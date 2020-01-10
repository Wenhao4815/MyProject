<template>
  <div>
    <div class="pinglunhead">
      <img @click="Djump" src="../assets/left2.png" alt="">
      <span>评论</span>
    </div>
    <div class="pingjiazhong">
      <img :src="'http://127.0.0.1:5050/'+this.$route.query.pic" alt="">
      <div>{{this.$route.query.title}}</div>
      <van-rate class="xingxing" gutter="10px" size="40px" v-model="value" />
      <textarea v-model="context" placeholder="说说哪里好嘛，其他顾客想知道" cols="4" rows="1"></textarea>
    </div>
    <button class="tijiaopingjia" @click="ESubmit">提交评价</button>
  </div>
</template>
<script>
import {getTest} from '../apis/Test'
export default {
  data() {
    return {
      value: 0,
      context:"",
      pid:0,
   };
  },
  created(){
    this.pid=this.$route.query.pid;
    var pic=this.$route.query.pic;
    // console.log(this.$route.query)
  },
  methods:{
    Djump(){
      this.$router.go(-1)
    },
    ESubmit(){
      var url="/Write"
      var uname=this.$store.state.uname;
      var context=this.context;
      var list={uname:uname,pid:this.pid,context:context};
      getTest(url,list).then(data=>{
        // console.log(data)
      })
      this.$router.push("/myorder");
      this.$toast("提交成功");
    }
  }
}
</script>
<style scoped>
/* head */
.pinglunhead img{
  width: 7%;
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
  height: 45px;
  /* height: 30px; */
  border-bottom: 1px solid rgba(128, 128, 128, 0.342);
}
/* head */
.pingjiazhong{
  width: 90%;
  margin-left: 5%;
  position: relative;
  margin-top: 8%;
  height: 300px;
  box-shadow: 0px 0px 5px 1px rgba(152,152,152,0.5);
}
.pingjiazhong img{
  position: absolute;
  left: 5%;top: 5%;
  width: 20%;
  border-radius: 5px;
}
.pingjiazhong div{
  position: absolute;
  left: 100px;top: 8%;
  font-size: 15px;
  font-weight: 600;
  white-space:nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
.pingjiazhong .xingxing{
  position: absolute;
  left: 50px;top: 85px;
}
.pingjiazhong textarea{
  position: absolute;
  top: 150px;
  margin-left: 5%;
  width: 90%;
  height: 120px;
  resize:none;
  background: #f7f8fa;
  border: 0px;
  border-radius: 5px;
  color: gray;
  padding:10px;  
  box-sizing:border-box;
}
.tijiaopingjia{
  margin-top: 55%;
  width: 90%;
  margin-left: 5%;
  border: 0px;
  height: 50px;
  border-radius: 5px;
  color: gray;
  background: #adadad93;
}
</style>