<template>
<!-- head -->
  <div>
    <div>
      <div class="page-head">
    <div class="header">
      <!-- 后退 -->
      <button class="retreat">
        <img @click="fanhui" src="../assets/箭头left.png">
      </button>
      <div class="hunt">
        <!-- 时间 -->
        <div class="date" @click="Djump">
          <div>入{{Start}} &nbsp;|</div>
          <div class="lidate">离{{End}} &nbsp;|</div>
          
        </div>
        <!-- 地点 -->
        <div class="place">
          
          <span>{{placeIP}}</span>
        </div>
        <!-- 搜索框 -->
        <div class="search">
          <input v-model="SearchVal" type="text" placeholder="搜索位置、地标、房源标题">
          <img class="search_1" src="../assets/searchs.png" @click="FindSearch" alt="">
        </div>
      </div>
    </div>
  </div>
    </div>
    <!-- 选择器 -->
<div>
  <div>
    

    <!-- 导航栏 -->
    <van-dropdown-menu>
      <van-dropdown-item @change="placeChange" v-model="value1" :options="option1" />
      <van-dropdown-item v-model="value2" :options="option2" />
      <van-dropdown-item v-model="value3" :options="option3" />
      <van-dropdown-item v-model="value4" :options="option4" />
    </van-dropdown-menu>
  
    <!--  分割线  -->
    <hr class="hr">
  </div>

</div>

      <div class="liulan" @click="Chakan(i)" v-for="(ll,i) of list" :key="i">
      <!-- 心 -->
        <!-- <button v-if="!display" > -->
        <!-- </button> -->
        <!-- <button v-else> -->
           <!-- <img class="heart" @click="heart2(ll,i)" src="../assets/heart2.png"> -->
        <!-- </button> -->
      <!-- 心 -->
      <van-swipe @change="onChange" class="lunbotu">
        <van-swipe-item>
          <img :src="'http://127.0.0.1:5050/'+ll.pic" alt="">
        </van-swipe-item>
        <van-swipe-item>
          <img :src="'http://127.0.0.1:5050/'+ll.pic" alt="">
        </van-swipe-item>
        <van-swipe-item>
          <img :src="'http://127.0.0.1:5050/'+ll.pic" alt="">
        </van-swipe-item>
        <van-swipe-item>
          <img :src="'http://127.0.0.1:5050/'+ll.pic" alt="">
        </van-swipe-item>
        <!-- <div class="custom-indicator" slot="indicator"> -->
          <!-- {{ current + 1 }}/4 -->
        <!-- </div> -->
      </van-swipe>
      <div class="liulantitle">{{ll.title}}</div>
      <div class="liulanxiangqing"><span>{{ll.grade}}</span> · {{ll.subtitle}}</div>
      <div class="liulanpingjia">
        <span>{{ll.llqr}}</span>
        <span>{{ll.pjch}}</span>
        <span>{{ll.kdcw}}</span>
        <span>{{ll.czfd}}</span>
        </div>
        <div class="jiage">¥{{ll.price.toFixed(2)}}</div>
    </div>
    <div class="tianchong"></div>
  </div>
</template>
<script>
import {getSearch}  from '../apis/Search'
import {getProduct} from '../apis/Product'
  export default {
    data(){
      return {
        placeIP:"地址",
        SearchVal:"",
        Start:"",
        End:"",
        display:false,
        current: 0,
        list:[],
        activeKey: 0,
        lujing:"../assets/heart1.png",
      value1:0,
      value2:"a",
      value3:"A",
      value4:"I",
      option1:[
        { text: '全部', value: 0 },
        { text: '上海', value: 1 },
        { text: '北京', value: 2 },
        { text: '广州', value: 3 },
        { text: '郑州', value: 4 }
      ],
      option2:[
        { text: '人数', value: 'a' },
        { text: '成人', value: 'b' },
        { text: '儿童', value: 'c' },
        { text: '婴儿', value: 'c' },
        { text: '床铺数', value: 'c' }
      ],
       option3:[
        { text: '推荐排序', value: 'A' },
        { text: '好评优先', value: 'B' },
        { text: '低价优先', value: 'C' },
        { text: '高价优先', value: 'D' },
        { text: '人气优先', value: 'D' },
        { text: '距离优先', value: 'D' }
      ],
       option4:[
        { text: '筛选', value: 'I' }
      ],
      }
    },
    methods:{
      placeChange(){
        switch(this.value1){
          case 0 : this.placeIP="地址";
          break;
          case 1 : this.placeIP="上海";
          break;
          case 2 : this.placeIP="北京";
          break;
          case 3 : this.placeIP="广州";
          break;
          case 4 : this.placeIP="郑州";
          break;
        }
        getProduct().then(data=>{
          var addRes=data.slice(0,32);
          var arr123=[]
          for (var i=0;i<addRes.length;i++){
            if(addRes[i].lid == this.value1){
              arr123.push(addRes[i]);
              this.list = arr123;
            }else if(this.value1==0){
              arr123.push(addRes[i]);
              this.list = arr123;
            }
          } 
        });        
      },
      
      FindSearch(){
        getProduct().then(data=>{
            var addRes=data.slice(0,32)
            // this.list=addLl
            // console.log(addRes)
            var arr123=[]
          for(let a=0;a<addRes.length;a++){
            if(addRes[a].title.indexOf(this.SearchVal) != -1 ||
               addRes[a].subtitle.indexOf(this.SearchVal) != -1 
              ){
                arr123.push(addRes[a])
            }
            
            }
            this.list=arr123;
            // console.log(this.list)
          });  
        // var [...copylist]=this.list
        
       
        // this.list=arr123;
        // console.log(this.add123456)
        // var [...copylist]=this.list
        // console.log(copylist)
      },
      Djump(){
        this.$router.push("/date")
      },
      Chakan(i){
        this.$router.push({path:"/xq",query:{id:i,list:this.list[i]}})
      },
       onChange(index) {
      this.current = index;
    },
    heart1(){
      var addlu=["../assets/heart1.png","../assets/heart2.png"]
      if(this.lujing==addlu[1]){
      this.lujing=addlu[0]}else{this.lujing=addlu[1]}
    },
      fanhui(){
        this.$router.push("/")
      }
    },
   created(){
     if(this.$store.state.Riqidate.length>0){
        var addStart=this.$store.state.Riqidate[0].split("/")
        this.Start=addStart[1]+"."+addStart[2];
        var addEnd=this.$store.state.Riqidate[1].split("/")
        this.End=addEnd[1]+"."+addEnd[2];
        var Tian=addEnd[2]-addStart[2];
        this.Tian=Tian;
      }else{
        var myDate=new Date();
        // var myDate2=myDate.setDate(myDate.getDate()+1);
        var addDate=myDate.toLocaleDateString().split("/");
        this.Start=addDate[1]+"."+addDate[2];
        
        var myDate2=new Date();
        myDate2=myDate2.setDate(myDate2.getDate()+1);
        myDate2=new Date(myDate2);
        var addDate2=myDate2.toLocaleDateString().split("/");
        this.End=addDate2[1]+"."+addDate2[2];}
    getProduct().then(data=>{
            var addLl=data.slice(0,32)
            this.list=addLl
            // console.log(addLl)
          }); 
    getProduct().then(data=>{
      var addRes=data.slice(0,32);
      var arr123=[]
      for (var i=0;i<addRes.length;i++){
        if(addRes[i].lid == this.value1){
          arr123.push(addRes[i]);
          this.list = arr123;
        }else if(this.value1==0){
          arr123.push(addRes[i]);
          this.list = arr123;
        }
      } 
    });   
  },
  
  }
  
