//功能：云栖民宿服务器程序
//1:下载四个第三方模块
//express           web服务器
//mysql             mysql驱动
//express-session   会话对象
//cors              跨域
//[8080脚手架   5050]
//npm i express mysql express-session cors
//2:引入第三方模块
const express = require("express");
const session = require("express-session");
const mysql = require("mysql");
const cors = require("cors");
//3:创建数据库连接池
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   connectionLimit:15,
   database:"ms"
//    host:process.env.MYSQL_HOST,
//  port:process.removeListener.MYSQL_PORT,
//  user:process.env.ACCESSKEY,
//  password:process.env.SECRETKEY,
//  DATABASE:"app_" + process.env.APPNAME,
//  connectionLimit:15
})
//4:创建web服务器
var server = express();
var bodyParser = require('body-parser')
server.use(bodyParser.urlencoded({ extended: false }))
server.use(bodyParser.json())
//5:配置跨域
//允许跨域程序端口
server.use(cors({
    //允许哪个程序列表 脚手架
    origin:["http://127.0.0.1:8080",
    "http://localhost:8080"],
    //每次请求验证
    credentials:true
}));
//6:配置session对象
server.use(session({
   secret:"128位安全字符串",//加密条件
   resave:true,            //请求更新数据
   saveUninitialized:true  //保存初始化数据
}))
//7:指定静态目录  public
server.use(express.static("public")); 
//8:启动监听端口  5050
server.listen(5050);

// 主页
server.get("/Home",(req,res)=>{
  var sql="SELECT * FROM `ms_home_xiaoimg` WHERE xid!=0 ORDER BY xid";
  pool.query(sql,[],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"http://127.0.0.1:5500"
    // });
    res.write(JSON.stringify(result));
    res.end();
  })
})
// 收藏
server.get("/Shoucang",(req,res)=>{
  var sql="SELECT * FROM `ms_xiangqing` WHERE id!=0 ORDER BY id";
  pool.query(sql,[],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"http://127.0.0.1:5500"
    // });
    res.write(JSON.stringify(result));
    res.end();
  })
})
//详情
server.get("/Product",(req,res)=>{
  var sql="SELECT * FROM `ms_xiangqing` WHERE id!=0 ORDER BY id";
  pool.query(sql,[],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"http://127.0.0.1:5500"
    // });
    res.write(JSON.stringify(result));
    res.end();
  })
})
//功能    发现页面
server.get("/Find",(req,res)=>{
  var sql="SELECT * FROM `ms_faxian` WHERE id!=0 ORDER BY id";
  pool.query(sql,[],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"http://127.0.0.1:5500"
    // });
    res.write(JSON.stringify(result));
    res.end();
  })
})
//检索   用户是否收藏过此商品
server.post("/xqdet",(req,res)=>{
  var uname=req.body.uname;
  var pid=req.body.pid;
  // console.log(req.body)
  var sql="SELECT * FROM `ms_favorite` WHERE uname=? AND pid=?";
  pool.query(sql,[uname,pid],(err,result)=>{
    if(result.length>0){
      res.send({code:200,rst:result[0]});
    }else{
      res.send({code:301,msg:'not found'});
    }
  })
})


//用户取消收藏
server.post("/scdel",(req,res)=>{
  var uname=req.body.uname;
  var pid=req.body.pid;
 var sql="DELETE FROM ms_favorite WHERE uname=? AND pid=?"
 //发送sql 请求 并且返回脚手架
 pool.query(sql,[uname,pid],(err,result)=>{
   if(err) throw err;
   if(result.affectedRows>0){
     res.send({code:1,msg:"取消成功"})
   }else{
     res.send({code:-1,msg:"取消失败"})
   }
 })
})
//功能  用户下单
server.post("/order",(req,res)=>{
  var uname=req.body.uname;
  var pid=req.body.pid;
  var ordertime=req.body.ordertime;
  var title=req.body.title;
  var pic=req.body.pic;
  var subtitle=req.body.subtitle;
  var price=req.body.price;
  var checktime=req.body.checktime;
  // console.log(req.body)
  var sql="INSERT INTO ms_userorder(uname,pid,ordertime,title,pic,subtitle,price,checktime) VALUES(?,?,?,?,?,?,?,?)"
  // 发送sql 请求 并且返回脚手架
  pool.query(sql,[uname,pid,ordertime,title,pic,subtitle,price,checktime],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"下单成功"})
    }else{
      res.send({code:-1,msg:"下单失败失败"})
    }
  })
  })
//功能  查询此用户下单数据
server.post("/myorder",(req,res)=>{
  var uname=req.body.uname;
  // console.log(req.body)
  var sql="SELECT * FROM `ms_userorder` WHERE uname=?";
  pool.query(sql,[uname],(err,result)=>{
    res.write(JSON.stringify(result));
    res.end();
  })
})

//功能   查询房屋的评价
server.post("/Evaluation",(req,res)=>{
  var pid=req.body.pid;
  // console.log(req.body)
  var sql="SELECT * FROM `ms_evaluation` WHERE pid=?"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    res.write(JSON.stringify(result));
    res.end();
  })
})


