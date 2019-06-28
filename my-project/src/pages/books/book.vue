<template>
  <div>
    <Card :key="item.id" v-for="(item,index) in books" :book="item"></Card>
  </div>
</template>
<script>
  import {get} from "@/util"
  import Card from "@/components/card"
  export default {
    data(){
      return{
        books:[],
        page:0,
        more:true
      }
    },
    components:{
      Card
    },
    mounted(){
      this.getList();
    },
    methods:{
      async getList(){
        wx.showNavigationBarLoading();
        const books=await get("/weapp/booklist",{page:this.page});
        console.log(books);
        this.books=books.list;
        if(this.books.length<=5&&this.page==0){
          this.page++
        }
        this.books=this.books.concat(books);
        wx.stopPullDownRefresh();
        wx.hideNavigationBarLoading();
      }
    },
    //监听用户下拉动作
    onPullDownRefresh(){
      console.log("用户下拉刷新");
      this.getList();
    }
  }

</script>
<style>


</style>
