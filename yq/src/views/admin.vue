<template>
    <div class="houtai">
    <van-tabs v-model="activeName">
        <van-tab title="统计分析" name="a">
            <h4>统计分析</h4>
            <div class="tongjifenxi">
                <div class="yonghurenshu">
                    <van-icon class="iiicon" size="60px" name="friends-o" />
                    <div class="fenxi1">用户人数</div>
                    <div class="fenxi2">{{Numuser}}人</div>
                </div>
                <div class="pingjunjine">
                    <van-icon class="iiicon" size="60px" name="balance-list-o" />
                    <div class="fenxi1">订单平均交易金额</div>
                    <div class="fenxi2">￥{{Psum.toFixed(2)}}</div>
                </div>
                <div class="dingdanjiaoyi">
                    <van-icon class="iiicon" size="60px" name="chart-trending-o" />
                    <div class="fenxi1">订单交易总金额</div>
                    <div class="fenxi2">￥{{sum.toFixed(2)}}</div>
                </div>
                <button @click="fanhuishouye" class="fanhuishouye">返回首页</button>
            </div>
        </van-tab>
        <van-tab title="用户注册资料" name="b">
            <h4>用户注册资料</h4>
            <table>
                <tr>
                    <th>ID</th>
                    <th>用户名</th>
                    <th>注册时间</th>
                    <th>操作</th>
                </tr>
                <tr v-for="(ll,i) of mnn" :key="i">
                    <td>{{i+1}}</td>
                    <td>{{ll.uname}}</td>
                    <td class="reggg">2019年12月19日 13:20</td>
                    <td>
                        <span @click="deluser(i)">删除</span>
                    </td>
                </tr>
            </table>
        </van-tab>
        <van-tab title="商品管理" name="c">
            <h4>商品管理</h4>
            <table>
                <tr>
                    <th>ID</th>
                    <th >标题</th>
                    <th>价格</th>
                    <th>操作</th>
                </tr>
                <tr v-for="(mm,i) of fmnn" :key="i">
                    <td>{{i+1}}</td>
                    <td class="biaoti">{{mm.title}}</td>
                    <td>411.00</td>
                    <td>
                        <span @click="bianji(i)">编辑</span>
                    </td>
                </tr>
            </table>
        </van-tab>
    </van-tabs>
    </div>
</template>
<script>
import {getProduct} from '../apis/Product'
import {getTest} from '../apis/Test'
export default {
  data() {
    //   if(this.$store.state.uname!=="admin"){
    //     return
    // }
    return {
      activeName: 'a',
      Numuser:0,
      sum:0,
      Psum:0,
      mnn:[],
      fmnn:[]
    };
  },
  methods:{
    deluser(i){
        this.$dialog.confirm({
            title: '删除用户',
            message: '是否删除用户'
            }).then(() => {
            // on confirm
            var url="/deluser"
            var list={uname:this.mnn[i].uname};
            getTest(url,list).then(data=>{
            
        })
            }).catch(() => {
            // on cancel
            });
        
    },
    modifyUser(){
        
    },
    bianji(i){
      this.$router.push({path:"/adminuser",query:{fmnn:this.fmnn[i]}});
    },
    fanhuishouye(){
      this.$router.push("/");
    }
  },
  created(){
      //查询用户数量
      var url="/admin";
      var list=[];
      getTest(url,list).then(data=>{
        //   console.log(data)
          this.Numuser=data.length-1;
        //   var msg1="所有用户信息"
        //   console.log(msg1,data)
          var addd=data.slice(1,1000);
        this.mnn=addd;

        //   console.log(this.Numuser)
      });
      //查询所有订单
      var url="/adminorder";
      var list=[];
      getTest(url,list).then(data=>{
        //   var msg2="所有订单信息"
        //   console.log(msg2,data)
          for(let i=0;i<data.length;i++){
              this.sum+=parseInt(data[i].price);
          }
        //   this.Psum=this.sum/data.length-1;
        this.Psum=this.sum/this.Numuser;
      });
      //查询所有房屋信息
      getProduct().then(data=>{
        //   var msg="所有房屋信息"
        //   console.log(msg,data)
          this.fmnn=data;
      })
  }
}
</script>
<style scoped>
.houtai h4{
    margin:0px;
    padding-top: 5%;
    padding-bottom: 3%;
    margin-left: 5%;
    width: 90%;
    margin-bottom: 8%;
    border-bottom: 1px solid rgba(61, 61, 61, 0.253);
}
.tongjifenxi .yonghurenshu{
    width: 90%;
    height: 100px;
    margin-left: 5%;
    position: relative;
    box-shadow: 0px 0px 5px 1px rgba(152,152,152,0.5);
    border-radius: 5px;
    margin-bottom: 8%;
} 
.tongjifenxi .pingjunjine{
    width: 90%;
    height: 100px;
    margin-left: 5%;
    position: relative;
    box-shadow: 0px 0px 5px 1px rgba(152,152,152,0.5);
    border-radius: 5px;
    margin-bottom: 8%;
} 
.tongjifenxi .dingdanjiaoyi{
    width: 90%;
    height: 100px;
    margin-left: 5%;
    position: relative;
    box-shadow: 0px 0px 5px 1px rgba(152,152,152,0.5);
    border-radius: 5px;
    margin-bottom: 8%;
} 
.tongjifenxi .iiicon{
    position: absolute;
    left: 15%;top: 20px;
}
.tongjifenxi .fenxi1{
    position: absolute;
    left: 150px;top: 20px;
    font-size: 18px;
    font-weight: 600;
}
.tongjifenxi .fenxi2{
    position: absolute;
    left: 150px;top: 50px;
    font-weight: 600;
    color: gray;
}
/* 用户注册资料 */

table{
    width: 90%;
    margin-left: 5%;
    table-layout: fixed;
}
table th{
    text-align: center;
    border-bottom: 1px solid rgba(61, 61, 61, 0.253);
}
table td{
    text-align: center;
    padding-left: 10px;
    padding-right: 10px;
    height: 40px;
    border-bottom: 1px solid rgba(61, 61, 61, 0.253);
    font-size: 14px;
    white-space: nowrap;/*控制单行显示*/
    overflow: hidden;/*超出隐藏*/
    
}
.reggg{
    overflow:scroll;
}
.biaoti{
    text-overflow: ellipsis;/*隐藏的字符用省略号表示*/
}
.fanhuishouye{
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