</script>
<style scoped>
.search_1{
  position: absolute;
  width: 22px;
  margin-left: -6px;
  margin-top: 6px;
}
.lidate{
  margin-top:-21px;
}
/* 心 */
.heart{
  position: absolute;
  left: 310px;
  z-index: 1;
  margin-top: 20px;
  /* border: gray; */
}
button{
  background: transparent;
  border: 0px;
}
/* head */
body, h1, h2, h3, h4, h5, h6, hr, p,ul, ol, li,button, input, textarea, th, td {
    margin: 0;
		padding: 0;
		box-sizing: border-box;
  }
  input,button{outline: none;}
  .header{
    margin:10px 0;
    display: flex;
  }
  /* 后退图标 */
  .retreat{
    border:0;
    background-color: transparent;
    padding: 5px  10px 0;
  }
  /* 搜索栏 */
  .hunt{
    display: flex;
    text-align: center;
    width:80%;
    height: 35px;
    border-radius:10px;
    background-color: #f2f3f7;
  }
  /* 搜索时间 */
  .hunt>.date{
    font-size: 8px;
    color:#25357373;
    font-weight: bold;
    padding-right:5px;
    line-height: 35px;
    margin-left: 10px;
    margin-top: -7px;
  }
  /* 搜索地址 */
  .hunt>.place{
    font-size: 14px;
    font-weight: bold;
    line-height: 35px;
  }
  /* 搜索框 */
  .hunt>.search>input{
    width:180px;
    border:0;
    outline: none;
    background-color: transparent;
    line-height: 35px;
    font-size: 14px;
  }
  .header>.hunt>div+div{
    padding: 0 5px 
  }
  
/* head */
    /* 浏览 */
.custom-indicator{
  position: absolute;
  top: 195px;left: 285px;
  border-radius: 50px;
  width: 40px;
  height: 20px;
  color: #fff;
  font-size: 13px;
  text-align: center;
  line-height: 20px;
  background-color: #000000b9;
}
.liulan{
  margin-top: 8%;
}
.lunbotu{
  margin-left:5%;
  position: relative;
}
.lunbotu img{
  border-radius: 10px;
}
.liulanpirce span{
  line-height: 25px;
  
}
.jiage{
 clear:both;
margin-bottom: 35px;
margin-left: 5%;
padding-top: 8px;
color: red;

}
.liulan .liulantitle{
  float: left;
  margin-left: 5%;
  font-size: 14px;
  font-weight: 600;
  margin-top: 5px;
}
.liulan .liulanxiangqing{
  float: left;
  margin-left: 5%;
  font-size: 13px;
  color: gray;
  margin-top: 5px;
}
.liulan .liulanxiangqing>span{
  color: rgba(235, 235, 55, 0.795);
}
.liulan .liulanpingjia{
  float: left;
  margin-left: 5%;
  font-size: 12px;
  margin-top: 5px;
}
.liulan .liulanpingjia>span{
  border: 1px solid #000;
  border-radius: 2px;
  font-size: 12px;
}
.liulan .liulanpingjia span:not(:first-child){
  margin-left: 4px;
}
.liulan .liulanpingjia span:first-child{
  color: #e7823e;
  border: 1px solid #e7823e;
}
.tianchong{
  margin-bottom: 90px;
  float:left
}
</style>
