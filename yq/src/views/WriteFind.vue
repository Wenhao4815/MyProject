<template>
  <div>
    <div class="pinglunhead">
      <img @click="Djump" src="../assets/left2.png" alt="">
      <span>发现</span>
    </div>
      <div style="margin-left:20px;margin-top:20px;">
        <van-cell-group style="width:90%">
          <van-field v-model="title" placeholder="请输入标题" />
          <van-field v-model="dizhi" placeholder="请输入房屋地址" />
        </van-cell-group>
      </div>
    <div class="pingjiazhong">
      <van-uploader class="img_1"  v-model="fileList" multiple :max-count="3"/>
      <textarea  v-model="context"  placeholder="说说哪里好嘛，其他顾客想知道" cols="4" rows="1"></textarea>
    </div>
    <button class="tijiaopingjia" @click="ESubmit">提交发现</button>
  </div>
</template>
<script>
import {getTest} from '../apis/Test'
export default {
  data(){
    return {
      value: 0,
      fileList: [],
      context:"",
      title:"",
      dizhi:""
      }
    
  },
  methods:{
    Djump(){
      this.$router.go(-1)
    },
    ESubmit(){
      if(this.fileList.length<3){
        this.$toast("您的房源信息没有填写完整")
        return
        }
      var url="/WriteFind"
      var uname=this.$store.state.uname;
      var title=this.title;
      var dizhi=this.dizhi;
      var context=this.context;
      var pic="find/"+this.fileList[0].file.name
      var picc="find/"+this.fileList[1].file.name
      var piccc="find/"+this.fileList[2].file.name
      var list={uname:uname,context:context, title:title,pic:pic,picc:picc,piccc:piccc,dizhi:dizhi};
      getTest(url,list).then(data=>{
        this.$toast("提交成功")
        this.$router.push("/Find")
      })
      
      // console.log(this.fileList[0].file.name)
      // console.log(this.fileList[1].file.name)
      // console.log(this.fileList[2].file.name)
      // console.log(this.context)
    }
  }
}
</script>
<style scoped>
/* head */
.img_1{
  width:100%;margin-left:-80px;
}
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
  /* overflow: hidden; */
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
  margin-top: 30%;
  width: 90%;
  margin-left: 5%;
  border: 0px;
  height: 50px;
  border-radius: 5px;
  color: gray;
  background: #adadad93;
}
</style>