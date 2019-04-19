<template>
  <div class="fixed-wrapper">
    <div class="container">
      <div class="type">
        <p class="title">图书分类</p>
        <div class="type-box" >
          <ul >
            <li v-for="book in bookTypes" :key="book.catalog">
              {{book.catalog}}
            </li>
            <p class="clear"></p>
          </ul>
        </div>
      </div>
      <div class="context">
        <ul class="book-box">
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <!--<li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>
          <li class="book-item">
            <div>
              <img src="" alt="">
            </div>
          </li>-->
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
  import {get} from '@/util'

  export default {
    data () {
      return {
        msg: 'book',
        bookTypes:[
          {
            "id":"242",
            "catalog":"中国文学"
          },
            {
              "id":"252",
              "catalog":"人物传记"
            },
            {
              "id":"244",
              "catalog":"儿童文学"
            },
            {
              "id":"248",
              "catalog":"历史"
            },
            {
              "id":"257",
              "catalog":"哲学"
            },
            {
              "id":"243",
              "catalog":"外国文学"
            },
            {
              "id":"247",
              "catalog":"小说"
            },
            {
              "id":"251",
              "catalog":"心灵鸡汤"
            },
            {
              "id":"253",
              "catalog":"心理学"
            },
            {
              "id":"250",
              "catalog":"成功励志"
            },
            {
              "id":"249",
              "catalog":"教育"
            },
            {
              "id":"245",
              "catalog":"散文"
            },
            {
              "id":"256",
              "catalog":"理财"
            },
            {
              "id":"254",
              "catalog":"管理"
            },
            {
              "id":"246",
              "catalog":"经典名著"
            },
            {
              "id":"255",
              "catalog":"经济"
            },
            {
              "id":"258",
              "catalog":"计算机"
            }
          ],
        books:[]
      }
    },
    created () {
      //this.getBooktypeData();
    },
    mounted(){

    },
    methods: {
      getBooktypeData(){
        var _this=this;
        wx.request({
          url: 'http://apis.juhe.cn/goodbook/catalog?dtype=&key=9a52a17273c6c1b42808f1cf847fdca6',
          success: function (res) {
            if(res.data.result!=null){
              _this.bookTypes=res.data.result;
              console.log(_this.bookTypes)
            }
          }
        })
      },
    }
  }
</script>

<style scoped lang="scss">
  .fixed-wrapper{
    position:fixed;
    top:0;
    left:0;
    bottom:0;
    right:0;
    background:#fff;
    .container{
      padding:0 30rpx;
      .type{
        width:100%;
        .title{
          height: 60rpx;
          color: #666;
        }
        .type-box{
          background: #ddd;
          width: 100%;
          paddding:4rpx;
          ul{
            height: 100%;

            li{
              float:left;
              margin: 5rpx 10rpx;
              background: #e4393c;
              color:#fff;
              padding: 10rpx;
              border-radius: 5rpx;
              cursor: pointer;
            }
            .clear{
              clear: both;
            }
          }


        }
      }
      .context{
        flex: 1;
        width:100%;
        .book-box{
          .book-item{
            height: 200rpx;
            width: 100%;
            border: 1px solid #e4393c;

          }
        }
      }
    }
  }

</style>
