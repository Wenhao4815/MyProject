<template>
    <div class="xqy">
        <div class="lunbo_header">
             <img class="jiantou" @click="Jump" src="../assets/left2.png" alt="">
            <div class="heartt"  @click="uFavorite">
                <button v-if="display==false">
                    <img  class="heart"  src="../assets/heart1.png">
                </button>
                <button v-else>
                    <img class="heart"  src="../assets/heart2.png">
                </button>
            </div>
            
            <van-swipe @change="onChange" :autoplay="3000">
                <van-swipe-item>
                    <img class="lunbo-img" :src="'http://127.0.0.1:5050/'+StringTitle.pic" alt="">
                </van-swipe-item>
                <van-swipe-item>
                    <img class="lunbo-img" :src="'http://127.0.0.1:5050/'+StringTitle.picc" alt="">
                </van-swipe-item>
                <van-swipe-item>
                    <img class="lunbo-img" :src="'http://127.0.0.1:5050/'+StringTitle.piccc" alt="">
                </van-swipe-item>
                <van-swipe-item>
                    <img class="lunbo-img" :src="'http://127.0.0.1:5050/'+StringTitle.picccc" alt="">
                </van-swipe-item>
            </van-swipe>
        </div>
        <div class="zt_container">
            <section>   
                <div class="detail_title">
                    <h2 class="react_root">
                        <h4 class="text_clamp">{{StringTitle.title}}</h4>
                    </h2>
                </div>
                <div class="mt-3">
                    <van-tag class="tag-content" color="#f2826a">{{StringTitle.llqr}}</van-tag>
                    <van-tag class="tag-content" color="#f2826a" plain>{{StringTitle.pjch}}</van-tag>
                    <van-tag class="tag-content" color="#7232dd">{{StringTitle.kdcw}}</van-tag>
                    <van-tag class="tag-content" color="#7232dd" plain>{{StringTitle.czfd}}</van-tag>
                </div>
            </section>
            <div class="product_content">
                <div class="product_detail">
                    <section>
                        <div class="page-card mt-4">
                            <div class="react-root">
                                <div class="specification">
                                    <ul class="specification_list">
                                        <li class="spec-item spec-room">
                                            <img src="../assets/fz.png" />
                                            <div>
                                                <div class="value">整套</div>
                                                <div class="subvalue">{{StringTitle.area}}m²</div>
                                            </div>
                                        </li>
                                        <li class="spec-item spec-room">
                                            <img src="../assets/ws.png" />
                                            <div>
                                                <div class="value">一间卧室</div>
                                                <div class="subvalue">{{StringTitle.bed}}</div>
                                            </div>
                                        </li>
                                        <li class="spec-item spec-room">
                                            <img src="../assets/c.png" />
                                            <div>
                                                <div class="value">宜居{{StringTitle.value}}人</div>
                                                <div class="subvalue">{{StringTitle.subvalue}}</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="page-card mt-4">
                                <div class="promo">
                                    <div class="line-group">
                                        <div class="label">促销</div>
                                        <van-tag color="#f2826a">连住优惠</van-tag>
                                        <van-tag color="#f2826a">学生特价</van-tag>
                                        <van-tag color="#f2826a">首单特惠</van-tag>
                                        
                                    </div>
                                </div>                               
                            </div>
                        </div>
                        <div class="datee" @click="Djump">
                                <div class="rudatee">{{Start}} &nbsp;入住</div>
                                <div class="tianshu">共{{Tian}}天</div>
                                <div class="lidatee">{{End}}&nbsp;离店</div>
                        </div>
                    </section>
                    <section id="J-hostModule">
                        <section class="hostModule">
                            <h3>
                                房东
                                <span class="en">host</span>
                            </h3>
                            <div class="host-card">
                                <div class="host-inof">
                                    <div class="host-intro">
                                        <van-image
                                            width="56"
                                            height="56"
                                            src="https://img.yzcdn.cn/vant/cat.jpeg"
                                        />
                                        <div class="content">
                                            <div class="mt-1">慕晓晓</div>
                                            <div class="host-tag">
                                                <van-tag plain type="primary" class="mr-2">已实名认证</van-tag>
                                                <van-tag plain>00后狮子座</van-tag>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="host-score-board">
                                        <van-tabs>
                                            <van-tab title="评价数">151</van-tab>
                                        </van-tabs>
                                        <van-tabs>
                                            <van-tab title="回复率">98%</van-tab>
                                        </van-tabs>
                                        <van-tabs>
                                            <van-tab title="房源数">12套</van-tab>
                                        </van-tabs>
                                    </ul>
                                </div>
                                <van-divider />
                                <ul class="host-house-description" itemprop="description" content="我没有别的办法，我就有爱；我没有别的天才，就是爱；没有别的能耐，只是爱；我爱你，并且还要一直爱下去。— 徐志摩致陆小曼 现代简约风的装修，拍照片高尚大气上档次~ 嘿嘿嘿~ 投影仪搭配舒适的沙发，秒变家庭影院~ 开放式厨房，做饭时也能和爱人说一些土味情话~ 两人三餐四季 不正是我们所期待的吗~">
                                    <li>我没有别的办法，我就有爱；</li>
                                    <li>我没有别的天才，就是爱；</li>
                                    <li>没有别的能耐，只是爱；</li>
                                    <li>我爱你，并且还要一直爱下去。</li>
                                    <li>— 徐志摩致陆小曼</li>
                                    <li>现代简约风的装修，拍照片高尚大气上档次~</li>
                                    <li>嘿嘿嘿~</li>
                                    <li>投影仪搭配舒适的沙发，秒变家庭影院~</li>
                                    <li>开放式厨房，做饭时也能和爱人说一些土味情话~ </li>
                                    <li>两人三餐四季 不正是我们所期待的吗~</li>
                                </ul>
                            </div>
                        </section>
                    </section>
                    <section id="J-locationModule">
                        <h3>
                                房源位置
                                <span class="en">location</span>
                        </h3>
                        
                        <div class="mapmap">
                            <baidu-map class="map" :center="{lng:StringTitle.lng, lat: StringTitle.lag}" :zoom="12">
                                <bm-navigation anchor="BMAP_ANCHOR_TOP_LEFT"></bm-navigation>
                                <bm-geolocation anchor="BMAP_ANCHOR_BOTTOM_RIGHT" :showAddressBar="true" :autoLocation="true"></bm-geolocation>
                                <bm-info-window :position="{lng:StringTitle.lng, lat: StringTitle.lag}" title="民宿地址" :show="infoWindow.show" @close="infoWindowClose" @open="infoWindowOpen" :height="60">
                                <p v-text="infoWindow.make"></p>
                                <!-- <button @click="clear">Clear</button> -->
                                </bm-info-window>
                            </baidu-map>
                        </div>
                    </section>
                    <div>
                        <section class="review-list-container">
                            <div class="header-title">
                                <h3>客房评价</h3>
                                <span class="no-score">
                                    <img @click="Ejump" class="jian_tou" src="../assets/Path.png" alt="">
                                </span>
                            </div>
                        </section>
                    </div>
                    <div class="booking">
                        <section class="booking-notice">
                            <h3>预订须知</h3>
                            <div class="top-separator">
                                <h4>退订政策</h4>
                                <div class="collapsable">
                                    <p>·【宽松】入住前1天12:00前退订，可获100%退款。之后退订不退款</p>
                                </div>
                            </div>
                            <van-divider class="bf" />
                            <div class="top-separator">
                                <h4>预定时长</h4>
                                <div class="collapsable">
                                    <p>·随时可预订</p>
                                    <p>·最少预订1天，最多预订天数不限</p>
                                </div>
                            </div>
                            <van-divider class="bf" />
                            <div class="top-separator">
                                <h4>入住须知</h4>
                                <div class="collapsable">
                                    <p>·入住时间：15:00后</p>
                                    <p>·退房时间：12:00前</p>
                                </div>
                            </div>
                            <van-divider class="bf" />
                            <div class="top-separator">
                                <h4>客人须知</h4>
                                <van-collapse v-model="activeName" accordion>
                                    <van-collapse-item title="注意事项" name="1">·适合儿童（2-12岁）、适合婴幼儿（2岁以下）、适合老人（60岁以上）、<span class="Name">允许抽烟、允许聚会、允许做饭、允许携带宠物</span></van-collapse-item>
                                    <van-collapse-item title="注意事项" name="2">·退房时请将门禁卡放回原位，关闭电灯、空调等电器，关上门，就可以开始您的下一站行程了。押金会在查房后1~3天由平台退还至您的原账户里 请注意节约用电，如电费超过40度 需要额外收费的哦 请正确使用毛巾浴巾，勿作地垫、抹布等其他用途，如发现污损严重，需照价索赔的哦</van-collapse-item>
                                </van-collapse>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_footer">
            <van-submit-bar
            :price="(StringTitle.price*100*Tian)"
            button-text="提交订单"
            @submit="onSubmit"
            />
        </div>
    </div>
