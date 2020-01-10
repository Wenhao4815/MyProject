<template>
    <div>
        <div><img class="jiantou" @click="Jumpp" src="../assets/left2.png" alt=""></div>
       <van-field class="liebiao"  id="lb1" :placeholder="unameholder" v-model="uname"></van-field>
       <van-field  class="liebiao" :placeholder="upwdholder" v-model="upwd1" type="password"></van-field>
       <van-field  class="liebiao" :placeholder="Zupwdholder" v-model="upwd2" type="password"></van-field>
       <van-button class="anniu" id="dl1" size="large" @click="Reg">注册</van-button>
    </div>
</template>
<script>
export default {
    data(){
      return {
       unameholder:"请输入用户名",//用户名提示
       upwdholder:"请输入密码",//密码提示
       Zupwdholder:"再次输入密码",
       uname:"", //用户输入用户名
       upwd1:"" ,  //用户输入密码
       upwd2:""
      }
    },
    methods:{
         Jumpp(){
            this.$router.go(-1)
        },
        Reg(){
            //功能完成注册操作
            // 1.获取输入的用户名  密码   再次输入密码
            var u=this.uname;
            var p1=this.upwd1;
            var p2=this.upwd2;
            var Vtion1=/[a-zA-Z0-9_]{3,16}/ ;//用户名最短6个字符最长不超过16个字符
            var Vtion2=/[a-zA-Z0-9_]{1,16}/;//用户密码最短6个字符最长不超过16个字符
            //验证用户名
            if(!Vtion1.test(u)){
                this.$toast("用户名格式不正确")
                return;//失败停止执行
            }
            //验证密码
            if(!Vtion2.test(p1)){
                this.$toast("密码格式不正确")
                return;//失败停止执行
            }
            if(p1!==p2){
                this.$toast("两次密码不一致")
                return;//失败停止执行
            }
            // 发送ajax请求
            var url="/Reg";
            // var obj={uname:u,upwd:p1};
            this.axios.post(url,{uname:u,upwd1:p1}).then(
                //获取服务器返回结果
                res=>{
                    if(res.data.code==-1){
                        this.$toast("注册失败")
                    }else{
                        this.$toast("注册成功")
                        this.$router.push("/Login")
                    }
                }
            )
        }
    }
}
</script>
<style  scoped>
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
  margin-top:13%;
}
.anniu{
  width: 80%;
  margin-left: 10%;
  border-radius: 10px;
  background-color: gray;
  color: white;
  
}
</style>