<template>
<div>
  <div @click="ffanhui" class="pinglunhead">
      <img src="../assets/left2.png" alt="">
      <span>更改房屋信息</span>
    </div>
  <van-cell-group>
  <van-field
    v-model="title"
    label="标题"
    placeholder="请输入新标题"
  />
  <!-- <van-field
    v-model="subvalue"
    label="床铺"
    placeholder="请输入新详情"
  /> -->
  <van-field
    v-model="price"
    label="价格"
    placeholder="请输入新价格"
  />
</van-cell-group>
<button @click="bianjitijiao" class="xiugaitijiao">提交</button>
</div>
</template>
<script>
import { getTest } from '../apis/Test';
export default {
  data(){
    return{
      title:"",
      // subvalue:"",
      price:""
    }
  },
  methods:{
    ffanhui(){
      
      this.$router.push("/admin");
    },
    bianjitijiao(){
      this.$dialog.confirm({
            title: '是否修改',
            message: '是否修改此房屋信息'
            }).then(() => {
                  var url="/modproduct";
                  var list={
                    id:this.$route.query.fmnn.id,
                    title:this.title,
                    price:this.price}
                  getTest(url,list).then(data=>{
                    if(data.code==1){
                    this.$toast("修改成功")}
                  })
            this.$router.go(-1);
            }).catch(() => {
            
            });
    }
  },
  created(){
    console.log(this.$route.query)
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
  margin-left: 30%;
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
.xiugaitijiao{
  /* margin-top: 55%; */
   position: fixed;/*固定在底部*/
   bottom: 20px;
  width: 90%;
  margin-left: 5%;
  border: 0px;
  height: 50px;
  border-radius: 5px;
  color: gray;
  background: #adadad93;
}
</style>