</template>
<script>
import {getXq} from '../apis/xq'
import {getProduct} from '../apis/Product'
    export default {
    data() {
    return {
        display:false,
        Start:"",
        End:"",
        Tian:1,
        activeName: '1',
        current: 0,
        active: 2,
        value:"",
        StringTitle:[],
        infoWindow: {
        show: true,
        make:"",
      }
        };

    },
    methods: {
        Ejump(){
            this.$router.push({path:"/Evaluation",query:{pid:this.$route.query.list.id}})
        },
        onSubmit(){
            if(this.$store.state.uname!==""){
                this.$router.push({path:'/Tijiao',query:{pic:this.StringTitle.pic,title:this.StringTitle.title,subtitle:this.StringTitle.subtitle,
                id:this.StringTitle.id,
                price:this.StringTitle.price}});}else{
                    this.$dialog.confirm({
                title: '消息',
                message: '请登录'
                }).then(() => {
                this.$router.push("/Login");
                }).catch(() => {
                // on cancel
                });
                }
        },
        uFavorite(e){
            e.stopPropagation();
            if(this.$store.state.uname!==""){
            //获取用户名和房屋的pid
            var uname=this.$store.state.uname;
            var pid=this.StringTitle.id;
            var urlde="/xqdet"
            //发送ajax请求 检索用户是否收藏过此商品
            this.axios.post(urlde,{uname:uname,pid:pid}).then(
                //获取服务器检索结果
                res=>{
                    if(res.data.code==200){
                        this.display=true;
                        this.$toast("您已经收藏过此房屋")
                        return
                    }else{
                        //获取商品详情 对象转JSON格式
            var jsonStringTitle=JSON.stringify(this.StringTitle); 
            //JSON转对象格式 
            // JSON.parse(jsonStringTitle)

            // 发送ajax请求
            var url="/xq";
            // var obj={uname:u,upwd:p1};
            this.axios.post(url,{uname:uname,price:jsonStringTitle,pid:pid}).then(
                //获取服务器返回结果
                res=>{
                    if(res.data.code==-1){
                        this.display=true;
                        this.$toast("您已收藏过此房屋")
                    }else{
                        this.display=true;
                        this.$toast("收藏成功")
                        // this.$router.push("/Login")
                    }
                }
            )
                    }
                }
            )

            }else{
               this.$dialog.confirm({
                title: '消息',
                message: '请登录'
                }).then(() => {
                this.$router.push("/Login");
                }).catch(() => {
                });
            }
        },
      
        Djump(){
            this.$router.push("/date")
        },
        onChange(index) {
        this.current = index;
        },
        Jump(){
            this.$router.go(-1)
        },
        infoWindowClose (e) {
        this.infoWindow.show = false
        },
        infoWindowOpen (e) {
        this.infoWindow.show = true
        },
        clear () {
        this.infoWindow.contents = ''
        }
        },
    created(){
        var id=this.$route.query.id;
        var list=this.$route.query.list;
        this.StringTitle=list;
        this.infoWindow.make=list.title;
        if(this.$store.state.Riqidate.length>0){
        var addStart=this.$store.state.Riqidate[0].split("/")
        this.Start=addStart[1]+"."+addStart[2];
        var addEnd=this.$store.state.Riqidate[1].split("/")
        this.End=addEnd[1]+"."+addEnd[2];
        var Tian=addEnd[2]-addStart[2];
        this.Tian=Tian;
      }else{
        var myDate=new Date();
        var addDate=myDate.toLocaleDateString().split("/");
        this.Start=addDate[1]+"."+addDate[2];
        
        var myDate2=new Date();
        myDate2=myDate2.setDate(myDate2.getDate()+1);
        myDate2=new Date(myDate2);
        var addDate2=myDate2.toLocaleDateString().split("/");
        this.End=addDate2[1]+"."+addDate2[2];}
        getProduct().then(data=>{
            var addLl=data.slice(0,32)
            this.list=addLl;
          });   
        var uname=this.$store.state.uname;
        var pid=this.StringTitle.id;
        var urlde="/xqdet"
        //发送ajax请求 检索用户是否收藏过此商品
        this.axios.post(urlde,{uname:uname,pid:pid}).then(
            //获取服务器检索结果
            res=>{
                if(res.data.code==200){
                    this.display=true;
            }});

    // var url = "/ShoucangFavorite";
    // var pid = this.StringTitle.id;
    // this.axios.get(url,{params:pid}).then((err,res)=>{
    //     if (err) throw err;
    //     if (res.result>0){
    //         this.display=true;
    //     }
    // })  
        
  },
}
    
    
</script>
<style scoped>
.jian_tou{
    width: 20px;
    height: 20px;
}
.heartt{
    height: 0px;
}
.lunbo_header button{
    outline: none;
    border:0;
    background-color: transparent;
}
.favorite{
    float: right;
}
.lunbo_header{
    width: 93%;
    height:240px;
    margin-left: 3.5%;
    padding-top: 3%;
    position: relative;
}
.heart{
    position: absolute;
    top:27px;
    right:10px;
    z-index: 10;
}
.lunbo-img{
    margin-top:10px;
    border-radius: 10px;
}
.BMap_bubble_content p{
    font-size: 13px;
}
.datee{
  width: 99%;
  height: 50px;
  /* background-color: #ffffff; */
  box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
  line-height: 50px;
  /* border: 1px solid green; */
  margin-top: 5%;
  border-radius: 10px;
  color: gray;
}
.datee .rudatee{
  float: left;
  margin-left: 4%;

}
.datee .lidatee{
  float: right;
  margin-right: 4%;

}
.datee .tianshu{
    float: left;
    margin-left: 16.5%;
}
.line-group .van-tag{
    margin-left: 10px;
}
.mapmap{
  margin-top: 10%;
  margin-bottom: 10%;
  
}
.map {
  width: 99%;
  margin-left: 0.5%;
  height: 250px;
}
    .jiantou{
       position: absolute;
       z-index: 999; 
       width: 20px;
       height: 20px;
       margin-top: 15px;
       margin-left: 10px;
    }
