<template>
  <div>
    <div class="myorderhead">
      <img @click="fanhuii" src="../assets/left2.png" alt="">
      <span>我的订单</span>
    </div>
    <div class="dingdan" v-for="(dd,i) of list" :key="i">
      <img class="fz" src="../assets/house.png" alt="">
      <div class="dingdantitle">{{dd.title}}</div>
      <img class="pic" :src="'http://127.0.0.1:5050/'+dd.pic" alt="">
      <div class="dingdansubtitle">{{dd.subtitle}}</div>
        <div class="dateee"><span>{{dd.checktime}}</span></div>
        <div class="xiadantime">下单时间:{{dd.ordertime}}</div>
        <div class="zongjia">总价：￥{{dd.price}}</div>
        <div @click="Pjump(i)" class="lijipingjia">立即评价</div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      list:[],
    }
  },
  methods:{
    Pjump(i){
      this.$router.push({path:"/Write",query:{pid:this.list[i].pid,pic:this.list[i].pic}})
    },
    fanhuii(){
      this.$router.push("/Me");
    }
  },
  created(){
        if(this.$store.state.uname!=''){
              var url="/myorder"
              var uname=this.$store.state.uname
              var addusc=[];
              this.axios.post(url,{uname:uname}).then(res=>{ 
              var arr=res.data;
              this.list=arr.reverse();
              // console.log(this.list)
            })
          }
  }
}
</script>
<style scoped>
.myorderhead img{
  width: 7%;
  margin-top: 7px;
  margin-left: 7px;
  float: left;
}
.myorderhead span{
  float: left;
  margin-left: 33%;
  font-weight: 600;
  font-size: 18px;
  line-height: 45px;
}
.myorderhead{
  height: 45px;
  /* height: 30px; */
  /* border-bottom: 1px solid rgba(128, 128, 128, 0.342); */
}
.dingdan{
  width: 90%;
  margin-left: 5%;
  position: relative;
  box-shadow: 0px 0px 10px 2px rgba(152,152,152,0.5);
  height: 140px;
  border-radius: 8px;
  margin-top: 3%;
  margin-bottom: 3%;
}
.dingdan .fz{
  width: 6.5%;
  position: absolute;
  top: 13px;
  margin-left: 5%;
}
.dingdan .dingdantitle{
  position: absolute;
  top: 13px;left: 50px;
  font-weight: 600;
  font-size: 14px;
}
.dingdan .pic{
  position: absolute;
  top: 52px;
  width: 30%;
  margin-left: 5%;
  border-radius: 5px;
}
.dingdan .dingdansubtitle{
  position: absolute;
  top: 50px;left:140px;
  color: gray;
  width: 55%;
  font-size: 14px;
  margin-right: 5%;
  white-space:nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
.dingdan .dateee{
  position: absolute;
  top: 75px;left:140px;
  font-size: 12px;
  color: gray;
}
.dingdan .xiadantime{
  position: absolute;
  top: 98px;left:140px;
  font-size: 12px;
  color: gray;
}
.dingdan .zongjia{
  position: absolute;
  top: 120px;left:196px;
  font-size: 12px;
  color: gray;
}
.dingdan .lijipingjia{
  position: absolute;
  top: 120px;left:276px;
  font-size: 12px;
  color: gray;
}
</style>