//功能   提交评价
server.post("/Write",(req,res)=>{
  var uname=req.body.uname;
  var pid=req.body.pid;
  var context=req.body.context;
  // console.log(req.body)
  var sql="INSERT INTO ms_evaluation(uname,pid,context) VALUES(?,?,?)"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[uname,pid,context],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"收藏成功"})
    }else{
      res.send({code:-1,msg:"收藏失败"})
    }
  })
})
//功能  提交发现
server.post("/WriteFind",(req,res)=>{
  // console.log(req.body)
  var uname=req.body.uname;
  var context=req.body.context;
  var title=req.body.title;
  var dizhi=req.body.dizhi;
  var pic=req.body.pic;
  var picc=req.body.picc;
  var piccc=req.body.piccc;
  var sql="INSERT INTO ms_findtext(uname,title,dizhi,context,pic,picc,piccc) VALUES(?,?,?,?,?,?,?)"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[uname,title,dizhi,context,pic,picc,piccc],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"提交成功"})
    }else{
      res.send({code:-1,msg:"提交失败"})
    }
  })
})


//功能  查询所提交的发现内容
server.post("/Findfx",(req,res)=>{
  var sql="SELECT * FROM `ms_findtext` WHERE id!=0 ORDER BY id";
  pool.query(sql,[],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"http://127.0.0.1:5500"
    // });
    res.write(JSON.stringify(result));
    res.end();
  })
})




//功能   收藏商品
server.post("/xq",(req,res)=>{
   var funame=req.body.uname;
   var fprice=req.body.price;
   var fpid=req.body.pid;
  var sql="INSERT INTO ms_favorite(uname,pid,title) VALUES(?,?,?)"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[funame,fpid,fprice],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"收藏成功"})
    }else{
      res.send({code:-1,msg:"收藏失败"})
    }
  })
})

//功能    查询用户收藏的商品
server.post("/ShoucangFavorite",(req,res)=>{
  var uname=req.body.uname;
  // console.log(req.body)
  var sql="SELECT * FROM `ms_favorite` WHERE uname=?";
  pool.query(sql,[uname],(err,result)=>{
    // res.writeHead(200,{
    //   "Access-Control-Allow-Origin":"http://127.0.0.1:5500"
    // });
    res.write(JSON.stringify(result));
    res.end();
  })
})



//功能   用户注册
server.post("/Reg",(req,res)=>{
  // console.log(req.body)
  var zuname=req.body.uname;
  var zupwd=req.body.upwd1;
  var sql="INSERT INTO ms_login(uname,upwd) VALUES(?,md5(?))"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[zuname,zupwd],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"})
    }else{
      res.send({code:-1,msg:"删除失败"})
    }
  })
})


//功能   后台管理系统

//查询   所有用户
server.post("/admin",(req,res)=>{
  var sql="SELECT * FROM `ms_login` WHERE id!=0 ORDER BY id"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.write(JSON.stringify(result));
    res.end();
  })
})

//查询   所有用户订单
server.post("/adminorder",(req,res)=>{
  var sql="SELECT * FROM `ms_userorder` WHERE id!=0 ORDER BY id"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.write(JSON.stringify(result));
    res.end();
  })
})

//管理   删除某位用户数据
server.post("/deluser",(req,res)=>{
  var uname=req.body.uname;
  var sql="DELETE FROM ms_login WHERE uname=?;"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[uname],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"注册成功"})
    }else{
      res.send({code:-1,msg:"注册失败"})
    }
  })
})

//编辑   修改房源信息
server.post("/modproduct",(req,res)=>{
  // console.log(req.body)
  var id=req.body.id;
  var title=req.body.title;
  var price=req.body.price;
  var sql="UPDATE ms_xiangqing SET title = ? , price = ?  WHERE id = ?;"
  //发送sql 请求 并且返回脚手架
  pool.query(sql,[title,price,id],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"修改成功"})
    }else{
      res.send({code:-1,msg:"修改失败"})
    }
  })
})





//功能   完成用户登录验证
server.get("/login",(req,res)=>{
  //1:获取参数 uname upwd
  var n = req.query.uname;
  var p = req.query.upwd;
  //2:创建sql
  var sql =" SELECT id FROM ms_login WHERE uname = ? AND upwd = md5(?)";
  //3:发送sql并且结果返回脚手架
  pool.query(sql,[n,p],(err,result)=>{
     //4:如果发生严重错误抛出
     if(err)throw err;
     //5:登录成功用户名密码有错
     if(result.length==0){
       res.send({code:-1,msg:"用户名或密码有误"})
     }else{
       //6:登录成功
       //7:将登录成功用户id保存
       //session对象作为登录成功凭据
       //result=[{id:1}]
       //不写req.session.id error
      //  req.session.uid=result[0].id;
       res.send({code:1,msg:"登录成功"});
     }
  })
})