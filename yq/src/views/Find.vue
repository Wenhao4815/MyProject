<template>
    <div class="container">
        <div class="container1">
            <div class="Floor1">
                <div class="Floor1_1">
                    发现
                </div>
                <div class="Pxing">
                    <img class="ximg1" @click="Djump" src="../assets/Find/tougao.png" alt="">
                    <img class="ximg" src="../assets/Find/fenxiang.png" alt="">
                </div>
                
            </div>
        </div>
        <div class="container2">
            <van-swipe :autoplay="3000" indicator-color="white">
                <van-swipe-item><img class="lunbo" src="../assets/1.jpg" alt=""></van-swipe-item>
                <van-swipe-item><img class="lunbo" src="../assets/2.jpg" alt=""></van-swipe-item>
                <van-swipe-item><img class="lunbo" src="../assets/3.jpg" alt=""></van-swipe-item>
                <van-swipe-item><img class="lunbo" src="../assets/4.jpg" alt=""></van-swipe-item>
            </van-swipe>
        </div>
        <div class="container3">
            <div>
                <span class="Pont">精选推荐</span><span class="Font">城市民宿好吃好玩攻略</span>
            </div>
            <div class="jingxuan" @click="Findxqq(i)" v-for="(item,i) of finddd" :key="i">
                <div class="tuijian">
                <p>{{item.title}}</p>
                <div class="img1"><img :src="'http://127.0.0.1:5050/'+item.pic" alt=""></div>
                <div class="img2"><img :src="'http://127.0.0.1:5050/'+item.picc" alt=""></div>
                <div class="img3"><img :src="'http://127.0.0.1:5050/'+item.piccc" alt=""></div>
                <div>
                    <!-- <div class="touxiang"><img  :src="'http://127.0.0.1:5050/'+item.touxiang" alt=""></div> -->
                    <div class="wangming">{{item.uname}} <span>{{item.dizhi}}</span></div>
                    
                    <van-icon class="xiaohuo" name="fire-o" />
                    <div class="reduzhi">热度值{{Redu}}</div>
                </div>
            </div>
           </div>
            <!-- <div class="jingxuan" v-for="(item,i) of fff" :key="i">
                <div class="tuijian">
                <p>{{item.title}}</p>
                <div class="img1"><img :src="'http://127.0.0.1:5050/'+item.bigpic" alt=""></div>
                <div class="img2"><img :src="'http://127.0.0.1:5050/'+item.smallpic" alt=""></div>
                <div class="img3"><img :src="'http://127.0.0.1:5050/'+item.smallpicc" alt=""></div>
                <div>
                    <div class="touxiang"><img  :src="'http://127.0.0.1:5050/'+item.touxiang" alt=""></div>
                    <div class="wangming">{{item.wangming}}</div>
                    <div class="dizhi">{{item.dizhi}}</div>
                    <van-icon class="xiaohuo" name="fire-o" />
                    <div class="reduzhi">热度值 {{item.reduzhi}}</div>
                </div>
            </div>
           </div> -->
           
            
        </div>
    <div class="dhll">
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
import {getFind} from '../apis/Find'
import { getTest } from '../apis/Test'
export default {
    data() {
    return {
      activex: 0,
      activef:3,
      activefind:2,
      fff:[],
      finddd:[],
      Redu:0,
    }
  },
  created(){
    getFind().then(data=>{
            this.fff=data
            // console.log(data)
          })
    var url="/Findfx";
    var list={};
    getTest(url,list).then(data=>{
        // console.log(data)
        this.finddd=data.reverse();
    })
    this.Redu=Math.round(Math.random()*100); 
    
  },
  methods:{
      Findxqq(i){
          this.$router.push({path:"/Findxq",query:{
        //   id:this.$router.id,
          title:this.finddd[i].title,
          context:this.finddd[i].context,
          dizhi:this.finddd[i].dizhi,
          pic:this.finddd[i].pic,
          picc:this.finddd[i].picc,
          piccc:this.finddd[i].piccc,
          uname:this.finddd[i].uname,}})
        //   console.log(title)
      },
    //   Findxqq(i){
    //       this.$router.push("/Findxq")
    //       this.$router.push({path:"/Findxq",query:{id:i,list:this.list[i]}})
    //   },
      Djump(){
          if(this.$store.state.uname!=''){
          this.$router.push("/WriteFind")
      }else{
          this.$router.push("/login")
      }
  }}
}
</script>
<style  scoped>
.dhll{
    margin-top: 80px;
}
/* 精选推荐 */
.jingxuan{
    /* width: 90%; */
    /* margin-left: 5%; */
    /* border: 1px solid gray; */
    border-radius: 5px;
    position: relative;
    height: 230px;
    background: #fff;
    box-shadow: 0px 0px 10px 5px rgba(152,152,152,0.5);
    margin-bottom: 30px;
    margin-top: 30px;
}
.tuijian{
    margin-left: 5%;
    width: 90%;
}
.jingxuan p{
    font-weight: 600;
    padding-top: 15px;
}
.tuijian img{
    border-radius: 5px;
}
.img1>img{
    position: absolute;
    width: 60%;
}
.img2>img{
    position: absolute;
    left: 230px;
    width: 28%;
}
.img3>img{
    position: absolute;
    top:127px;left: 230px;
    width: 28%;
}
.wangming{
    position: absolute;
    top:205px;left: 23px;
    font-size: 13px;
}
.wangming span{
    color: gray;
    font-size: 13px;
}
.reduzhi{
    position: absolute;
    top:205px;left:268px;
    font-size: 13px;
}
.xiaohuo{
    position: absolute;
    top:207.5px;left:252px;
    font-size: 13px;
}

.touxiang{
    border-radius:50% 50%;
    position: absolute;
    top:200px;left: 12px;
}
.touxiang>img{
    width: 8%;
    border-radius:50% 50%;
}
/* 精选推荐 */
.Pont{
    font-weight: 800;
    font-size: 21px;
}
.Font{
    margin-left: 5px;
    color: #c1c1c1;
    font-size: 12px;
}
.lunbo{
    width: 100%;
    height: 200px;
    border-radius:10px; 
}
.ximg1{
    margin-right: 20px;
    width: 25px;
    height: 25px;
}
.ximg{
    /* margin-top: -10px; */
    width:25px;
    height: 25px;
}
.Pxing{
    margin: 5px;
}
.Floor1_1{
    color: #fff;
    font-size: 25px;
}
.container3{
    padding-left:5% ;
    padding-right:5%; 
    
}
.container2{
    padding: 5%;
    margin-top: -180px;
}
.Floor1{
    display: flex;
    background: #25357373;
    justify-content: space-between;
    height: 200px;;
    padding: 5%;
}
.dhll{
    margin-top:70px;
}
</style>