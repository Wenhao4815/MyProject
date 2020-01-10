<template>
  <div class="app-login">
    <!--h1>Login.vue</h1-->
    <!--1：用户名输入框-->
    <div><img class="jiantou" @click="Jump" src="../assets/left2.png" alt=""></div>
    <div class="title">欢迎登录云栖民宿</div>
    <div class="liebiao" id="lb1">
    <van-field :placeholder="unameholder" v-model="uname"></van-field>

    </div>
    <!--2: 密码输入框-->
    <div class="liebiao">
    <van-field :placeholder="upwdholder" v-model="upwd" type="password"></van-field>

    </div>
    <!--3: 登陆按钮-->
    
    <van-button class="anniu" id="dl1" size="large" @click="login">登录</van-button>
   
    
    <van-button class="anniu" id="dl2" size="large" @click="Reg">注册</van-button>
    
  </div>

</template>
<script>
export default {
    data(){
      return {
       unameholder:"请输入用户名",//用户名提示
       upwdholder:"请输入密码",//密码提示
       uname:"", //用户输入用户名
       upwd:""   //用户输入密码
      }
    },
    methods:{
      Jump(){
            this.$router.push("/Me")
        },
      login(){
        //功能:完成用户登录操作
        //*1:获取用户输入用户名
        var u = this.uname;
        //*2:获取用户输入密码
        var p = this.upwd;
        //console.log(u+"_"+p);
        //*3:创建正则表达式验证用户名和密码
        //  3~12 字母数字
        var reg = /^[a-z0-9]{3,12}$/i;
        //*4:用户验证失败 提示短消息
        if(!reg.test(u)){
           this.$toast("用户名格式不正确");
           return;//失败停止执行
        }
        //*5:密码验证失败 提示短消息
        if(!reg.test(p)){
          this.$toast("密码格式不正确");
          return;//失败停止执行
        }  
        //6:发送ajax 请求 axios
        var url = "login";
        var obj = {uname:u,upwd:p}
        this.axios.get(url,{params:obj}).then(res=>{ 
       //7:获取服务器返回结果
       //7.1:登录失败  提示
      if(res.data.code==-1){
       this.$toast("用户名和密码有误");
      }else if(u=="admin"){
       //7.2:登录成功  跳转商品首页组件
       this.$router.push("/admin")
      }else{
        this.$router.push("/Me")
        this.$store.commit('getName',this.uname)
      }
      })
      },
      Reg(){
        this.$router.push("/Reg")
      }
    }
}
</script>
<style>
.jiantou{
  width: 6%;  
  margin-top: 5px;
  margin-left: 5px;
}
.title{
  margin-top: 15%;
  margin-left: 8%;
  /* font-weight: 600; */
  font-size: 22px;
  margin-bottom: 10%;
}
.liebiao{
  width: 80%;
  margin-left: 10%;
  border-bottom: 1px solid gray;
  margin-bottom: 8%;
}
#lb1{
  margin-top: 18%;
}
#dl1{
  width: 80%;
  margin-left: 10%;
  border-radius: 10px;
  margin-top:13%;
  color: white;
  background-color: gray;
}
#dl2{
  width: 80%;
  margin-left: 10%;
  border-radius: 10px;
  color: white;
  background-color: gray;
}


</style>

