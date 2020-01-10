<template>
  <div>
  <van-tabs v-model="actives" color="#253573">
  <van-tab title="收藏">
    <!-- 未收藏小界面 -->
     <div class="sccc"  v-for="(sc,i) of arr" :key="i">
         <img class="hxin"  @click="Delfavorite(i)" src="../assets/heart2.png" alt="">
      <img @click="Chakan(i)" :src="'http://127.0.0.1:5050/'+sc.pic">
      <div @click="Chakan(i)" class="sccctitle">{{sc.title}}</div>
      <div @click="Chakan(i)" class="scccxiangqing"><span>{{sc.grade}}</span> · {{sc.subtitle}}</div>
      <div class="scccpingjia">
        <span>{{sc.llqr}}</span>
        <span>{{sc.pjch}}</span>
        <span>{{sc.kdcw}}</span>
        <span>{{sc.czfd}}</span>
        </div>
    </div>
      <!-- 民宿清单 -->
      <div class="minsuqingdan">民宿清单</div>
      <div class="qingdanlunbo">
        <van-swipe  :autoplay="3000" indicator-color="white" class="a1" >
        <van-swipe-item  v-for="(item,i) of list" :key="i">
          <img :src="'http://127.0.0.1:5050/'+item.pic" alt="">
          <div class="qingdanziti">
          <h4 >{{item.title}}</h4>
          <p>{{item.subtitle}}</p>
          </div>
        </van-swipe-item>
      </van-swipe>
      <div style="margin-bottom:70px;"></div>
      </div>
  </van-tab>
  <!-- 浏览 -->
  <van-tab title="浏览" @click="liulanl">
    <div class="sccc" v-for="(ll,i) of liulan" :key="i">
      <img :src="'http://127.0.0.1:5050/'+ll.pic">
      <div class="sccctitle">{{ll.title}}</div>
      <div class="scccxiangqing"><span>{{ll.grade}}</span> · {{ll.subtitle}}</div>
      <div class="scccpingjia">
        <span>{{ll.llqr}}</span>
        <span>{{ll.pjch}}</span>
        <span>{{ll.kdcw}}</span>
        <span>{{ll.czfd}}</span>
        </div>
    </div>
    <div class="tianchong"></div>
  </van-tab>
</van-tabs>


<div>
        <van-tabbar v-model="activef" active-color="#07c160" inactive-color="#000">
            <router-view />
            <van-tabbar route>
            <van-tabbar-item replace to="/" icon="home-o">首页</van-tabbar-item>
            <van-tabbar-item replace to="/Shoucang" icon="like-o">收藏</van-tabbar-item>
            <van-tabbar-item replace to="/Find" icon="eye-o">发现美宿</van-tabbar-item>
            <van-tabbar-item replace to="/Xiaoxi" icon="more-o">消息</van-tabbar-item>
            <van-tabbar-item replace to="/Me" icon="manager-o">我的</van-tabbar-item>
            </van-tabbar>
        </van-tabbar>
    </div>
  </div>
