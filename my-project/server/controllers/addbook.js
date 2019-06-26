const https = require('https');

//1新增图书
//2获取豆瓣信息
//3入库
//测试豆瓣地址
//https://douban.uieee.com/v2/book/isbn/9787111128069
module.exports = async (ctx)=>{
  const {isbn,openid} = ctx.request.body;
  if(isbn && openid){
    let url="https://douban.uieee.com/v2/book/isbn/"+isbn;
    const bookinfo=await getJSON(url);
    console.log(bookinfo);
  }

};

function getJSON(url) {
  return new Promise((resolve,reject )=>{
    https.get(url,res=>{
      let urlData = '';
      res.on('data', data=>{
        urlData += data
      });
      res.on('end', data=>{
        const bookinfo = JSON.parse(urlData);
        if(bookinfo.title){
          resolve(bookinfo)
        }
        reject(bookinfo)
      })
    })
  })
}

