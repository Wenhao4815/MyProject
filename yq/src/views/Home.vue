<template>
  <div class="container">
    <div style="margin-top:-60px;">
      <img class="bg" src="../assets/shouye.jpg" alt="">
    </div>
    <div class="container2">
      <div class="Floor1">
          <div class="row1">目的地/附近</div>
          <van-divider></van-divider>
          <div class="row2">
            <p>郑州市</p>
            <div class="row21">
              <img class="dw" src="../assets/dingwei.png" alt="">
              <p class="dingwei">我的附近</p>
            </div>
          </div>
          <van-divider></van-divider>
          <div class="row3">
            <p class="dt">入住</p>
            <p class="dt ml">离店</p>
          </div>
          <div class="row4">
            <!-- <p @click="xzDate">12月7日<span class="dt">今天</span></p> -->
            <p @click="xzDate">{{Start}}<span class="dt"></span></p>
            <p @click="xzDate">{{End}}<span class="dt"></span></p>
            <p class="dt">共{{Tian}}晚</p>
            <img class="path" src="../assets/Path.png" alt="">
          </div>
          <!-- <div class="hhr"></div> -->
          <div class="hhr"></div>
          <div class="row5" @click="Btn">
            <p>搜索民宿/地点/关键字</p>
            <img class="path" src="../assets/Path.png" alt="">
          </div>
          <div class="hhr"></div>
          <div >
            <van-button @click="Btn" class="but">查找民宿</van-button>
          </div>
      </div>
    </div>
    <div class="container3">
      <div class="Floor2">
        <div class="Floor21 ">
                <div v-for="(item,i) of xiaotubiao" :key="i">
                    <img class="tupian" :src="'http://127.0.0.1:5050/'+item.img" alt="">
                </div>
               
              </div>
              <div class="Floor22 font">
                <div>可以做饭</div>
                <div>两室一厅</div>
                <div>轰趴聚会</div>
                <div>超赞房东</div>
                <div>TOP美宿</div>
              </div>
              <div class="Floor21 mar">
                <div v-for="(xiaotu2,i) of xiaotubiao2" :key="i">
                    <img class="tupian" :src="'http://127.0.0.1:5050/'+xiaotu2.img" alt="">
                </div>
    
              </div>
              <div class="Floor22 font">
                <div>学生特权</div>
                <div>非睡不可</div>
                <div>免费住宿</div>
                <div>旅行神器</div>
                <div>境外民宿</div>
              </div>
      </div>
    </div>
    <div class="container4">
      <div class="Floor3">
        <div class="F3">
          <div>网红民宿</div>
          <div>91606<span class="renshu">人正在种草</span></div>
        </div>
        <van-swipe @change="onChange">
          <van-swipe-item><img src="../assets/1.jpg" alt=""></van-swipe-item>
          <van-swipe-item><img src="../assets/2.jpg" alt=""></van-swipe-item>
          <van-swipe-item><img src="../assets/3.jpg" alt=""></van-swipe-item>
          <van-swipe-item><img src="../assets/4.jpg" alt=""></van-swipe-item>
        </van-swipe>
      </div>
    </div>
    <div class="container5">
      <div class="Floor4">
        <img src="../assets/Floor4-1.jpg" alt="">
        <img src="../assets/Floor4-2.jpg" alt="">
        <img src="../assets/Floor4-3.jpg" alt="">
        <img src="../assets/Floor4-4.jpg" alt="">
      </div>
    </div>
    <div class="container6">
      <div class="Floor5">
        <div>热门入住地</div>
        <div>
          <van-tabs v-model="activeName" color="#253573">
            <van-tab title="上海" name="a">
              <div class="buju" v-for="(item,i) of sh" :key="i">
                  <img :src="'http://127.0.0.1:5050/'+item.pic" alt="">
                  <div class="bjtitle">{{item.title}}</div>
                  <div class="bjsubtitle">{{item.subtitle}}</div>
                  <div class="bjprice">￥{{item.price}}<span>/晚</span></div>
              </div>
            </van-tab>
            <van-tab title="北京" name="b">
              <div class="buju" v-for="(item,i) of bj" :key="i">
                  <img :src="'http://127.0.0.1:5050/'+item.pic" alt="">
                  <div class="bjtitle">{{item.title}}</div>
                  <div class="bjsubtitle">{{item.subtitle}}</div>
                  <div class="bjprice">￥{{item.price}}<span>/晚</span></div>
              </div>
            </van-tab>
            <van-tab title="广州" name="c">
              <div class="buju" v-for="(item,i) of gz" :key="i">
                  <img :src="'http://127.0.0.1:5050/'+item.pic" alt="">
                  <div class="bjtitle">{{item.title}}</div>
                  <div class="bjsubtitle">{{item.subtitle}}</div>
                  <div class="bjprice">￥{{item.price}}<span>/晚</span></div>
              </div>
            </van-tab>
            <van-tab title="郑州" name="d">
              <div class="buju" v-for="(item,i) of zz" :key="i">
                  <img :src="'http://127.0.0.1:5050/'+item.pic" alt="">
                  <div class="bjtitle">{{item.title}}</div>
                  <div class="bjsubtitle">{{item.subtitle}}</div>
                  <div class="bjprice">￥{{item.price}}<span>/晚</span></div>
              </div>
            </van-tab>
          </van-tabs>
          <div class="btn">
            <van-button class="btn_1" @click="chakan">查看更多民宿</van-button>
          </div>
          <div class="end"></div>
        </div>
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
    <Rili id="date"></Rili>
  </div>
