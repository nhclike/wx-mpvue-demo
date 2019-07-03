<template>
  <div>
    <BookInfo :info="info"></BookInfo>
    <div class="comment">
       <textarea v-model='comment'
                 class='textarea'
                 :maxlength='100'
                 placeholder='请输入图书短评'></textarea>
    </div>
    <div class='location'>
      地理位置：
      <switch color='#EA5A49' :checked='location' @change='getGeo'></switch>
      <span class='text-primary'>{{location}}</span>
    </div>
    <div class='phone'>
      手机型号：
      <switch color='#EA5A49' :checked='phone' @change='getPhone'></switch>
      <span class='text-primary'>{{phone}}</span>
    </div>
    <button class="btn" @click='addComment'>
      评论
    </button>
    <button open-type='share' class="btn">转发给好友</button>

  </div>

</template>

<script>
    import {get,post,showModal} from "@/util"
    import BookInfo from "@/components/BookInfo"
    export default {
      data(){
        return {
          bookid:'',
          info:{},
          location:'',
          phone:'',
          comment:'',
          userinfo:{}
        }
      },
      components:{
        BookInfo
      },
      methods:{
        async getDetail(){
          const info=await get("/weapp/bookdetail",{id:this.bookid});
          console.log("图书详情数据");
          console.log(info);
          wx.setNavigationBarTitle({
            title: info.title
          });
          this.info = info
        },
        getGeo(e){
          console.log('地理位置的获取');
          console.log(e);
          const ak = 'OuPqg4qHt2y0950U4dZcUL2mMjlebcY8';
          let url = 'http://api.map.baidu.com/reverse_geocoding/v3/';

          if (e.target.value) {
            wx.getLocation({
              success: geo => {
                console.log(geo);
                wx.request({
                  url,
                  data: {
                    ak,
                    location: `${geo.latitude},${geo.longitude}`,
                    output: 'json'
                  },
                  success: res => {
                    console.log(res);
                    if (res.data.status === 0) {
                      this.location = res.data.result.addressComponent.city
                    } else {
                      this.location = '未知地点'
                    }
                  }
                })
              }
            })
          } else {
            this.location = ''
          }
        },
        getPhone(e){
          console.log('手机型号获取种');
          console.log(e);
          if (e.target.value) {
            const phoneInfo = wx.getSystemInfoSync();
            // console.log(phoneInfo)
            this.phone = phoneInfo.model
          } else {
            // 没选中
            this.phone = ''
          }
        },
        async addComment(){
          if(!this.comment){
            return
          }
          // 评论内容 手机型号  地理位置 图书id 用户的openid
          const data = {
            openid: this.userinfo.openId,
            bookid: this.bookid,
            comment: this.comment,
            phone: this.phone,
            location: this.location
          };
          try {
            await post('/weapp/addcomment', data);
            this.comment = '';
          } catch (e) {
            showModal('失败', e.msg)
          }
        }
      },
      mounted(){
          this.bookid=this.$root.$mp.query.id;
          this.getDetail();
          try {
            var value = wx.getStorageSync('userInfo');
            if (value) {
              this.userinfo =value;
              console.log("获取用户缓存信息");
              console.log(value)
            }
          } catch (e) {
            console.log(e)
          }

      }

    }
</script>

<style lang='scss'>
  .comment{
    margin-top:10px;
    .textarea{
      width:730rpx;
      height:200rpx;
      background:#eee;
      padding:10rpx;
    }
    .location{
      margin-top:10px;
      padding:5px 10px;
    }
    .phone{
      margin-top:10px;
      padding:5px 10px;

    }
  }

</style>
