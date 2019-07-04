<template>
    <div class="">
      <CommentList :comments="comments"  v-if='userinfo.openId'></CommentList>
      <div v-if="userinfo.openId">
        <div class="page-title">
          我的图书
        </div>
        <Card :key="item.id" v-for="(item,index) in books" :book="item"></Card>
        <div v-if='!books.length'>暂时还没添加过书，快去添加几本把</div>

      </div>

    </div>
</template>

<script>
  import {get} from '@/util'
  import Card from "@/components/card"

  import CommentList from "@/components/CommentList"
    export default {
      data(){
        return {
          comments:[],
          userinfo:{},
          books:[]
        }
      },
      components:{
        CommentList,
        Card
      },
      methods:{
        async init(){
          wx.showNavigationBarLoading();
          await this.getComments();
          await this.getBooks();
          wx.hideNavigationBarLoading()

        },
        async getComments () {
          const comments = await get('/weapp/commentlist', { openid:this.userinfo.openId});
          console.log('comments', comments);
          this.comments = comments.list || []
        },
        async getBooks(){
          const books = await get('/weapp/booklist',{
            openid:this.userinfo.openId
          });
          this.books = books.list
        },
      },
      mounted(){

      },
      onPullDownRefresh(){
        console.log("用户下拉刷新");
        this.init();
        wx.stopPullDownRefresh()
      },
      onShow(){
        if(!this.userinfo.openId){
          let userinfo = wx.getStorageSync('userInfo');
          if(userinfo){
            this.userinfo = userinfo;
            this.init();
          }
        }
      }

    }
</script>

<style scoped>

</style>
