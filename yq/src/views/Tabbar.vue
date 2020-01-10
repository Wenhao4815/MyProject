<template>
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
</template>
<script>
    export default {
        data() {
        return {
            activef:0,     
        };
    }
    }
</script>