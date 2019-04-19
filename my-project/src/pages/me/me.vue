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
    <button v-if='userinfo.openId' class="btn" @click="addBook">添加图书</button>
  </div>
</template>

<script>
  import {get,showSuccess,showModal} from '@/util'
  import YearProgress from '@/components/YearProgress'
  import qcloud from 'wafer2-client-sdk'
  import config from '@/config'
  export default {
    components: {
      YearProgress
    },
    data () {
      return {
        userinfo: {
          avatarUrl: '/static/img/unlogin.png',
          nickName: ''
        }
      }
    },
    created () {

    },
    methods: {
      addBook(){
        wx.request({
          url: 'http://apis.juhe.cn/goodbook/query?catalog_id=242&pn=0&rn=1&dtype=&key=9a52a17273c6c1b42808f1cf847fdca6',
          success: function (res) {
            console.log(res);
            var data=res.data.result.data[0];
            showModal("添加图书",data.title+"添加成功");
          }
        })
      },
      scanBook () {
        var _this=this;
        wx.scanCode({
          success (res) {
            console.log(res)
            _this.addBook();
          }
        })
      },
      login () {
        let user = wx.getStorageSync('userinfo')
        var _this = this
        if (!user) {
          // 设置登录地址
          qcloud.setLoginUrl(config.loginUrl)
          qcloud.login({
            success: function (userInfo) {
              qcloud.request({
                url: config.userUrl,
                login: true,
                success (userRes) {
                  showSuccess('获取用户信息成功')
                  // 用户信息存储
                  wx.setStorageSync('userInfo')
                  _this.userinfo = userInfo
                }
              })
              console.log('登录成功', userInfo)
            },
            fail: function (err) {
              console.log('登录失败', err)
            }
          })
        }
      },
      onShow () {
        let userinfo = wx.getStorageSync('userinfo')
        if (userinfo) {
          this.userinfo = userinfo
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
