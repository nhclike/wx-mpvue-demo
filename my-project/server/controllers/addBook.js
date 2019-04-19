
//新增图书
//1获取豆瓣读书数据
//2插入到数据库

const https = require('https');

module.exports= async (ctx)=>{
  console.log(ctx);
  let url = 'http://apis.juhe.cn/goodbook/query?catalog_id=242&pn=0&rn=1&dtype=&key=9a52a17273c6c1b42808f1cf847fdca6'
  const bookinfo = await getJSON(url);
  console.log(bookinfo);
  ctx.state.data ={
    msg:"图书信息"
  }
}

function getJSON(url){
  return new Promise((reslove,reject)=>{

    https.get(url,res=>{
      let urlData = ''
      res.on('data', data=>{
        console.log(data);
        urlData += data.result.data;
      })
      res.on('end', data=>{
        const bookinfo = JSON.parse(urlData)
        console.log(bookinfo);
        if(bookinfo.title){
          reslove(bookinfo)
        }
        reject(bookinfo)
      })
    })

  })
}
