<template>
  <div>
    <div class="head">
      <img src="../assets/icon/me2.png" alt="">
      <img src="../assets/icon/me1.png" alt="">
    </div>
    <div class="xinxilan">
      <div>
        <img src="../assets/logo/logo.png" alt="">
      </div>
      <div id="uname" v-if="this.$store.state.uname==''" @click="denglu">请登录</div>
      <div id="uuname" v-else>欢迎{{this.$store.state.uname}}，<span @click="logOut">退出</span></div>
      <div class="shenfen">身份验证&gt;</div>
      <div class="gerenzhuye">个人主页&gt;</div>
    </div>
    <div class="qianbao">
      <h4 class="qianbaohead">我的钱包</h4>
      <div class="qianbaobuju">
        <van-grid :gutter="10" :column-num="3" :border="false">
          <van-grid-item @click="wodedingdan"  icon="description" text="我的订单" />
          <van-grid-item icon="pending-payment" text="云栖钱包" />
          <van-grid-item icon="point-gift-o" text="优惠券" />
          <van-grid-item icon="records" text="邀请好友" info="¥200"  />        </van-grid>
      </div>
    </div>
    <div class="guanyuminsu">
      <h4 class="guanyuminsuhead">关于云栖民宿</h4>
      <div class="guanyubuju">
        <van-grid :gutter="10" :column-num="3" :border="false">
            <van-grid-item icon="records" text="联系云栖" />
            <van-grid-item icon="flower-o" text="关于云栖" />
        </van-grid>
      </div>
    </div>
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
import {getMe} from '../apis/Me'
  export default {
  data() {
    return {
      activef: 4,
      add:"false",
      addd:"false",
     
    }
  },
    created(){
  },
  methods:{
    wodedingdan(){
      this.$router.push("/myorder");
    },
    logOut(){
      this.$dialog.confirm({
          title: '消息',
          message: '确认要退出登录吗?'
        }).then(() => {
         this.$dialog.alert({
            title: '消息',
            message: '云栖民宿期待与你的下一次相遇'
          }).then(() => {
            });
           this.$store.state.uname="";
        }).catch(() => {

        });
      
    },
    denglu(){
      this.$router.push("/Login");
    }
  },

  }
</script>

<style scoped>
  .head>img{
    width: 6%;
    float: right;
    margin-right: 5%;
    margin-top: 3%;
  }
  .xinxilan{
    width: 90%;
    height: 120px;
    margin-left: 5%;
    border-radius:10px;
    background-color:#25357373;
    margin-top: 3%;
    float: left;
    position: relative;
    box-shadow: 0px 0px 10px 5px rgba(152,152,152,0.5);
    margin-top: 6%;
  }
  .xinxilan>div>img{
    width: 15%;
    position: absolute;
    top:30px;left: 20px;
  }
  .xinxilan>#uname{
    position: absolute;
    top:30px;left: 90px; 
    font-size: 16px;  
  }
  .xinxilan>#uuname{
    position: absolute;
    top:30px;left: 90px; 
    font-size: 16px;  
  }
  .xinxilan>.shenfen{
    position: absolute;
    top:60px;left: 90px;
    background: gray;
    border-radius: 30px; 
    font-size: 12px;
    width: 22%;
    text-align: center;
    color: #fff;
  }
  .xinxilan>.gerenzhuye{
    position: absolute;
    top:10px;left: 260px;
    font-size: 13px;
  }
  .qianbaohead{
    float: left;
    margin-left: 5%;
    margin-top: 10%;
  }
  .qianbaobuju{
    float: left;
    margin-left: 5%;
    width: 90%;
  }
  .guanyuminsuhead{
    float: left;
    margin-left: 5%;
  }
  .guanyubuju{
    float: left;
    margin-left: 5%;
    width: 90%;
}
</style>