/* body的样式 */
    body{
        color: #333;
        font-size: .14rem;
    }
/* zt_container样式 */
    .zt_container{
        padding:1rem 1rem 3rem 1rem; 
    }
/* lunbo_header样式 */
    .lunbo-img{
        width:100%;
        height:230px;
    }
/* .breadcrumbs样式 */
    .breadcrumbs{
        font-size:0.75rem;
        margin-top:12px;
        margin-bottom:12px;
        padding-left:20px;
    }
    .breadcrumbs ul{
        display: flex;
        color:#aaa !important;
    }
    .breadcrumbs ul>li{
        display:inline;
    }
/* .detail_title样式 */
    .detail_title{
        margin-top:16px;
    }
    .react_root{
        padding:0;
        margin:0;
        font-family: serif;
        font-weight:600;
        line-height: 1.4;
    }
    .text_clamp{
        padding:0;
        padding-left:15px;
        margin:0;
        line-height: 1.6;
        text-align:left;
        font-size:20px;
        color:#252626;
    }
/*  mt-3样式 */
    .mt-3{
        margin-top:0.75rem;
    }
    .tag-content{
        margin-right:15px;
    }
/* page-card mt-4样式 */
    .page-card{
        border-radius: 0.5rem;
        /* background:#fff; */
        box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
    }
    .mt-4{
        margin-top:1rem;
    }
    .specification{
        padding:0.75rem 1rem;
        max-width:30.625rem;
    }
    .specification_list{
        display:flex;
        justify-content: space-between;
        font-size: 14px;
    }
    .specification_list .spec-item{
        background-repeat: no-repeat;
        background-size: 25px 25px;
        background-position: 0;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
    }
    .specification_list .value{
        font-size:14px;
        color:#252626;
    }
    .specification_list .subvalue {
        margin-top: 4px;
        color: #8a9094;
    }
    .spec-item img{
        width:20px;
        height:20px;
        margin-right:6px;
    }
    .promo{
        padding:0.75rem 1rem;
    }
    .promo .line-group{
        display:flex;
    }
    .promo .line-group .label {
        color: #8a9094;
        margin-right: 8px;
        line-height: 20px;
}
/* hostmodule样式 */
    .hostModule h3{
        margin-top:32px;
        position: relative;
        font-size: 24px;
        color: #252626;
        text-align:left;
        padding-left:10px;
        margin-bottom: 12px;
    }
    .hostModule h3>.en{
        position: absolute;
        top: 0;
        font-size: 10px;
        color: #d0d4d9;
        font-weight: 500;
        font-style: italic;
        margin-left: 4px;
        text-transform: uppercase;
    }
