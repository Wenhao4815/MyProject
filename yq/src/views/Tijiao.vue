<template>
  <div>
    <div class="tijiaohead">
    <img @click="fanhuihui" src="../assets/left2.png" alt="">
    <span>提交订单</span>
  </div>
  <div class="card">
    <img :src="'http://127.0.0.1:5050/'+this.$route.query.pic" alt="">
    <div class="cardtitle">{{this.$route.query.title}}</div>
    <div class="cardsubtitle">{{this.$route.query.subtitle}}</div>
  </div>
  <div class="ruli">
    <div>
      <div class="ccbiaokuang">
      <div class="ccbiao">入离日期</div>
        <p><span>{{Start}}</span> - <span>{{End}}</span></p>
        <div class="jiwan">共{{Tian}}晚</div>
      </div>
    </div>
    <div class="ruzhurenshu">
      <div>入住人数</div>
      <p>2人</p>
    </div>
    <div class="zhukexinxi">
      <div>住客信息</div>
      <p>{{this.$store.state.uname}}</p>
    </div>
  </div>
  <div class="fangfei">
    <div>房费</div>
    <p>￥{{(this.$route.query.price*Tian).toFixed(2)}}</p>
    <div class="qian">合计:￥<span>{{(this.$route.query.price*Tian).toFixed(2)}}</span></div>
  </div>
  <van-submit-bar
  :price="(this.$route.query.price*100*Tian)"
  button-text="提交订单"
  @submit="onSubmit"
/>
  </div>
</template>
<script>
import {getMe} from '../apis/Me'
import {getProduct} from '../apis/Product'
export default {
  data(){
    return{
      Start:"",
        End:"",
        Tian:"1",
        pic:"",
        title:"",
    }
  },
  methods:{
    onSubmit(){
      //发送ajax请求 提交订单信息插入数据库
      var url="/order";
      var uname=this.$store.state.uname;
      var pid=this.$route.query.id; 
      var orderDate = new Date();
      var ordertime=orderDate.toLocaleString();
      var title=this.$route.query.title;
      var pic=this.$route.query.pic;
      var subtitle=this.$route.query.subtitle;
      var price=(this.$route.query.price)*this.Tian;
      var checktime=this.Start+" "+"-"+" "+this.End;
      // console.log(checktime)
      this.axios.post(url,{uname:uname,
                           pid:pid,
                           ordertime:ordertime,
                           title:title,
                           pic:pic,
                           subtitle:subtitle,
                           price:price,
                           checktime:checktime
                           }).then(
          res=>{
              
          }
      )


      this.$dialog.alert({
        title: '提交订单',
        message: '云栖民宿提醒您下单成功'
      }).then(() => {
        this.$router.push("/Me");
      });
    },
    fanhuihui(){
      this.$router.push("/Product");
    }
  },
  created(){
      if(this.$store.state.Riqidate.length>0){
        var addStart=this.$store.state.Riqidate[0].split("/")
        this.Start=addStart[1]+"月"+addStart[2]+"日";
        var addEnd=this.$store.state.Riqidate[1].split("/")
        this.End=addEnd[1]+"月"+addEnd[2]+"日";
        var Tian=addEnd[2]-addStart[2];
        this.Tian=Tian;
      }else{
        var myDate=new Date();
        var addDate=myDate.toLocaleDateString().split("/");
        this.Start=addDate[1]+"月"+addDate[2]+"日";
        
        var myDate2=new Date();
        myDate2=myDate2.setDate(myDate2.getDate()+1);
        myDate2=new Date(myDate2);
        var addDate2=myDate2.toLocaleDateString().split("/");
        this.End=addDate2[1]+"月"+addDate2[2]+"日";}
  }
}
</script>
<style>
.tijiaohead img{
  width: 7%;
  margin-top: 7px;
  margin-left: 7px;
  float: left;
}
.tijiaohead span{
  float: left;
  margin-left: 33%;
  font-weight: 600;
  font-size: 18px;
  line-height: 45px;
}
.tijiaohead{
  height: 45px;
  /* height: 30px; */
  /* border-bottom: 1px solid rgba(128, 128, 128, 0.342); */
}
.card{
  position: relative;
  width: 90%;
  margin-left: 5%;
  margin-top: 5%;
  box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
  height: 78px;
  border-radius: 5px;
}
.card img{
  position: absolute;
  top: 10px;
  width: 25%;
  border-radius: 5px;
  margin-left:5%;
}
.card .cardtitle{
  position: absolute;
  top: 12px;
  left: 135px;
  width: 55%;
  font-weight: 600;
  font-size: 14px;
  white-space:nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
.card .cardsubtitle{
  position: absolute;
  top: 38px;
  left: 135px;
  color: gray;
  font-size: 12px;
  margin-right: 5%;
}
.ruli{
  width: 90%;
  margin-left: 5%;
  box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
  margin-top: 3%;
  height:128px;
  border-radius: 5px;
  position: relative;
}
.ccbiao{
  position: absolute;
  top: 20px;
  margin-left: 5%;
  color: gray;
  font-size: 14px;
}
.ruli p{
  position: absolute;
  top: 20px;left: 95px;
  margin:0px;
  font-size: 14px;
}
.ruli .jiwan{
  position: absolute;
  top: 20px;left: 270px;
  color: gray;
  font-size: 14px;
}
.ruzhurenshu div{
  margin-left: 5%;
  position: absolute;
  top: 54px;
  font-size: 14px;
  color: gray;
}
.ruzhurenshu p{
  margin: 0px;
  position: absolute;
  top: 54px;left: 95px;
}
.zhukexinxi div{
  margin-left: 5%;
  position: absolute;
  top: 88px;
  font-size: 14px;
  color: gray;
}
.zhukexinxi p{
  margin: 0px;
  position: absolute;
  top: 88px;left: 95px;
}
.fangfei{
  width: 90%;
  margin-left: 5%;
  box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
  margin-top: 3%;
  height:128px;
  border-radius: 5px;
  position: relative;
}
.fangfei div{
  position: absolute;
  top: 20px;left: 0px;
  margin-left: 5%;
  font-size: 14px;
  color: gray;
}
.fangfei p{
  position: absolute;
  top: 20px;left: 260px;
  margin-right: 5%;
  margin: 0px;
  font-size: 14px;
}
.fangfei .qian{
   position: absolute;
   top: 88px;left: 190px;
   /* margin-right: 5%; */
   font-size: 14px;
   color: #000;
}
.fangfei .qian>span{
  font-weight: 600;
  font-size: 20px;
  color: rgba(255, 0, 0, 0.568);
}
</style>