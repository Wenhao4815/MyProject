-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-01-10 03:09:35
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms`
--

-- --------------------------------------------------------

--
-- 表的结构 `ms_ comment`
--

CREATE TABLE `ms_ comment` (
  `id` int(11) NOT NULL,
  `uname` varchar(218) NOT NULL,
  `context` varchar(1000) NOT NULL,
  `pic` varchar(128) NOT NULL,
  `picc` varchar(128) NOT NULL,
  `piccc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ms_ commented`
--

CREATE TABLE `ms_ commented` (
  `id` int(11) NOT NULL,
  `uname` varchar(218) NOT NULL,
  `context` varchar(1000) NOT NULL,
  `pic` varchar(128) NOT NULL,
  `picc` varchar(128) NOT NULL,
  `piccc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ms_evaluation`
--

CREATE TABLE `ms_evaluation` (
  `id` int(11) NOT NULL,
  `uname` varchar(218) NOT NULL,
  `pid` int(128) NOT NULL,
  `evaluation` mediumtext,
  `context` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_evaluation`
--

INSERT INTO `ms_evaluation` (`id`, `uname`, `pid`, `evaluation`, `context`) VALUES
(1, 'tom', 2, NULL, '环境超棒！老板人非常友好！已推荐'),
(2, 'tom', 1, NULL, '位置很好找  周围环境也是超级美 物美价廉'),
(3, 'jerry', 2, NULL, '房子非常大  非常干净 很好找'),
(4, 'jerry', 1, NULL, '美好的一天  没想过房子会这么漂亮'),
(5, 'merrry', 2, NULL, '绿树掩映之中，整齐的瓦房和陈旧的草屋交错杂陈，恰似一盘杀得正酣的象棋子儿。'),
(6, 'merrry', 1, NULL, '富丽堂皇，雄伟壮观，鬼斧天工'),
(7, 'shan123', 1, NULL, '真不错');

-- --------------------------------------------------------

--
-- 表的结构 `ms_favorite`
--