/* .host-card样式 */
    .host-card{
        padding: 12px 8px;
        border-radius: 8px;
        /* background: #fff; */
        box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
    }
/* .host-inof样式 */
    .host-card .host-inof{
        display: flex;
        position: relative;
        -webkit-box-pack: justify;
        justify-content: space-between;
        -webkit-box-align: center;
        align-items: center;
        flex-wrap:wrap;
    }
/* .host-intro样式 */
    .host-card .host-intro{
        display: flex;
        margin-bottom: 16px;
        -webkit-box-flex: 1;
        flex: 1;
        min-width: 60%;
    }
    .host-card .host-intro .content{
        margin-left:8px;
        padding-top:4px;
    }
    .host-card .host-intro .content .mt-1{
        margin-bottom:4px;
    }
    .host-card .host-intro .content .host-tag{
        padding-top:4px;
    }
    .host-intro .content .host-tag .mr-2{
        margin-right:8px;
    }
/* host-score-board样式 */
    .host-card .host-score-board{
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        min-width: 240px;
        margin-bottom: 16px;
        list-style: none;
    }
    .host-card .host-house-description{
        line-height: 19px;
        color: #333;
        text-align:left;
        font-size: .14rem;
        list-style: none;
        margin: 0;
        padding: 0;
    }
    .host-score-board .van-tab__pane{
        margin-left: 11px;
        margin-top: 5px;
    }
