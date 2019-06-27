const { mysql } =require("../qcloud");

module.exports =async(ctx)=>{
  const books= await mysql("books")
    // .select('books.*','csessioninfo.user_info')
                    .orderBy('books.id','desc')
  console.log(books);
  ctx.state.data={
    list:books
  }
};
