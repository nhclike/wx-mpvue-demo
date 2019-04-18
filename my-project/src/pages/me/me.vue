<template>
  <div class="container">
    <div class="userinfo" @click="login">
      <img :src="userinfo.avatarUrl" alt="">
      <p>{{userinfo.nickName}}</p>
    </div>
    <div id="persons">
      <button open-type="getUserInfo" lang="zh_CN" @getuserinfo="login" v-show="userinfo.nickName===''">获取用户信息</button>
    </div>
    <div>
      <YearProgress></YearProgress>
    </div>
    <button v-if='userinfo.openId' class="btn" @click="scanBook">添加图书</button>
  </div>
</template>

<script>
  import {showSuccess} from '@/util'
  import YearProgress from '@/components/YearProgress'
  import qcloud from 'wafer2-client-sdk'
  import config from '@/config'
  export default {
    components:{
      YearProgress
    },
    data () {
      return {
        userinfo:{
          avatarUrl:'../../../static/img/unlogin.png',
          nickName:''
        }
      }
    },
    created(){

    },
    methods:{
      scanBook(){
        wx.scanCode({
          success(res) {
            console.log(res)
          }
        })
      },
      login(){
        let user=wx.getStorageSync("userinfo");
        var _this=this;
        if(!user){
          // 设置登录地址
          qcloud.setLoginUrl(config.loginUrl);
          qcloud.login({
            success: function (userInfo) {
              console.log('登录成功', userInfo);
              showSuccess("登录成功");
              _this.userinfo=userInfo;
              //用户信息存储
              wx.setStorageSync('userInfo')
            },
            fail: function (err) {
              console.log('登录失败', err);
            }
          });
        }
      }
    }
  }
</script>

<style scoped lang="scss" rel="stylesheet/scss">
  .container{
    padding:0 30rpx;
    .userinfo{
      margin-top:100rpx;
      text-align:center;
      img{
        width: 150rpx;
        height:150rpx;
        margin: 20rpx;
        border-radius: 50%;
      }
    }
  }

</style>
