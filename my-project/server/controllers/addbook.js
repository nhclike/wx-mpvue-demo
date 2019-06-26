const https = require('https');
const {mysql} = require('../qcloud');
//1新增图书
//2获取豆瓣信息
//3入库
//测试豆瓣地址
//https://douban.uieee.com/v2/book/isbn/9787111128069
module.exports = async (ctx)=>{
  const {isbn,openid} = ctx.request.body;
  console.log('添加图书',isbn,openid)

  if(isbn && openid){
    //查询要添加的书是否存在，存在直接提示
    const findRes=await mysql("books").select().where('isbn',isbn);
    console.log(findRes);
    if(findRes.length){
      ctx.state={
        code:-1,
        data:{
          msg:'图书已经存在'
        }
      };
      return ;
    }

    //根据豆瓣api拿到图书数据
    let url="https://douban.uieee.com/v2/book/isbn/"+isbn;
    const bookinfo=await getJSON(url);
    console.log("controllers.addbook  bookinfo数据");
    console.log(bookinfo);

    const rate=bookinfo.rating.average;
    const {title,image,alt,publisher,summary,price} = bookinfo;
    const tags=bookinfo.tags.map(v=>{
      return `${v.title} ${v.count}`;
    }).join(',');

    const author=bookinfo.author.join(',');
    console.log(isbn,rate,title,image,alt,publisher,summary,price,tags,author);

    //将豆瓣数据插入数据库并且捕捉插入异常
    try {
      await mysql('books').insert({
        isbn,openid,rate,title, image, alt, publisher, summary ,price,tags,author
      });
      ctx.state.data={
        title,
        msg:'success'
      }
    }
    catch (e){
      ctx.state={
        code:-1,
        data:{
          msg:"新增失败"+e.sqlMessage
        }
      }
    }
  }
};

//处理豆瓣请求
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