</template>
<script>
import Rili from '../date/date'
import {getHome} from '../apis/Home'
import {getShoucang} from '../apis/Shoucang'
export default {
  data() {
    
    return {
      activef:0,
      activeName:"a",
      active:"home" , 
      Start:"",
      End:"",
      xiaotubiao:[],
      xiaotubiao2:[],
      Tian:"1",
      // chengshi:[]
      sh:"",
      bj:"",
      gz:"",
      zz:"",
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
        

        getHome().then(data=>{
            // console.log(data);
            var addXimg=data.slice(0,5)
            // console.log(addXimg)
            this.xiaotubiao=addXimg;
            var addXimg2=data.slice(5,10)
            this.xiaotubiao2=addXimg2;
          });
          getShoucang().then(data=>{
            var shh=data.slice(0,8)
            this.sh=shh;

            var bjj=data.slice(8,16)
            this.bj=bjj;

            var gzz=data.slice(16,24)
            this.gz=gzz;

            var zzz=data.slice(24,32)
            this.zz=zzz;
          });  
        
  },
  methods: {
    chakan(){
      this.$router.push("/Product")
    },
    Btn(){
       this.$router.push('/Product')
    },
    onChange(index) {
      
    },
    xzDate(){
      this.$router.push('/date');
    }
  },
  components: {
            Rili
  }
}
</script>
<style scoped>
/* 底部 */
.buju{
    margin-top: 5%;
    border-radius: 5px;
    width: 47%;
    margin-left: 3%;
    margin-right: 0%;
    float: left;
    margin-bottom: 3%;
    box-shadow: 0px 0px 10px 2px rgba(152,152,152,0.5);
}
.buju img{
    width: 100%;
    border-radius: 5px;
    /* margin-top: 5%; */
}
.bjtitle{
    width: 90%;
    margin-left: 5%;
    font-size: 12px;
    margin-top: 3%;
    white-space:nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.bjsubtitle{
    margin-left: 5%;
    width: 90%;
    font-size: 10px;
    margin-top: 2%;
    color: gray;
}
.bjprice{
  width: 90%;
    margin-left: 5%;
    font-size: 12px;
    margin-top: 2%;
    margin-bottom: 3%;
    color: rgba(255, 0, 0, 0.568);
}
.bjprice span{
  color: rgba(20, 20, 20, 0.89);
}
/* 底部 */
  #date{
    display: none;
  }
  .end{
    height: 80px;
  }
  .btn_1{
    background: #253573;
    color:#fff;
    width: 70%;
    border-radius: 10px;
    margin-top: 20px;
  }
  .btn{
    margin-top: 30px;
    text-align: center;
  }
  .tupian{
    width: 40px;
    height: 40px;
  }
  .font{
    font-size:12px;
  }
  .ml{
    margin-left: 125px;
    position: absolute;
  }
  .hhr{
    width: 100%;
    height: 0.5px;
    background: #ebebeb;
    margin-top:8px; 
    margin-bottom: 8px;
  }
  .dt{
    font-size: 13px;
    color: #c1c1c1;
  }
  .but{
    background: #253573;
    color: #f5f6fa;
    width: 100%;
    border-radius: 10px;
    margin-top:10px; 
  }
  .renshu{
    color: #c1c1c1;
    font-size: 11px;
  }
  .Floor4 img{
    width: 23%;
    height: 23%;
    border-radius: 5px;
  }
  .Floor5_color{
    color: red;
  }
  .Floor5_1_1{
    font-size: 12px;
    color: #c1c1c1;
    margin-left: 2px;
  }
  .Floor5_1 img{
    width: 95%;
    border-radius: 5px;
  }
  .Floor5_1{
    display: flex;
    margin-top: 15px;
  }
  .Floor5{
    margin-top: 25px;
  }
  .Floor4{
    margin-top:5px;
    display: flex;
    justify-content: space-between;
  }
  .F3{
    display: flex; 
    justify-content: space-between;
    margin-bottom: 5px;
  }
  .Floor3 img{
    width: 100%;
    height: 180px;
    border-radius: 10px;
  }
  .Floor2{
    padding: 5px;
  }
  .Floor1{
    width: 100%;
    background: #f5f6fa;
    padding:8px;
    border-radius: 10px;
  }
  .path{
    width: 12px;
    height: 12px;
  }
  .dw{
    width: 20px;
    height: 20px;
  }
  .dingwei{
    font-size: 12px;
    font-family:Trebuchet;
    color: #c1c1c1;
    margin-top: 3px;
  }
  .row5{
    color: #c1c1c1;
  }
  .row5 p{
    height: 35px;
    line-height: 35px;
    border-bottom: 1px solid transparent;
  }
  .row2{
    font-size: 14px;
    font-family:Trebuchet;
    white-space:nowrap;
  }
  .row1{
    font-size: 12px;
    color: #c1c1c1;
    font-family:  Trebuchet;
  }
  .container6{
    padding-left:7%;
    padding-right:7%;
  }
  .container5{
    padding-left:7%;
    padding-right:7%; 
  }
  .container4{
    padding-left:7%;
    padding-right:7%; 
    margin-top: 15px;
  }
  .container3{
    padding-left:5%;
    padding-right:5%; 
  }
  .container2{
    padding-left:5%;
    padding-right:5%;  
    margin-top: -165px;
    display: flex;
  }
  .bg{
    width: 100%;
    height: 400px;
  }
  .row21{ 
    margin-top: -2px;
    display: flex;
    justify-content: space-between;
  }
  .row1,.row2,.row3,.row4,.row5{
    justify-content: space-between;
    margin-top:2px;
    align-items: center;
  }
  .Floor21{
    margin-top: 8px;
    margin-left: 5px;
    margin-right: 5px;
    justify-content: space-between;
  }
  .Floor22{
    justify-content: space-between;
    
  }
  .row1,.row2,.row3,.row4,.row5,.Floor21,.Floor22{
    display: flex;
  }
  p{
    margin: 0;
    padding: 0;
    font-weight: 300;
  }
</style>

