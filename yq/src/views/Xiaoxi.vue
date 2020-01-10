<template>
  <div>
    <van-tabs v-model="activex" color="#253573">
  <van-tab title="消息">
    <div class="rootstyle">
    <!--左侧文字图片-->
     <div class="leftimgtxt">
        <img src="../assets/logo/logo.png" class="imgstyle"/>
        <div class="righttxt">
         <b class="title">云栖民宿</b>
         <span class="subtitle">
             欢迎您入住！  
         </span>
        </div>
     </div>
    <!--右侧发表时间-->
     <span class="sendtime">12:00</span>
  </div>
  <!-- 一 --><!-- 一 --><!-- 一 -->
    <div class="rootstyle">
    <!--左侧文字图片-->
     <div class="leftimgtxt">
        <img src="../assets/logo/logo.png" class="imgstyle"/>
        <div class="righttxt">
         <b class="title">云栖民宿</b>
         <span class="subtitle">
             欢迎您入住！  
         </span>
        </div>
     </div>
    <!--右侧发表时间-->
     <span class="sendtime">12:00</span>
  </div>
  <!-- 二 --><!-- 二 --><!-- 二 -->
    <div class="rootstyle">
    <!--左侧文字图片-->
     <div class="leftimgtxt">
        <img src="../assets/logo/logo.png" class="imgstyle"/>
        <div class="righttxt">
         <b class="title">云栖民宿</b>
         <span class="subtitle">
             欢迎您入住！  
         </span>
        </div>
     </div>
    <!--右侧发表时间-->
     <span class="sendtime">12:00</span>
  </div>
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
export default {
  data() {
    return {
      activex: 0,
      activef:3
    };
  }
}
</script>
<style scoped>
  /*1:最外层父元素 弹性布局*/
  .rootstyle{
    display: flex;/*弹性布局*/
    /*子元素两端对齐 垂直居中*/
    justify-content: space-between;
    align-items: center;
    margin-left: 5%;
    margin-top: 5%;
    width: 90%;
    height: 80px;
    border-bottom: 1px solid gray;
  }
  /*2:指定左侧图片*/
  .imgstyle{
    width:50px;
    height:50px;
  }
  /*3:指定左侧文字和图片*/
  .leftimgtxt{
    display: flex;/*弹性布局*/
  }
  /*4:指定左侧标题*/
  .righttxt{
    display: flex;
    /*当前元素弹性布局  子元素 按列排放*/
    flex-direction: column;
    justify-content: center;/*左侧居中*/
    margin-left:7px;/*和左侧图片间距*/
    font-size: 14px;
  }
  /*标题子标题*/
  .title{
    margin:0px; 
    font-size:17px;
    color:#000;
    margin-left: 10px;
  }
  .subtitle{
    color:gray;
    margin-top: 10px;
    margin-left: 10px;
  }
  /*5:指定右侧时间*/
  .sendtime{
    color:gray;
    margin-right: 5%;
  }
</style>