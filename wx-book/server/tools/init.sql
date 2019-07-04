-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.37 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 cauth 的数据库结构
CREATE DATABASE IF NOT EXISTS `cAuth` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cAuth`;


-- 导出  表 cAuth.books 结构
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- 正在导出表  cauth.books 的数据：~19 rows (大约)
DELETE FROM `books`;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `isbn`, `openid`, `title`, `image`, `alt`, `publisher`, `summary`, `price`, `rate`, `tags`, `author`, `count`) VALUES
	(20, '9787115437303', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '深入React技术栈', 'https://img3.doubanio.com/view/subject/m/public/s29162154.jpg', 'https://book.douban.com/subject/26918038/', '人民邮电出版社', '全面讲述React技术栈的第一本原创图书，pure render专栏主创倾力打造\n覆盖React、Flux、Redux及可视化，帮助开发者在实践中深入理解技术和源码\n前端组件化主流解决方案，一本书玩转React“全家桶”\n本书讲解了非常多的内容，不仅介绍了面向普通用户的API、应用架构和周边工具，还深入介绍了底层实现。此外，本书非常重视实战，每一节都有实际的例子，细节丰富。我从这本书里学到了很多东西，强烈推荐！\n——阮一峰，蚂蚁金服技术专家，国内技术圈知名博主，《ES 6标准入门（第2版）》作者\nReact从诞生起就颠覆了诸多传统前端开发的“铁律”，这种破旧立新开启了前端开发全新的时代。它的用法和理念，代表了现在和未来几年前端技术的潮流风向。如果不想落伍，最好进行系统学习。实践出真知，从牛人的实践中收获自己的真知，恐怕是最好的捷径。这是我看到的第一本React中文原创著作，读来倍感亲切。\n——张克军，豆瓣前端专家，国内技术圈知名博主，前端布道师\n本书内容翔实，一扫“文档说明书”之风，有大量作者的实战经验。由浅入深，无论你是 React 初学者，还是进阶人士，本书都值得一读！\n——寸志，陆金所前端架构师，《前端外刊评论》发起人\n本书从几个维度去介绍 React。一是作为 View 库，它怎么实现组件化，以及它背后的实现原理。二是扩展到 Flux 应用架构及重要的衍生品 Redux，它们怎么与 React 结合做应用开发。三是对 React 与 server 的碰撞产生的一些思考。四是讲述它在可视化方面的优势与劣势。\n本书适合有一定经验的前端开发人员阅读。\n陈屹\n前端架构师，就职于阿里巴巴。热衷开源事业，长年专注于前端架构、数据可视化、Node.js等领域，知乎专栏pure render的创办人。', 'CNY 79.00', 8, 'React 179,Web前端 79,JavaScript 70,前端 47,前端开发 45,编程 32,Web开发 29,技术 26', '陈屹', 2),
	(21, '9787508051000', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '非暴力沟通', 'https://img1.doubanio.com/view/subject/m/public/s9346487.jpg', 'https://book.douban.com/subject/3533221/', '华夏出版社', '作为一个遵纪守法的好人，也许我们从来没有想过和“暴力”扯上关系。不过如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话的确伤人！言语上的职责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤，甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔阂、敌视', '29.00元', 8.4, '心理学 7759,沟通 7004,人际沟通 5764,非暴力沟通 4782,心理 3520,人际关系 3177,沟通术 2905,情感 2358', '[美] 马歇尔·卢森堡', 1),
	(22, '9787508665849', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '区块链技术驱动金融', 'https://img1.doubanio.com/view/subject/m/public/s29487148.jpg', 'https://book.douban.com/subject/26860970/', '中信出版社,中信出版集团', '从数字货币及智能合约技术层面，解读了区块链技术在金融领域的运用。“如果你正在寻找一本在技术层面解释比特币是如何运作的，并且你有一定计算机科学和编程的基本知识，这本书应该很适合你。”\n《区块链：技术驱动金融》回答了一系列关于比特币如何运用区块链技术运作的问题，并且着重讲述了各种技术功能，以及未来会形成的网络。比特币是如何运作的？它因何而与众不同？你的比特币安全吗？比特币用户如何匿名？区块链如何帮助比特币实现没有身份的共识？我们可以在比特币这一平台上创建什么应用程序？加密数字货币可以被监管吗？创建一种新的数字货币将会带来什么样的变化？未来将会如何发展？\n读完这本书，你会了解到所有比特币和其他数字货币相关的知识，对区块链技术具备基础性认识，能够区别那些完全虚构的故事。你将会对于需要什么样的安全软件，如何与比特币网络进行交互有了基础概念，也可以将区块链的概念整合应用于自己的项目中。你，将会成为时代的引领者！', 'CNY 79.00', 8.3, '区块链 1078,金融科技 425,比特币 398,金融 347,互联网 291,计算机 232,技术 200,新经济 173', '阿尔文德·纳拉亚南,约什·贝努,爱德华·费尔顿,安德鲁·米勒,史蒂文·戈德费德', 0),
	(23, '9787115351531', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '图解HTTP', 'https://img3.doubanio.com/view/subject/m/public/s27283822.jpg', 'https://book.douban.com/subject/25863515/', '人民邮电出版社', '本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案例，最后延伸到Web安全、最新技术动向等方面。本书的特色为在讲解的同时，辅以大量生动形象的通信图例，更好地帮助读者深刻理解HTTP通信过程中客户端与服务器之间的交互情况。读者可通过本书快速了解并掌握HTTP协议的基础，前端工程师分析抓包数据，后端工程师实现REST API、实现自己的HTTP服务器等过程中所需的HTTP相关知识点本书均有介绍。\n本书适合Web开发工程师，以及对HTTP协议感兴趣的各层次读者。', '49.00元', 8.1, 'HTTP 1388,网络 652,计算机 607,协议 409,互联网 351,Web 261,web 220,网络编程 204', '【日】上野宣', 0),
	(24, '9787121331565', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', 'Vue移动开发实战技巧', 'https://img3.doubanio.com/view/subject/m/public/s29662615.jpg', 'https://book.douban.com/subject/27662351/', '电子工业出版社', '内容简介\nVue.js是一个渐进式的JavaScript 框架，与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整合。作为2016年社区最火的前端框架，越来越多的公司都在尝试用Vue来开发自己的项目。本书主要以项目维度，站在实战的角度，从项目的搭建，项目开发，到项目的优化，结合实际，多维度介绍了Vue.js。本书从实战场景出发，结合各种实用demo，结合开发环境构建，从无到有，剖析原理，全面介绍Vue2.0的实用技巧。后面几章重点讲解Vue内部实现机制，针对各种业务形态的支持以及网站调优方等等，是Vue技术体系追随者不可多得的实战宝典。', '58', 0, 'Vue 9,前端 6,开发 5,移动 4,vue.js 2,软件开发 1,互联网 1,Vue.js 1', '李利德', 4),
	(26, '9787010009148', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '毛泽东选集 第一卷', 'https://img3.doubanio.com/view/subject/m/public/s5804333.jpg', 'https://book.douban.com/subject/1139360/', '人民出版社', '《毛泽东选集》(第1卷)包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收过去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著作，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。\n    下面有几点属于出版事务的声明：\n    第一，现在出版的这个选集，还是不很完备的。由于国民党反动派对于革命文献的毁灭，由于在长期战争中革命文献的散失，我们现在还不能够找到毛泽东同志的全部著作，特别是毛泽东同志所写的许多书信和电报（这些在毛泽东同志著作中占很大的部分）。\n    第二，有些曾经流行的著作，例如《农村调查》，遵照著者的意见，没有编入；又如《经济问题与财政问题》，也遵照著者的意见，只编进了其中的第一章（即《关于过去工作的基本总结》）。\n    第三，选集中作了一些注释。其中一部分是属于题解的，附在各篇第一页的下面；其他部分，有属于政治性质的，有属于技术性质的，都附在文章的末尾。\n    第四，本选集有两种装订的本子。一种是各时期的著作合订的一卷本，另一种是四卷本。四卷本的第一卷包括第一次国内革命战争时期和第二次国内革命战争时期的著作；第二卷和第三卷包括抗日战争时期的著作；第四卷包括第三次国内革命战争时期的著作。', '40.00元', 9.2, '毛泽东 2118,毛泽东选集 1813,哲学 1409,政治 1298,经典 952,毛选 923,革命 748,中国 731', '毛泽东', 2),
	(27, '9787121331565', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', 'Vue移动开发实战技巧', 'https://img3.doubanio.com/view/subject/m/public/s29662615.jpg', 'https://book.douban.com/subject/27662351/', '电子工业出版社', '内容简介\nVue.js是一个渐进式的JavaScript 框架，与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整合。作为2016年社区最火的前端框架，越来越多的公司都在尝试用Vue来开发自己的项目。本书主要以项目维度，站在实战的角度，从项目的搭建，项目开发，到项目的优化，结合实际，多维度介绍了Vue.js。本书从实战场景出发，结合各种实用demo，结合开发环境构建，从无到有，剖析原理，全面介绍Vue2.0的实用技巧。后面几章重点讲解Vue内部实现机制，针对各种业务形态的支持以及网站调优方等等，是Vue技术体系追随者不可多得的实战宝典。', '58', 0, 'Vue 9,前端 6,开发 5,移动 4,vue.js 2,软件开发 1,互联网 1,Vue.js 1', '李利德', 2),
	(28, '9787508051000', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '非暴力沟通', 'https://img1.doubanio.com/view/subject/m/public/s9346487.jpg', 'https://book.douban.com/subject/3533221/', '华夏出版社', '作为一个遵纪守法的好人，也许我们从来没有想过和“暴力”扯上关系。不过如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话的确伤人！言语上的职责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤，甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔阂、敌视', '29.00元', 8.4, '心理学 7759,沟通 7004,人际沟通 5764,非暴力沟通 4782,心理 3520,人际关系 3177,沟通术 2905,情感 2358', '[美] 马歇尔·卢森堡', 3),
	(29, '9787536692930', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '三体', 'https://img1.doubanio.com/view/subject/m/public/s2768378.jpg', 'https://book.douban.com/subject/2567698/', '重庆出版社', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\n人类的末日悄然来临。', '23.00', 8.8, '科幻 58633,刘慈欣 51495,三体 37515,科幻小说 30791,中国科幻 24677,硬科幻 22368,中国 21631,小说 19458', '刘慈欣', 9),
	(30, '9787010009230', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '毛泽东选集 第二卷', 'https://img3.doubanio.com/view/subject/m/public/s1341342.jpg', 'https://book.douban.com/subject/1125026/', '人民出版社', '这部选集，包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。', '23.00元', 9.2, '毛泽东 427,毛泽东选集 278,政治 253,哲学 205,革命 125,历史 125,马克思主义 120,政经战略 105', '毛泽东', 1),
	(31, '9787115352460', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', 'Node.js实战', 'https://img3.doubanio.com/view/subject/m/public/s27264241.jpg', 'https://book.douban.com/subject/25870705/', '人民邮电出版社', '服务器端JavaScript？没错。Node.js是一个JavaScript服务器，支持可伸缩的高性能Web应用。借助异步I/O，这个服务器可以同时做很多事情，能满足聊天、游戏和实时统计等应用的需求。并且既然是JavaScript，那你就可以全栈使用一种语言。\n本书向读者展示了如何构建产品级应用，对关键概念的介绍清晰明了，贴近实际的例子，涵盖从安装到部署的各个环节，是一部讲解与实践并重的优秀著作。通过学习本书，读者将深入异步编程、数据存储、输出模板、读写文件系统，掌握创建TCP/IP服务器和命令行工具等非HTTP程序的技术。本书同样非常适合熟悉Rails、Django或PHP开发的读者阅读学习。\n本书主要内容：\nNode.js及其扩展的安装配置；\n全面理解异步编程和事件循环；\n学会开发微博、聊天和游戏等热门应用。', '69.00元', 8.2, 'Node.js 147,JavaScript 77,nodejs 58,node.js 46,web开发 44,前端开发 39,编程 37,node 23', '[美] Mike Cantelon,[美] TJ Holowaychuk,[美] Nathan Rajlich', 1),
	(32, '9787115275790', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', 'JavaScript高级程序设计（第3版）', 'https://img3.doubanio.com/view/subject/m/public/s8958650.jpg', 'https://book.douban.com/subject/10546125/', '人民邮电出版社', '本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单、媒体、Canvas（包括WebGL）及Web Workers、地理定位、跨文档传递消息、客户端存储（包括IndexedDB）等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。本书附录展望了未来的API 和ECMAScript Harmony 规范。\n本书适合有一定编程经验的Web 应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。', '99.00元', 9.3, 'JavaScript 2416,Web前端开发 1127,前端开发 722,前端 556,javascript 542,编程 487,计算机 438,Web开发 437', '[美] Nicholas C. Zakas', 0),
	(33, '9787536693968', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '三体Ⅱ', 'https://img3.doubanio.com/view/subject/m/public/s3078482.jpg', 'https://book.douban.com/subject/3066477/', '重庆出版社', '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。\n面对前所未有的危局，经历过无数磨难的地球人组建起同样庞大的太空舰队，同时，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”。秘密展开对三体人的反击。\n三体人自身虽然无法识破人类的诡谲计谋，却依靠由地球人中的背叛者挑选出的“破壁人”，与“面壁者”展开智慧博弈……\n“面壁计划”究竟能否成功？地球人究竟能否在这场你死我活的文明生存竞争中战而胜之？神秘的\n“黑暗森林”究竟意味着什么？', '32.00', 9.3, '科幻 27780,刘慈欣 25782,三体 16450,科幻小说 11153,黑暗森林 10390,小说 10102,中国 9045,中国科幻 8444', '刘慈欣', 16),
	(34, '9787010009247', 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '毛泽东选集 第三卷', 'https://img1.doubanio.com/view/subject/m/public/s1815767.jpg', 'https://book.douban.com/subject/1077621/', '人民出版社', '《毛泽东选集(第3卷)》包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。 \n下面有几点属于出版事务的声明：\n第一，现在出版的这个选集，还是不很完备的。由于国民党反动派对于革命文献的毁灭，由于在长期战争中革命文献的散失，我们现在还不能够找到毛泽东同志的全部著作，特别是毛泽东同志所写的许多书信和电报（这些在毛泽东同志著作中占很大的部分）。\n第二，有些曾经流行的著作，例如《农村调查》，遵照著者的意见，没有编入；又如《经济问题与财政问题》，也遵照著者的意见，只编进了其中的第一章（即《关于过去工作的基本总结》）。\n第三，选集中作了一些注释。其中一部分是属于题解的，附在各篇第一页的下面；其他部分，有属于政治性质的，有属于技术性质的，都附在文章的末尾。\n第四，本选集有两种装订的本子。一种是各时期的著作合订的一卷本，另一种是四卷本。四卷本的第一卷包括第一次国内革命战争时期和第二次国内革命战争时期的著作；第二卷和第三卷包括抗日战争时期的著作；第四卷包括第三次国内革命战争时期的著作。', '18.00元', 8.9, '毛泽东 345,政治 204,毛泽东选集 161,哲学 155,历史 109,革命 88,中国 83,马克思主义 81', '毛泽东', 38);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;


-- 导出  表 cauth.comments 结构
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `bookid` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  cauth.comments 的数据：~0 rows (大约)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `openid`, `bookid`, `comment`, `phone`, `location`) VALUES
	(1, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '34', '啊实打实多', 'iPhone 5', '杭州市'),
	(2, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '29', '按时大大的撒', 'iPhone 5', '杭州市'),
	(3, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '28', '小城之春', 'iPhone 5', '杭州市'),
	(4, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '20', '宣传中心', '', ''),
	(5, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '26', '发斯蒂芬斯蒂芬 ', 'iPhone 5', '杭州市'),
	(6, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '26', '发斯蒂芬斯蒂芬 ', 'iPhone 5', '杭州市'),
	(7, 'oIELT5B6J6sxHVhRnUU-gX0ON4ro', '33', '撒大大', 'iPhone 5', '杭州市');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- 导出  表 cauth.csessioninfo 结构
CREATE TABLE IF NOT EXISTS `cSessioninfo` (
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  cauth.csessioninfo 的数据：~1 rows (大约)
DELETE FROM `cSessioninfo`;
/*!40000 ALTER TABLE `csessioninfo` DISABLE KEYS */;
INSERT INTO `cSessioninfo` (`open_id`, `uuid`, `skey`, `create_time`, `last_visit_time`, `session_key`, `user_info`) VALUES
	('oIELT5B6J6sxHVhRnUU-gX0ON4ro', 'a6ed29c9-85fe-488c-b60c-9c004a943df0', 'd035ab1eb57203cc7991a235fe64822e053ef912', '2019-04-18 14:28:19', '2019-07-04 15:48:29', 'RBR9DiG/WyYhZRniV93Ymg==', '{"openId":"oIELT5B6J6sxHVhRnUU-gX0ON4ro","nickName":"a🌟红成","gender":2,"language":"zh_CN","city":"Darwin","province":"Northern Territory","country":"Australia","avatarUrl":"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLn1rhQ7nlmQoqljutVECOx4ibVHnGicFBZXfP5K30HtmJGm3tze5MicFXCkp9W8LuZgLQibIhHYQFic0g/132","watermark":{"timestamp":1562226589,"appid":"wx1405665086f351cb"}}');
/*!40000 ALTER TABLE `csessioninfo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
