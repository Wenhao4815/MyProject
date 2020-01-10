import axios from "axios";
//模块都是单例模式:整个内存中只有一个axios，只不过被导出引用着使用而已。
//所以，这里import的axios，就是main.js中配置的axios对象。

export function getFind(){
  return new Promise((resolve,reject)=>{
    axios.get("/Find").then(result=>{
      resolve(result.data)
    })
  })
}