</template>
<script>
// import shoucangtit from "./json/shoucangtit.json"
import {getShoucang,getFavorite} from '../apis/Shoucang'
export default {
  data() {
    return {
      actives: 0,
      activef:1,
      // title:"",
      // subtitle:"",
      // tit:shoucangtit
      list:[],
      liulan:[],
      arr:[]
      
    }
  },
  created(){
    getShoucang().then(data=>{
            // this.list=data
            var addSc=data.slice(32,37)
            this.list=addSc;
            // console.log(this.list)
            var addLl=data.slice(0,32)
            this.liulan=addLl
            // console.(addLl)
          });
          if(this.$store.state.uname!=''){
              var url="/ShoucangFavorite"
              var uname=this.$store.state.uname
              var addusc=[];
              this.axios.post(url,{uname:uname}).then(res=>{ 
                for(let i=0;i<res.data.length;i++){
                var obj=JSON.parse(res.data[i].title)
                addusc.push(obj)
              }
              this.arr=addusc.reverse();
            })
          }
  },
  methods:{
    Delfavorite(i){
      this.$dialog.confirm({
        title: '消息',
        message: '是否取消收藏?'
      }).then(() => {
        var pid=this.arr[i].id;
        var uname=this.$store.state.uname;
        //发送ajax请求
        var urldel="scdel";
        this.axios.post(urldel,{uname:uname,pid:pid}).then(res=>{ 
          if(res.code==1){
            this.$toast("取消收藏")
          }
          var url="/ShoucangFavorite"
            var uname=this.$store.state.uname
            var addusc=[];
            this.axios.post(url,{uname:uname}).then(res=>{ 
              for(let i=0;i<res.data.length;i++){
              var obj=JSON.parse(res.data[i].title)
              addusc.push(obj)
            }
            this.arr=addusc.reverse();
          })
        })
      }).catch(() => {
        // on cancel
      });


    },
    Chakan(i){
        this.$router.push({path:"/xq",query:{id:i,list:this.arr[i]}})
      },
    liulanl(){
        getLiulan().then(data=>{
            this.liulan=data
          })
    }
  }
}
</script>
<style scoped>
/* 收藏界面 */
/* 未收藏小界面 */
.weishoucang{
  background-color: #f5f5f5;
  width:90%;
  margin-top: 8%;
  margin-left: 5%;
  float: left;
  height: 70px;
  border-radius: 10px;
}
.weishoucang>img{
  float: left;
  width: 12%;
  margin-left: 20px;
  margin-right: 20px;
  margin-top: 15px;
}
.weishoucang>p{
  margin:0px;
  margin-top: 20px;
  font-size: 14px;
}
.weishoucang>p>span{
  float: left;
  /* margin-left: 20px; */
}
/* 民宿清单 */
.minsuqingdan{
  float: left;
  margin-left: 5%;
  margin-top: 3%;
  font-weight: 600;
  font-size: 18px;
}
/* 清单轮播图 */
.qingdanlunbo{
  float: left;
  margin-top: 20px;
  margin-left: 5%;
  width: 90%;
}
.qingdanziti{
  float: left;
  width:100%;
  text-align: center;
}
.qingdanlunbo img{
  border-radius: 10px;
  overflow: hidden;
}
.qingdanziti p{
  font-size: 16px;
  color: gray;
}

/* 浏览 */
.sccc{
  position: relative;
  width: 100%;height: 300px;
  margin-top: 8%;
}
.hxin{
  position: absolute;
  top: 10px;left: 300px;
  z-index: 999;
}
.sccc>img{
  border-radius: 10px;
  position: absolute;
  margin-left: 5%;
}
.scccpirce span{
  line-height: 25px;
  
}
.sccc .sccctitle{
  position: absolute;
  top: 230px;
  margin-left: 5%;
  font-size: 14px;
  font-weight: 600;
  margin-top: 5px;
}
.sccc .scccxiangqing{
  position: absolute;
  top: 252px;
  margin-left: 5%;
  font-size: 13px;
  color: gray;
  margin-top: 5px;
}
.sccc .scccxiangqing>span{
  color: rgba(235, 235, 55, 0.795);
}
.sccc .scccpingjia{
  position: absolute;
  top: 275px;
  margin-left: 5%;
  margin-right: 70px;
  font-size: 12px;
  margin-top: 5px;
  margin-bottom: 35px;
}
.sccc .scccpingjia>span{
  border: 1px solid #000;
  border-radius: 2px;
  font-size: 12px;
}
.sccc .scccpingjia span:not(:first-child){
  margin-left: 4px;
}
.sccc .scccpingjia span:first-child{
  color: #e7823e;
  border: 1px solid #e7823e;
}
.tianchong{
  margin-bottom: 90px;
  float:left
}
</style>