/* J-locationModule样式 */
    #J-locationModule h3{
        margin-top:32px;
        position: relative;
        font-size: 24px;
        color: #252626;
        text-align:left;
        padding-left:10px;
        margin-bottom: 12px;
    }
    #J-locationModule h3>.en{
        position: absolute;
        top: 0;
        font-size: 10px;
        color: #d0d4d9;
        font-weight: 500;
        font-style: italic;
        margin-left: 4px;
        text-transform: uppercase;
    }
/* review-list-container样式 */
    .review-list-container{
        padding: 0 0.15rem;
        margin-bottom: 0.5rem;
        /* background-color: #fff; */
        box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
        border-radius: 8px;
    }
    .header-title{
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        justify-content: space-between;
        margin-top:8px;
        padding-left:3%;
        padding-right:3%; 
    }
    .header-title h3{
        padding: 0.15rem 0;
        color: #333;
    }
    .header-title .no-score{
        font-size: 0.14rem;
        color: #888;
    }
/* booking-notice样式 */    
    .booking-notice{
        padding-left:3%;
        padding-right:3%; 
        margin-bottom: 0.7rem;
        /* background-color: #fff; */
        box-shadow: 0px 0px 8px 1px rgba(152,152,152,0.5);
        border-radius: 8px;
    }
    .booking-notice h3{
        text-align:left;
        margin:0;
        padding:1rem 0 1rem 0;
        color: #333;
    }
    .top-separator{
        padding-bottom:1rem;
    }
    .top-separator h4{
        margin:0;
        padding:0 0 1rem 0;
        text-align: left;
        color:#888;
    }
    .top-separator p{
        margin:0;
        text-align: left;
    }
    .bf{
        padding:15px;
        margin:0px;
        color:#555;
    }
    .Name{
        color: #979797;
        text-decoration: line-through;
    }
/* vipx_footer */

/********************************************************/
</style>
