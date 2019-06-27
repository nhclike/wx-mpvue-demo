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
        books:[]
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
        const books=await get("/weapp/booklist");
        console.log(books);
        this.books=books.list;
      }
    }
  }

</script>
<style>


</style>