CREATE TABLE `ms_favorite` (
  `id` int(11) NOT NULL,
  `uname` varchar(218) NOT NULL,
  `pid` int(128) NOT NULL,
  `title` mediumtext,
  `evaluation` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_favorite`
--

INSERT INTO `ms_favorite` (`id`, `uname`, `pid`, `title`, `evaluation`) VALUES
(69, 'shan123456', 12, '{"id":12,"lid":2,"area":"39","price":264,"title":"[京·叁] 近地铁/天安门 故宫","grade":"4.9分 超赞","subtitle":"99条评价 | 整套1居室·可住2人 | 北京 · 通州区","bed":"1厅1厨1卫","llqr":"立即确认","pjch":"评价超好","kdcw":"可带宠物","whms":"网红民宿","czfd":"超赞房东","ytcw":"有停车位","lng":"116.4146667519","lag":"39.9174917852","value":"2","subvalue":"一张床","pic":"mst/12.jpg","picc":"mst/012.jpg","piccc":"mst/0012.jpg","picccc":"mst/00012.jpg"}', ''),
(72, 'swh123', 1, '{"id":1,"lid":1,"area":"70","price":411,"title":"X马卡龙色调#阳光庭院带秋千","grade":"5.0分 超赞","subtitle":"13条评价 | 整套1居室·可住2人 | 上海 · 徐汇区","bed":"1厅1厨1卫","llqr":"立即确认","pjch":"评价超好","kdcw":"可带宠物","whms":"网红民宿","czfd":"超赞房东","ytcw":"有停车位","lng":"121.4433055580","lag":"31.1946458680","value":"2","subvalue":"一张床","pic":"mst/1.jpg","picc":"mst/01.jpg","piccc":"mst/001.jpg","picccc":"mst/0001.jpg"}', ''),
(73, 'tom', 1, '{"id":1,"lid":1,"area":"70","price":340,"title":"[曦月民宿]环山陪伴水现代民宿","grade":"5.0分 超赞","subtitle":"21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区","bed":"1厅1厨1卫","llqr":"立即确认","pjch":"评价超好","kdcw":"可带宠物","whms":"网红民宿","czfd":"超赞房东","ytcw":"有停车位","lng":"121.4433055580","lag":"31.1946458680","value":"2","subvalue":null,"pic":"mst/1.jpg","picc":"mst/01.jpg","piccc":"mst/001.jpg","picccc":"mst/0001.jpg"}', ''),
(74, 'honey', 1, '{"id":1,"lid":1,"area":"70","price":340,"title":"[曦月民宿]环山陪伴水现代民宿","grade":"5.0分 超赞","subtitle":"21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区","bed":"1厅1厨1卫","llqr":"立即确认","pjch":"评价超好","kdcw":"可带宠物","whms":"网红民宿","czfd":"超赞房东","ytcw":"有停车位","lng":"121.4433055580","lag":"31.1946458680","value":"2","subvalue":null,"pic":"mst/1.jpg","picc":"mst/01.jpg","piccc":"mst/001.jpg","picccc":"mst/0001.jpg"}', ''),
(76, 'shan123', 1, '{"id":1,"lid":1,"area":"70","price":340,"title":"[曦月民宿]环山陪伴水现代民宿","grade":"5.0分 超赞","subtitle":"21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区","bed":"1厅1厨1卫","llqr":"立即确认","pjch":"评价超好","kdcw":"可带宠物","whms":"网红民宿","czfd":"超赞房东","ytcw":"有停车位","lng":"121.4433055580","lag":"31.1946458680","value":"2","subvalue":null,"pic":"mst/1.jpg","picc":"mst/01.jpg","piccc":"mst/001.jpg","picccc":"mst/0001.jpg"}', '');

-- --------------------------------------------------------

--
-- 表的结构 `ms_faxian`
--

CREATE TABLE `ms_faxian` (
  `id` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `bigpic` varchar(218) NOT NULL,
  `smallpic` varchar(218) NOT NULL,
  `smallpicc` varchar(218) NOT NULL,
  `wangming` varchar(128) NOT NULL,
  `touxiang` varchar(128) NOT NULL,
  `dizhi` varchar(50) NOT NULL,
  `reduzhi` varchar(50) NOT NULL,
  `subtitle` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_faxian`
--

INSERT INTO `ms_faxian` (`id`, `title`, `bigpic`, `smallpic`, `smallpicc`, `wangming`, `touxiang`, `dizhi`, `reduzhi`, `subtitle`) VALUES
('1', '享受静谧时光', 'find/1.jpg', 'find/2.jpg', 'find/3.jpg', '王瓜皮', 'find/tx1.jpg', '上海', '95', '入住三亚海景民宿，阳台看日出\r\n\r\n三亚之旅倒数第二天去了蜈支洲岛，回来时已经较晚了，而且第二天又要去陵水呆呆岛，所以就近预订的「海棠湾亚特兰蒂斯棠湾民宿」，离蜈支洲岛码头很近的，海景房偌大的阳台上，直接可以看到海棠湾，和远处的蜈支洲岛，性价比很高。整个民宿空间很大，2卧室2独立卫生间+超大客厅+设施齐全厨房，非常适合家庭出行+朋友组队。\r\n\r\n房间非常干净整洁，每日打扫，床品很舒服，整体的简约温馨，北欧+东南亚混搭风。躺在床上或是阳台的浴缸里，就可以欣赏到美丽的日出或是晚上的明月!\r\n\r\n房间可以提供厨具碗筷，可提供早餐!有洗衣机和熨烫机提供。\r\n\r\n民宿离亚特兰蒂斯水世界、C秀、失落的空间水族馆、免税店、环球商业美食广场都非常近，吃喝玩乐应有尽有!\r\n'),
('2', '艺术感超强的现代民宿', 'find/11.jpg', 'find/22.jpg', 'find/33.jpg', '李狗蛋', 'find/tx2.jpg', '北京', '96', '关键词:北欧ins风&杂志里的家&-线唯美海景房\r\n\r\n原本想定野海美墅，但是近-两个月都满房了。于是发现了这个性价比超高的民宿。\r\n\r\n进去房间的- -瞬间被美呆辽!海景也太好看了叭!\r\n\r\n整个民宿超级出片随便一拍都是大片，房间很干净也很宽敞，有两个房间，可以住4个人。有小沙发/电视/洗衣机/冰箱/空调，有独立的厨房，用具很齐全，房主还贴心的准备了各种调料。\r\n\r\n每个房间都有一个主题，- -边有纱幔，- 边是ins风。冲着海的一面，日落时拍照天都是粉粉的。每天早上半梦半醒间都有海浪和海鸥叫你起床。\r\n\r\n下楼走路大约是10来分钟就可以到海边，旁边还有个很大的万达，真的很方便。\r\n\r\n详细地址是在星海湾附近,预定后老板会给详细地址，我们预定的时候是300元多-晚四人入住.总之性价比非常高!想要拍照去这里就对辣不会失望!推荐!\r\n\r\n'),
('3', '古典的艺术', 'find/111.jpg', 'find/222.jpg', 'find/333.jpg', '王二楞', 'find/tx3.jpg', '广州', '99', '我在@美团民宿上订到了超喜欢的一家民宿!\r\n\r\n因为正好到中秋节看到这件新中式风格的民宿就心动啦\r\n\r\n栖夕1xI若见\r\n\r\n非常古风温柔的名字整套民宿的基调是白色和暖黄色的\r\n\r\n-楼是客厅厨房和卫生间客厅的桌椅是白色亚麻布的自带超大的投影仪可以看电影厨房带着锅和厨具餐具特别方便可以自己做饭吃而且自带净水机可以随时喝到干净的水卫生间的用品很全还有洗衣机可以用\r\n\r\n二楼\r\n\r\n做了分隔的卧室设计有两张床，上楼是特别有艺术感的设计像山海一-样的波浪分隔开两个卧室还自带一个秋千和浴缸白床很干净很柔软\r\n\r\n●特别喜欢这间民宿的古风设计-楼阳台铺满了白色石子落地窗和木质桌椅很适合喝茶看书客厅的墙有一个白色的圆形设计像月亮-样温柔得照亮屋子最喜欢\r\n\r\n二楼卧:室的浴缸和秋千用来放松是在合适不过了楼下就是商业街步行十分钟可以到达市中心和景点高楼层可以看到很远的景色也不觉得喧嚣在闹市里可以拥有-份这样的宁静真的十分难得\r\n\r\n'),
('4', '感受大自然的不一样的美', 'find/1111.jpg', 'find/2222.jpg', 'find/3333.jpg', '赵无极', 'find/tx4.jpg', '郑州', '98', '入住潍坊小清新民宿，满满细节太像家\r\n\r\n最近一直喜欢美团民宿[熊猫][熊猫]\r\n\r\n出门在外，不知道大家是不是也跟我一样 喜欢住民宿，民宿打破了传统的酒店风格!\r\n\r\n每次住@美团民宿都有满满的幸福感~就像自己的小家一样温馨，而各种用心的小细节又让我感到美好!\r\n\r\n[兔子]现在越来越喜欢民宿了! #非睡不可#的住宿选择! [嘻嘻]\r\n\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `ms_findtext`
--

CREATE TABLE `ms_findtext` (
  `id` int(11) NOT NULL,
  `uname` varchar(218) NOT NULL,
  `title` varchar(128) NOT NULL,
  `dizhi` varchar(128) NOT NULL,
  `pid` int(128) NOT NULL,
  `context` varchar(1000) NOT NULL,
  `pic` varchar(128) NOT NULL,
  `picc` varchar(128) NOT NULL,
  `piccc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_findtext`
--

INSERT INTO `ms_findtext` (`id`, `uname`, `title`, `dizhi`, `pid`, `context`, `pic`, `picc`, `piccc`) VALUES
(1, 'tom', '享受静谧时光', '上海', 0, '入住三亚海景民宿，阳台看日出\n\n三亚之旅倒数第二天去了蜈支洲岛，回来时已经较晚了，而且第二天又要去陵水呆呆岛，所以就近预订的「海棠湾亚特兰蒂斯棠湾民宿」，离蜈支洲岛码头很近的，海景房偌大的阳台上，直接可以看到海棠湾，和远处的蜈支洲岛，性价比很高。整个民宿空间很大，2卧室2独立卫生间+超大客厅+设施齐全厨房，非常适合家庭出行+朋友组队。\n\n房间非常干净整洁，每日打扫，床品很舒服，整体的简约温馨，北欧+东南亚混搭风。躺在床上或是阳台的浴缸里，就可以欣赏到美丽的日出或是晚上的明月!\n\n房间可以提供厨具碗筷，可提供早餐!有洗衣机和熨烫机提供。\n\n民宿离亚特兰蒂斯水世界、C秀、失落的空间水族馆、免税店、环球商业美食广场都非常近，吃喝玩乐应有尽有!\n', 'find/1.jpg', 'find/2.jpg', 'find/3.jpg'),
(2, 'tom', '艺术感超强的现代民宿', '北京', 0, '关键词:北欧ins风&杂志里的家&-线唯美海景房\n\n原本想定野海美墅，但是近-两个月都满房了。于是发现了这个性价比超高的民宿。\n\n进去房间的- -瞬间被美呆辽!海景也太好看了叭!\n\n整个民宿超级出片随便一拍都是大片，房间很干净也很宽敞，有两个房间，可以住4个人。有小沙发/电视/洗衣机/冰箱/空调，有独立的厨房，用具很齐全，房主还贴心的准备了各种调料。\n\n每个房间都有一个主题，- -边有纱幔，- 边是ins风。冲着海的一面，日落时拍照天都是粉粉的。每天早上半梦半醒间都有海浪和海鸥叫你起床。\n\n下楼走路大约是10来分钟就可以到海边，旁边还有个很大的万达，真的很方便。\n\n详细地址是在星海湾附近,预定后老板会给详细地址，我们预定的时候是300元多-晚四人入住.总之性价比非常高!想要拍照去这里就对辣不会失望!推荐!\n\n', 'find/11.jpg', 'find/22.jpg', 'find/33.jpg'),
(3, 'jerry', '古典的艺术', '郑州', 0, '我在@美团民宿上订到了超喜欢的一家民宿!\n\n因为正好到中秋节看到这件新中式风格的民宿就心动啦\n\n栖夕1xI若见\n\n非常古风温柔的名字整套民宿的基调是白色和暖黄色的\n\n-楼是客厅厨房和卫生间客厅的桌椅是白色亚麻布的自带超大的投影仪可以看电影厨房带着锅和厨具餐具特别方便可以自己做饭吃而且自带净水机可以随时喝到干净的水卫生间的用品很全还有洗衣机可以用\n\n二楼\n\n做了分隔的卧室设计有两张床，上楼是特别有艺术感的设计像山海一-样的波浪分隔开两个卧室还自带一个秋千和浴缸白床很干净很柔软\n\n●特别喜欢这间民宿的古风设计-楼阳台铺满了白色石子落地窗和木质桌椅很适合喝茶看书客厅的墙有一个白色的圆形设计像月亮-样温柔得照亮屋子最喜欢\n\n二楼卧:室的浴缸和秋千用来放松是在合适不过了楼下就是商业街步行十分钟可以到达市中心和景点高楼层可以看到很远的景色也不觉得喧嚣在闹市里可以拥有-份这样的宁静真的十分难得\n\n', 'find/111.jpg', 'find/222.jpg', 'find/333.jpg'),
(4, 'marry', '感受大自然的不一样的美', '广州', 0, '入住潍坊小清新民宿，满满细节太像家\n\n最近一直喜欢美团民宿[熊猫][熊猫]\n\n出门在外，不知道大家是不是也跟我一样 喜欢住民宿，民宿打破了传统的酒店风格!\n\n每次住@美团民宿都有满满的幸福感~就像自己的小家一样温馨，而各种用心的小细节又让我感到美好!\n\n[兔子]现在越来越喜欢民宿了! #非睡不可#的住宿选择! [嘻嘻]\n\n', 'find/1111.jpg', 'find/2222.jpg', 'find/3333.jpg'),
(5, 'honey', '栖身森林感受大自然的美丽', '郑州', 0, '浪漫与庄严的气质，挑高的门厅和气派的大门，圆形的拱窗和转角的石砌，尽显雍容华贵。\r\n\r\n清新不落俗套，白色灰泥墙结合浅红屋瓦，连续的拱门和回廊，挑高大面窗的客厅，让人心神荡漾。\r\n\r\n抬头望，这里的星星离你特别近；白天有空就看云卷云舒；下雨啦，那就看雨点怎么落吧；没关系，我在客房里。 \r\n\r\n文雅精巧不乏舒适，门廊、门厅向南北舒展，客厅、卧室等设置低窗和六角形观景凸窗，餐厅南北相通，室内室外情景交融。\r\n\r\n在幽静的山林一套欧式别墅映入眼帘，仔细观察是用一块块木板搭接而成，尖尖的屋顶，绛红色的屋顶瓦在阳光的照射下格外醒目。\r\n\r\n', 'find/0025.jpg', 'find/025.jpg', 'find/25.jpg'),
(6, 'shan0011', '美美的房子，住着特别的舒服', '郑州', 0, '真不错，下次还会光顾！', 'find/1111.jpg', 'find/0022.jpg', 'find/022.jpg'),
(8, 'shan123', '这家民宿真好', '上海', 0, '力推   ', 'find/11.jpg', 'find/00022.jpg', 'find/0022.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `ms_home_carousel`
--

CREATE TABLE `ms_home_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ms_home_carousel`
--

INSERT INTO `ms_home_carousel` (`cid`, `img`, `title`, `href`) VALUES
(1, 'Home/carousel/1.jpg', '', NULL),
(2, 'Home/carousel/2.jpg', '', NULL),
(3, 'Home/carousel/3.jpg', NULL, NULL),
(4, 'Home/carousel/4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ms_home_xiaoimg`
--

CREATE TABLE `ms_home_xiaoimg` (
  `xid` int(32) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ms_home_xiaoimg`
--

INSERT INTO `ms_home_xiaoimg` (`xid`, `img`, `title`) VALUES
(1, 'Home/xiaoimg/kezuofan.png', NULL),
(2, 'Home/xiaoimg/huxing.png', NULL),
(3, 'Home/xiaoimg/pijiu.png', NULL),
(4, 'Home/xiaoimg/zan.png', NULL),
(5, 'Home/xiaoimg/house.png', NULL),
(6, 'Home/xiaoimg/xuesheng.png', NULL),
(7, 'Home/xiaoimg/chuang.png', NULL),
(8, 'Home/xiaoimg/fangzi.png', NULL),
(9, 'Home/xiaoimg/xinglixiang.png', NULL),
(10, 'Home/xiaoimg/feiji.png', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ms_laptop_sc`
--

CREATE TABLE `ms_laptop_sc` (
  `lid` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_laptop_sc`
--

INSERT INTO `ms_laptop_sc` (`lid`, `title`, `subtitle`, `pic`) VALUES
(1, '全国浪漫情侣民宿盘点', '心动民宿一网打尽', '01.png'),
(2, '去看展，睡进艺术空间', '躺着也能感受艺术的熏陶', '02.png'),
(3, '携萌宠去民宿撒花', '铲屎官带着主子们一起旅行', '03.png'),
(4, '这些民宿很有镜头感', '想要在这些民宿里拍美照', '04.png');

-- --------------------------------------------------------

--
-- 表的结构 `ms_login`
--

CREATE TABLE `ms_login` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_login`
--

INSERT INTO `ms_login` (`id`, `uname`, `upwd`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'huyingbin', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'swh123', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'tom', '202cb962ac59075b964b07152d234b70'),
(17, 'jerry', '202cb962ac59075b964b07152d234b70'),
(18, 'marry', '202cb962ac59075b964b07152d234b70'),
(19, 'merrry', '202cb962ac59075b964b07152d234b70'),
(20, 'honey', '202cb962ac59075b964b07152d234b70'),
(21, 'shan0011', 'e10adc3949ba59abbe56e057f20f883e'),
(22, 'shan123', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `ms_userorder`
--

CREATE TABLE `ms_userorder` (
  `id` int(11) NOT NULL,
  `uname` varchar(218) NOT NULL,
  `pid` int(128) NOT NULL,
  `ordertime` mediumtext,
  `title` varchar(128) NOT NULL,
  `pic` varchar(128) NOT NULL,
  `subtitle` varchar(128) NOT NULL,
  `price` varchar(128) NOT NULL,
  `checktime` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_userorder`
--

INSERT INTO `ms_userorder` (`id`, `uname`, `pid`, `ordertime`, `title`, `pic`, `subtitle`, `price`, `checktime`) VALUES
(1, 'tom', 1, '2019/12/27 下午8:59:19', '[曦月民宿]环山陪伴水现代民宿', 'mst/1.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '340', '12月27日 - 12月28日'),
(2, 'tom', 4, '2019/12/27 下午8:59:25', '[极居·魔都往事] 地铁洋房', 'mst/4.jpg', '59条评价 | 整套1居室·可住2人 | 上海 · 静安区', '398', '12月27日 - 12月28日'),
(3, 'tom', 12, '2019/12/27 下午8:59:46', '[京·叁] 近地铁/天安门 故宫', 'mst/12.jpg', '99条评价 | 整套1居室·可住2人 | 北京 · 通州区', '528', '12月23日 - 12月25日'),
(4, 'tom', 17, '2019/12/27 下午9:00:09', '[汉谷喜舍] 珠江新城/广州塔', 'mst/17.jpg', '57条评价 | 整套1居室·可住2人 | 广州 · 白云区', '1992', '12月27日 - 12月31日'),
(5, 'marry', 7, '2019/12/27 下午9:03:40', '[等号·波澜]设计师民宿', 'mst/7.jpg', '37条评价 | 整套1居室·可住2人 | 上海 · 浦东新区', '1404', '12月27日 - 12月30日'),
(6, 'marry', 10, '2019/12/27 下午9:03:47', '中关村软件园/北欧ins', 'mst/10.jpg', '34条评价 | 整套1居室·可住2人 | 北京 · 朝阳区', '1104', '12月27日 - 12月30日'),
(7, 'marry', 21, '2019/12/27 下午9:04:32', '<Dream Maker民宿>广大华软', 'mst/21.jpg', '29条评价 | 整套1居室·可住2人 | 广州 · 从化区', '118', '12月27日 - 12月28日'),
(8, 'marry', 18, '2019/12/27 下午9:04:39', '[河马先生]广州东站上盖', 'mst/18.jpg', '35条评价 | 整套1居室·可住2人 | 广州 · 花都区', '268', '12月27日 - 12月28日'),
(9, 'marry', 25, '2019/12/27 下午9:04:48', '正弘城高端公寓俯瞰夜景', 'mst/25.jpg', '34条评价 | 整套1居室·可住2人 | 郑州 · 金水区', '215', '12月27日 - 12月28日'),
(10, 'tom', 1, '2019/12/27 下午9:07:23', '[曦月民宿]环山陪伴水现代民宿', 'mst/1.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '340', '12月27日 - 12月28日'),
(11, 'tom', 2, '2019/12/27 下午9:07:29', 'N时光 清新老弄堂洋房 步行展览中心', 'mst/2.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '502', '12月27日 - 12月28日'),
(12, 'jerry', 1, '2019/12/27 下午9:09:09', '[曦月民宿]环山陪伴水现代民宿', 'mst/1.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '680', '12月27日 - 12月29日'),
(13, 'jerry', 2, '2019/12/27 下午9:09:16', 'N时光 清新老弄堂洋房 步行展览中心', 'mst/2.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1004', '12月27日 - 12月29日'),
(14, 'merrry', 1, '2019/12/27 下午9:12:22', '[曦月民宿]环山陪伴水现代民宿', 'mst/1.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '680', '12月27日 - 12月29日'),
(15, 'merrry', 2, '2019/12/27 下午9:12:28', 'N时光 清新老弄堂洋房 步行展览中心', 'mst/2.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1004', '12月27日 - 12月29日'),
(16, 'honey', 2, '2019/12/28 上午8:35:29', 'N时光 清新老弄堂洋房 步行展览中心', 'mst/2.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1004', '12月28日 - 12月30日'),
(17, 'shan123', 1, '2019/12/28 上午11:05:48', '[曦月民宿]环山陪伴水现代民宿', 'mst/1.jpg', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1020', '12月28日 - 12月31日');

-- --------------------------------------------------------

--
-- 表的结构 `ms_user_list`
--

CREATE TABLE `ms_user_list` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `qq` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_user_list`
--

INSERT INTO `ms_user_list` (`uid`, `uname`, `upwd`, `phone`, `avatar`, `user_name`, `qq`) VALUES
(1, 'tom', '123456', '15136298700', '', '汤姆', '1416840235');

-- --------------------------------------------------------

--
-- 表的结构 `ms_xiangqing`
--

CREATE TABLE `ms_xiangqing` (
  `id` int(11) NOT NULL,
  `lid` int(11) DEFAULT NULL,
  `area` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `grade` varchar(128) NOT NULL,
  `subtitle` varchar(218) NOT NULL,
  `bed` varchar(64) DEFAULT NULL,
  `llqr` varchar(255) DEFAULT NULL,
  `pjch` varchar(255) DEFAULT NULL,
  `kdcw` varchar(255) DEFAULT NULL,
  `whms` varchar(255) DEFAULT NULL,
  `czfd` varchar(255) DEFAULT NULL,
  `ytcw` varchar(255) DEFAULT NULL,
  `lng` varchar(218) NOT NULL,
  `lag` varchar(218) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `subvalue` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `picc` varchar(218) CHARACTER SET armscii8 DEFAULT NULL,
  `piccc` varchar(255) CHARACTER SET armscii8 DEFAULT NULL,
  `picccc` varchar(255) CHARACTER SET armscii8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_xiangqing`
--

INSERT INTO `ms_xiangqing` (`id`, `lid`, `area`, `price`, `title`, `grade`, `subtitle`, `bed`, `llqr`, `pjch`, `kdcw`, `whms`, `czfd`, `ytcw`, `lng`, `lag`, `value`, `subvalue`, `pic`, `picc`, `piccc`, `picccc`) VALUES
(1, 1, '70', '340.00', '[曦月民宿]环山陪伴水现代民宿', '5.0分 超赞', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.4433055580', '31.1946458680', '2', NULL, 'mst/1.jpg', 'mst/01.jpg', 'mst/001.jpg', 'mst/0001.jpg'),
(2, 1, '45', '502.00', 'N时光 清新老弄堂洋房 步行展览中心', '4.9分 超赞', '21条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.4433055580', '31.1946458680', '2', '一张床', 'mst/2.jpg', 'mst/02.jpg', 'mst/002.jpg', 'mst/0002.jpg'),
(3, 1, '60', '559.00', '[惜舍-复兴时光]后现代生活公寓', '4.7分 超赞', '36条评价 | 整套2居室·可住4人 | 上海 · 黄浦区', '2厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.4912966392', '31.2374294453', '4', '两张床', 'mst/3.jpg', 'mst/03.jpg', 'mst/003.jpg', 'mst/0003.jpg'),
(4, 1, '80', '398.00', '[极居·魔都往事] 地铁洋房', '4.8分 超赞', '59条评价 | 整套1居室·可住2人 | 上海 · 静安区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.4624372609', '31.2296614952', '2', '一张床', 'mst/4.jpg', 'mst/04.jpg', 'mst/004.jpg', 'mst/0004.jpg'),
(5, 1, '70', '559.20', '桃源坊5·思南公馆', '4.7分 超赞', '26条评价 | 整套1居室·可住2人 | 上海 · 徐汇区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.4433055580', '31.1946458680', '2', '一张床', 'mst/5.jpg', 'mst/05.jpg', 'mst/005.jpg', 'mst/0005.jpg'),
(6, 1, '30', '666.00', '云栖民宿', '4.7分 超赞', '18条评价 | 整套2居室·可住4人 | 上海 · 杨浦区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.5326577316', '31.2656839054', '4', '两张床', 'mst/6.jpg', 'mst/06.jpg', 'mst/006.jpg', 'mst/0006.jpg'),
(7, 1, '60', '468.00', '[等号·波澜]设计师民宿', '4.9 超赞', '37条评价 | 整套1居室·可住2人 | 上海 · 浦东新区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.5972439069', '31.3447854256', '2', '一张床', 'mst/7.jpg', 'mst/07.jpg', 'mst/007.jpg', 'mst/0007.jpg'),
(8, 1, '60', '262.00', '谧静小屋 ins风 | 超大客厅', '4.6分 超赞', '41条评价 | 整套1居室·可住2人 | 上海 · 黄埔区', '0厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '121.4912966392', '31.2374294453', '2', '一张床', 'mst/8.jpg', 'mst/08.jpg', 'mst/008.jpg', 'mst/0008.jpg'),
(9, 2, '80', '412.00', '[慢慢生活]百子湾国贸双井快乐谷', '5.0分 超赞', '24条评价 | 整套1居室·可住2人 | 北京 · 朝阳区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.4500804174', '39.9277919936', '2', '一张床', 'mst/9.jpg', 'mst/09.jpg', 'mst/009.jpg', 'mst/0009.jpg'),
(10, 2, '45', '368.00', '中关村软件园/北欧ins', '4.7分 超赞', '34条评价 | 整套1居室·可住2人 | 北京 · 朝阳区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.4500804174', '39.9277919936', '2', '一张床', 'mst/10.jpg', 'mst/010.jpg', 'mst/0010.jpg', 'mst/00010.jpg'),
(11, 2, '58', '390.00', '[CHANEL]国贸/大望路/双井', '4.5分 超赞', '28条评价 | 整套1居室·可住2人 | 北京 · 丰台区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.2925655060', '39.8649020766', '2', '一张床', 'mst/11.jpg', 'mst/011.jpg', 'mst/0011.jpg', 'mst/00011.jpg'),
(12, 2, '39', '264.00', '[京·叁] 近地铁/天安门 故宫', '4.9分 超赞', '99条评价 | 整套1居室·可住2人 | 北京 · 通州区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.4146667519', '39.9174917852', '2', '一张床', 'mst/12.jpg', 'mst/012.jpg', 'mst/0012.jpg', 'mst/00012.jpg'),
(13, 2, '30', '228.00', '王府井大栅栏 天坛 长城 天安门故宫', '5.0分 超赞', '29条评价 | 整套1居室·可住2人 | 北京 · 西城区', '0厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.3726511068', '39.9182625756', '2', '一张床', 'mst/13.jpg', 'mst/013.jpg', 'mst/0013.jpg', 'mst/00013.jpg'),
(14, 2, '54', '366.00', '[周年庆]【摩洛哥】望京SOHO/798/央美', '4.7分 超赞', '24条评价 | 整套1居室·可住2人 | 北京 · 丰台区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.2925655060', '39.8649020766', '2', '一张床', 'mst/14.jpg', 'mst/014.jpg', 'mst/0014.jpg', 'mst/00014.jpg'),
(15, 2, '54', '262.00', '[喜圆居] 蹦床海洋球/ins风落地窗/私人巨幕影院', '4.6分 超赞', '36条评价 | 整套1居室·可住2人 | 北京 · 西城区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.3726511068', '39.9182625756', '2', '一张床', 'mst/15.jpg', 'mst/015.jpg', 'mst/0015.jpg', 'mst/00015.jpg'),
(16, 2, '45', '322.00', '[寓言] 时光机', '4.8分 超赞', '58条评价 | 整套1居室·可住2人 | 北京 · 通州区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '116.6635476963', '39.9162138982', '2', '一张床', 'mst/16.jpg', 'mst/016.jpg', 'mst/0016.jpg', 'mst/00016.jpg'),
(17, 3, '55', '498.00', '[汉谷喜舍] 珠江新城/广州塔', '4.6分 超赞', '57条评价 | 整套1居室·可住2人 | 广州 · 白云区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.2796771643', '23.1641580435', '2', '一张床', 'mst/17.jpg', 'mst/017.jpg', 'mst/0017.jpg', 'mst/00017.jpg'),
(18, 3, '47', '268.00', '[河马先生]广州东站上盖', '4.8分 超赞', '35条评价 | 整套1居室·可住2人 | 广州 · 花都区', '0厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.2268267354', '23.4095853170', '2', '一张床', 'mst/18.jpg', 'mst/018.jpg', 'mst/0018.jpg', 'mst/00018.jpg'),
(19, 3, '18', '134.00', '[栖池] 万科云城米酷', '4.5分 超赞', '25条评价 | 整套1居室·可住2人 | 广州 · 南沙区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.5314047076', '22.8080273596', '2', '一张床', 'mst/19.jpg', 'mst/019.jpg', 'mst/0019.jpg', 'mst/00019.jpg'),
(20, 3, '46', '269.00', '塔酥 柒 北欧黑白灰色冷淡', '4.7分 超赞', '36条评价 | 整套1居室·可住2人 | 广州 · 天河区', '0厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.3685290786', '23.1304029041', '2', '一张床', 'mst/20.jpg', 'mst/020.jpg', 'mst/0020.jpg', 'mst/00020.jpg'),
(21, 3, '20', '118.00', '<Dream Maker民宿>广大华软', '4.8分 超赞', '29条评价 | 整套1居室·可住2人 | 广州 · 从化区', '0厅0厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.5930447489', '23.5540263969', '2', '一张床', 'mst/21.jpg', 'mst/021.jpg', 'mst/0021.jpg', 'mst/00021.jpg'),
(22, 3, '50', '239.00', '[原舍] 双地铁|机场直达', '4.6分 超赞', '33条评价 | 整套1居室·可住2人 | 广州 · 花都区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.2268267354', '23.4095853170', '2', '一张床', 'mst/22.jpg', 'mst/022.jpg', 'mst/0022.jpg', 'mst/00022.jpg'),
(23, 3, '49', '232.00', '天河公园软件园广医三院', '4.8分 超赞', '67条评价 | 整套1居室·可住2人 | 广州 · 花都区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.2268267354', '23.4095853170', '2', '一张床', 'mst/23.jpg', 'mst/023.jpg', 'mst/0023.jpg', 'mst/00023.jpg'),
(24, 3, '58', '240.00', '[浮生有梦，而我有你] 暖气房', '4.5分 超赞', '29条评价 | 整套1居室·可住2人 | 广州 · 番禺区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.3907423248', '22.9438295386', '2', '一张床', 'mst/24.jpg', 'mst/024.jpg', 'mst/0024.jpg', 'mst/00024.jpg'),
(25, 4, '50', '215.00', '正弘城高端公寓俯瞰夜景', '4.9分 超赞', '34条评价 | 整套1居室·可住2人 | 郑州 · 金水区', '0厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6671419919', '34.8059930507', '2', '一张床', 'mst/25.jpg', 'mst/025.jpg', 'mst/0025.jpg', 'mst/00025.jpg'),
(26, 4, '90', '231.00', '【锦年】 - [惊艳时光] 郑大·天旺广场', '4.8分 超赞', '29条评价 | 整套1居室·可住2人 | 郑州 · 高新区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.5655508585', '34.8112580023', '2', '一张床', 'mst/26.jpg', 'mst/026.jpg', 'mst/0026.jpg', 'mst/00026.jpg'),
(27, 4, '53', '238.00', '一半·民宿温馨、儒雅 紧邻宜家', '4.8分 超赞', '35条评价 | 整套1居室·可住2人 | 郑州 · 惠济区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6233988097', '34.8734969720', '2', '一张床', 'mst/27.jpg', 'mst/027.jpg', 'mst/0027.jpg', 'mst/00027.jpg'),
(28, 4, '40', '228.00', '[Echo·星河] 设计师民宿/正弘商圈', '5.0分 超赞', '39条评价 | 整套1居室·可住2人 | 郑州 · 金水区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6671419919', '34.8059930507', '2', '一张床', 'mst/28.jpg', 'mst/028.jpg', 'mst/0028.jpg', 'mst/00028.jpg'),
(29, 4, '90', '238.00', '[豫住] 国贸360/蓝堡湾/博物馆轻奢两居', '4.9分 超赞', '79条评价 | 整套1居室·可住2人 | 郑州 · 金水区', '1厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6671419919', '34.8059930507', '2', '一张床', 'mst/29.jpg', 'mst/029.jpg', 'mst/0029.jpg', 'mst/00029.jpg'),
(30, 4, '50', '206.00', '[樱语] 暖气房 和风一居', '4.7分 超赞', '37条评价 | 整套1居室·可住2人 | 郑州 · 中原区', '0厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6198291117', '34.7541365724', '2', '一张床', 'mst/30.jpg', 'mst/030.jpg', 'mst/0030.jpg', 'mst/00030.jpg'),
(31, 4, '89', '388.00', '[识度]暖气房 一家有温度的民宿', '4.5分 超赞', '48条评价 | 整套1居室·可住2人 | 郑州 · 管城区', '2厅1厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6839170263', '34.7597044841', '2', '一张床', 'mst/31.jpg', 'mst/031.jpg', 'mst/0031.jpg', 'mst/00031.jpg'),
(32, 4, '120', '366.00', '[正弘城]国贸/酒吧街淡雅三居', '4.6分 超赞', '57条评价 | 整套1居室·可住2人 | 郑州 · 金水区', '1厅0厨1卫', '立即确认', '评价超好', '可带宠物', '网红民宿', '超赞房东', '有停车位', '113.6671419919', '34.8059930507', '2', '一张床', 'mst/32.jpg', 'mst/032.jpg', 'mst/0032.jpg', 'mst/00032.jpg'),
(33, NULL, NULL, NULL, '全国浪漫情侣民宿盘点', '', '心动民宿一网打尽', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'mst/1.jpg', '', NULL, NULL),
(34, NULL, NULL, NULL, '去看展，睡进艺术空间', '', '躺着也能感受艺术的熏陶', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'mst/2.jpg', '', NULL, NULL),
(35, NULL, NULL, NULL, '携萌宠去民宿撒花', '', '铲屎官带着主子们一起旅行', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'mst/3.jpg', '', NULL, NULL),
(36, NULL, NULL, NULL, '这些民宿很有镜头感', '', '想要在这些民宿里拍美照', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'mst/4.jpg', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms_ comment`
--
ALTER TABLE `ms_ comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_ commented`
--
ALTER TABLE `ms_ commented`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_evaluation`
--
ALTER TABLE `ms_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_favorite`
--
ALTER TABLE `ms_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_faxian`
--
ALTER TABLE `ms_faxian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_findtext`
--
ALTER TABLE `ms_findtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_home_carousel`
--
ALTER TABLE `ms_home_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `ms_home_xiaoimg`
--
ALTER TABLE `ms_home_xiaoimg`
  ADD PRIMARY KEY (`xid`);

--
-- Indexes for table `ms_laptop_sc`
--
ALTER TABLE `ms_laptop_sc`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `ms_login`
--
ALTER TABLE `ms_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_userorder`
--
ALTER TABLE `ms_userorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_user_list`
--
ALTER TABLE `ms_user_list`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ms_xiangqing`
--
ALTER TABLE `ms_xiangqing`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ms_ comment`
--
ALTER TABLE `ms_ comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ms_ commented`
--
ALTER TABLE `ms_ commented`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `ms_evaluation`
--
ALTER TABLE `ms_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `ms_favorite`
--
ALTER TABLE `ms_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- 使用表AUTO_INCREMENT `ms_findtext`
--
ALTER TABLE `ms_findtext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `ms_laptop_sc`
--
ALTER TABLE `ms_laptop_sc`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ms_login`
--
ALTER TABLE `ms_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `ms_userorder`
--
ALTER TABLE `ms_userorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `ms_user_list`
--
ALTER TABLE `ms_user_list`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ms_xiangqing`
--
ALTER TABLE `ms_xiangqing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
