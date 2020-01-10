<template>
<div>
  <div @click="fanhui" class="finddhead">
    <img src="../assets/left2.png" alt="">
    <span>发现民宿</span>
  </div>
    <div class="lunnbo">
            <van-swipe :autoplay="3000" indicator-color="white">
                <van-swipe-item><img class="lunboo" :src="'http://127.0.0.1:5050/'+this.$route.query.pic" alt=""></van-swipe-item>
                <van-swipe-item><img class="lunboo" :src="'http://127.0.0.1:5050/'+this.$route.query.picc" alt=""></van-swipe-item>
                <van-swipe-item><img class="lunboo" :src="'http://127.0.0.1:5050/'+this.$route.query.piccc" alt=""></van-swipe-item>
            </van-swipe>
        </div>
        <pre class="wenzii">
{{this.$route.query.context}}
        </pre>
        <h6 class="zuozhe">{{this.$route.query.uname}} {{this.$route.query.dizhi}}</h6>
        <!-- <div class="pingjia">
          <span>评价</span>
        </div>
        <div class="pinglun">
          <div></div>
        </div> -->
</div>
</template>
<script>
export default {
  data(){
    return{

    }
  },
 created(){
    var url="/Findxq";
    // var title=this.$route.query.title;
    // console.log(this.$route.query)
    // var list={pid:pid}
    // getTest(url,list).then(data=>{
    //     this.list=data.reverse();
    //     var add=Object.keys(data).length
    //    this.addd=add;
    // })
  },
  methods:{
    fanhui(){
      this.$router.go(-1);
    },
  }
}
</script>
<style>
/* head */
.finddhead img{
  width: 7%;
  margin-top: 7px;
  margin-left: 7px;
  float: left;
}
.finddhead span{
  float: left;
  margin-left: 33%;
  font-weight: 600;
  font-size: 18px;
  line-height: 45px;
}
.finddhead{
  height: 45px;
  /* height: 30px; */
  border-bottom: 1px solid rgba(128, 128, 128, 0.342);
}
/* head */
.lunnbo{
  width: 90%;
  margin-left: 5%;
  border-radius: 10px;
  margin-top: 5%;
}
.lunboo{
    width: 100%;
    height: 250px;
    border-radius:10px; 
}
/* 文字 */
.wenzii{
  margin-left: 5%;
  width: 90%;
  white-space: pre-wrap; /*css-3*/ 
  word-wrap: break-word; /*InternetExplorer5.5+*/ 
  font-weight: 300;
  color: black;
  
}
.zuozhe{
  float: right;
  margin-right: 5%;
  font-size: 14px;
  /* font-weight: 300; */
  color: black;
  margin-top: 5px;
  padding: 0px;
  margin-bottom: 15px;
}
.pingjia{
  float: left;
  margin-left: 1%;
  font-weight: 600;
  font-size: 18px;
  /* margin-top: 10%; */
  /* border: 1px solid green; */
  width: 98%;
  height: 40px;
  box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
}
.pingjia span{
  line-height: 40px;
  margin-left: 5%;
}
.pinglun{
  float: left;
  height: 300px;
  margin-left: 1%;
  width: 98%;
  box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
  margin-top: 1px;
}
</style>