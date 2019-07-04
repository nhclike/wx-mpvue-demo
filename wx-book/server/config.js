const CONF = {
    //本地开发测试环境
    // serverHost: 'localhost',
    // tunnelServerUrl: '',
    // tunnelSignatureKey: '27fb7d1c161b7ca52d73cce0f1d833f9f5b5ec89',
    // // 腾讯云相关配置可以查看云 API 秘钥控制台：https://console.cloud.tencent.com/capi
    //新版腾讯云开发环境中不再自动填入qcloud信息，改为腾讯云开发环境时需要手动添加下面三个配置
    qcloudAppId: '1259052527',
    qcloudSecretId: 'AKIDb1GNOHSHEAytMvvAePyAJKSSht0vqM0T',
    qcloudSecretKey: 'Qipneb5PXaTUPC3nMl4YyEIerupW1QSM',
    // wxMessageToken: 'weixinmsgtoken',
    // networkTimeout: 30000,


    port: '5757',
    rootPathname: '',

    // 微信小程序 App ID
    appId: 'wx1405665086f351cb',

    // 微信小程序 App Secret
    appSecret: 'fabc9513eb1cc71b4c42d594ed8ee5c4',

    // 是否使用腾讯云代理登录小程序
    useQcloudLogin: true,

    /**
     * MySQL 配置，用来存储 session 和用户信息
     * 若使用了腾讯云微信小程序解决方案
     * 开发环境下，MySQL 的初始密码为您的微信小程序 appid
     */
    mysql: {
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'cAuth',
      pass: 'wx1405665086f351cb',  //腾讯云部署时数据库密码为微信小程序appid
      //pass: '123456',

      char: 'utf8mb4'
    },

    cos: {
        /**
         * 地区简称
         * @查看 https://cloud.tencent.com/document/product/436/6224
         */
        region: 'ap-guangzhou',
        // Bucket 名称
        fileBucket: 'qcloudtest',
        // 文件夹
        uploadFolder: ''
    },

    // 微信登录态有效期
    wxLoginExpires: 7200,
    wxMessageToken: 'abcdefgh'
};

module.exports = CONF;
