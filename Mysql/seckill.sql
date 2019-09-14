/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100121
 Source Host           : localhost:3306
 Source Schema         : seckill

 Target Server Type    : MySQL
 Target Server Version : 100121
 File Encoding         : 65001

 Date: 06/07/2019 11:09:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(64) NOT NULL COMMENT '商品 ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `price` int(16) NULL DEFAULT NULL COMMENT '商品价格',
  `time` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上架时间',
  `stock` int(128) NULL DEFAULT NULL COMMENT '库存',
  `classify` int(4) NULL DEFAULT NULL COMMENT '类别： 1 椅子，2 柜子 3 床 4 沙发',
  `sales` int(128) NULL DEFAULT NULL COMMENT '销量',
  `p1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片1',
  `p2` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片2',
  `p3` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片3',
  `p4` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片4',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '英德川', '高度可以调节，坐感舒适。 安全脚轮带有压力感应刹车装置，在你站起时，椅子能牢牢地留在原地，在你坐下时会自动释放。', 599, '2019-02-18', 123, 1, 5, '1_1_1.png', '1_1_2.png', '1_1_3.png', '1_1_4.png');
INSERT INTO `item` VALUES (2, '诺米拉', '椅子可叠放，不用时可节省空间。 靠背形状能增加落座舒适感。', 199, '2018-03-13', 293, 1, 23, '1_2_1.png', '1_2_2.png', '1_2_3.png', '1_2_4.png');
INSERT INTO `item` VALUES (3, '奥德格', '只需将各部分接合在一起，便可轻松完成组装，无需使用工具。碗型椅座，弧形靠背，坐上去十分舒适。它采用可再生木材和回收塑料制成，定能让你坐享舒适惬意！', 499, '2016-04-15', 221, 1, 78, '1_3_1.png', '1_3_2.png', '1_3_3.png', '1_3_4.png');
INSERT INTO `item` VALUES (4, '帝奥多斯', '坚固舒适的椅子，材质轻便，而且可堆叠。无论在餐厅、玄关还是床边，都可轻松与不同的桌子和风格搭配，满足你的需求。', 178, '2016-03-12', 66, 1, 5, '1_4_1.png', '1_4_2.png', '1_4_3.png', '1_4_4.png');
INSERT INTO `item` VALUES (5, '拉罕姆', '该椅架由经久耐用的天然实木制成。 实心松木为天然材料，有种独特的品质，经久更美观。 椅套可机洗。', 268, '2017-02-12', 89, 1, 45, '1_5_1.png', '1_5_2.png', '1_5_3.png', '1_5_4.png');
INSERT INTO `item` VALUES (6, '艾多弗', '精益求精才能变得更好。在 IDOLF 艾多弗 产品系列面世超过五年之后，我们找到了一种工艺方式，可以用更少的木材制作出更多的椅子。椅子质地更轻盈，但同样舒适牢固，而且易于放置。', 398, '2019-12-03', 12, 1, 45, '1_6_1.png', '1_6_2.png', '1_6_3.png', '1_6_4.png');
INSERT INTO `item` VALUES (7, '伯恩哈德', '镀铬底架上覆有软垫，柔软舒适，且选用耐用的粒面皮革打造。这款产品坐感舒适，且易于打理，可长久保持美观。', 999, '2017-09-12', 22, 1, 23, '1_7_1.png', '1_7_2.png', '1_7_3.png', '1_7_4.png');
INSERT INTO `item` VALUES (8, '斯第芬', '椅子采用实木结构，结实牢固，可轻松应对日常生活的挑战！可轻松搭配各类风格，如果你想增加舒适度，只需添置一张椅子垫即可。', 149, '2018-03-04', 245, 1, 14, '1_8_1.png', '1_8_2.png', '1_8_3.png', '1_8_4.png');
INSERT INTO `item` VALUES (9, '伊克多兰', '软垫椅座和弧形椅背，令人不禁想在桌前多坐一会。还有多款可机洗垫套供你选择，何不多备几款为家增添色彩？', 298, '2017-04-14', 21, 1, 36, '1_9_1.png', '1_9_2.png', '1_9_3.png', '1_9_4.png');
INSERT INTO `item` VALUES (10, '思伯帝', '你可以选择心仪的底架和椅面，或者随意混搭，趣味十足。最多可选择30种不同的搭配组合！采用凹形椅座和靠背设计，让你坐得更舒服。', 587, '2016-05-15', 22, 1, 82, '1_10_1.png', '1_10_2.png', '1_10_3.png', '1_10_4.png');
INSERT INTO `item` VALUES (11, '尼尔索乌', '白色的藤条，舒服的椅子，让你流量往返的感觉！', 729, '2017-06-21', 632, 1, 15, '1_11_1.png', '1_11_2.png', '1_11_3.png', '1_11_4.png');
INSERT INTO `item` VALUES (12, '耶勒乌弗亚列特', '每个人的体型都不尽相同。JÄRVFJÄLLET 耶勒乌弗亚列特 转椅设计巧妙，你可以调整头枕、腰撑和座椅的高度及深度，使其适合你的身高，贴合你的身形。', 1499, '2016-07-16', 345, 1, 68, '1_12_1.png', '1_12_2.png', '1_12_3.png', '1_12_4.png');
INSERT INTO `item` VALUES (13, '夫洛德', '椅子可折叠，不用时节省空间。 曲线型靠背，凹陷型座位，增加舒适感', 435, '2019-04-16', 123, 1, 24, '1_13_1.png', '1_13_2.png', '1_13_3.png', '1_13_4.png');
INSERT INTO `item` VALUES (14, '亨利克', '愉快地享用完漫长的餐点后，如果桌布椅套可以清洗，那可真是美事一桩。HENRIKSDAL 亨利克 可能是我们最舒适的椅子了！每当坐下来时，你都会觉得放松、舒适而柔软。', 639, '2018-03-17', 432, 1, 3, '1_14_1.png', '1_14_2.png', '1_14_3.png', '1_14_4.png');
INSERT INTO `item` VALUES (15, '雷夫尼', '你可以选择心仪的底架和椅面，或者随意混搭，趣味十足。最多可选择30种不同的搭配组合！采用凹形椅座和靠背设计，让你坐得更舒服。', 876, '2019-02-17', 456, 1, 41, '1_15_1.png', '1_15_2.png', '1_15_3.png', '1_15_4.png');
INSERT INTO `item` VALUES (16, '伯尔杰', '外罩便于拆卸、安装。 外套可机洗；易于保持清洁。 座位带有座垫，增加舒适感。 该椅架由经久耐用的天然实木制成。', 345, '2018-10-18', 60, 1, 27, '1_16_1.png', '1_16_2.png', '1_16_3.png', '1_16_4.png');
INSERT INTO `item` VALUES (17, '诺米纳尔', '享有10年品质保证，详情请见质保手册。 倾斜度装置可自动调节座椅的承托力，以适应您的移动方式和体重，让您可以舒适地躺在那里。', 787, '2017-09-18', 55, 1, 52, '1_17_1.png', '1_17_2.png', '1_17_3.png', '1_17_4.png');
INSERT INTO `item` VALUES (18, '托斯贝利', '一款专为亲友共享美妙晚餐而设计的椅子。舒适的腰撑，稳固的结构，外加柔软的填料，即使久坐，也不会感觉到任何不适。', 1299, '2016-03-19', 44, 1, 57, '1_18_1.png', '1_18_2.png', '1_18_3.png', '1_18_4.png');
INSERT INTO `item` VALUES (19, '马丁', '椅子可叠放，不用时可节省空间。 自动调节的塑料支脚令椅子更加稳定。', 293, '2013-02-19', 334, 1, 89, '1_19_1.png', '1_19_2.png', '1_19_3.png', '1_19_4.png');
INSERT INTO `item` VALUES (20, '塔尔诺', '便于折叠、存放。 为了提高家具的持久性并让您尽享原木魅力，已预先为其涂上一层半透明的木材着色剂。', 79, '2014-03-20', 23, 1, 110, '1_20_1.png', '1_20_2.png', '1_20_3.png', '1_20_4.png');
INSERT INTO `item` VALUES (21, '赖尔多', '你是一个浪漫的人吗？这款书架造型精美，细节独特，洋溢着田园风情。可搭配 LIATORP 赖尔多 系列其他家具，营造协调漂亮的外观。', 3499, '2018-1-8', 23, 2, 59, '2_1_1.png', '2_1_2.png', '2_1_3.png', '2_1_4.png');
INSERT INTO `item` VALUES (22, '塔瓦', '设计简洁，并由未经处理的木材制成，拥有传统的斯堪的纳维亚风格。这款产品风格时尚、造型清新优美，可与其他各类家具和谐搭配', 399, '2019-5-25', 45, 2, 67, '2_2_1.png', '2_2_2.png', '2_2_3.png', '2_2_4.png');
INSERT INTO `item` VALUES (23, '卡莱克', '无论竖着放还是横着放，亦或是靠墙放还是用作房间隔板，KALLAX 卡莱克 系列都能满足你的品味、空间、预算和需求。还可搭配抽屉、搁板、储物盒及插件', 299, '2019-7-17', 5, 2, 46, '2_3_1.png', '2_3_2.png', '2_3_3.png', '2_3_4.png');
INSERT INTO `item` VALUES (24, '伊克特', '储物盒也可以很时尚。用它们打造不对称或令人意想不到的储物方案，存放你的东西。你可以随心所欲地叠搭和组合。适合所有空间，拥有无限可能性。', 769, '2019-4-5', 23, 2, 78, '2_4_1.png', '2_4_2.png', '2_4_3.png', '2_4_4.png');
INSERT INTO `item` VALUES (25, '海思塔', '这款储物组合带电视柜内置电线管理装置，能隐藏起杂乱的电线，让你将电线收纳得井井有条。实木材质与拉丝表面，展现出经典纯粹的质感。', 6699, '2018-12-30', 78, 2, 785, '2_5_1.png', '2_5_2.png', '2_5_3.png', '2_5_4.png');
INSERT INTO `item` VALUES (26, '诺德里', 'NORDLI 诺德里 抽屉柜具有很强的适应性，你可以根据空间，宽窄高低随心打造。造型简洁现代，易于和其他家具搭配。注意，请将其固定在墙上。', 849, '2018-7-14', 5, 2, 45, '2_6_1.png', '2_6_2.png', '2_6_3.png', '2_6_4.png');
INSERT INTO `item` VALUES (27, '利克胡', '储物盒也可以很时尚。用它们打造不对称或令人意想不到的储物方案，存放你的东西。你可以随心所欲地叠搭和组合。适合所有空间，拥有无限可能性。', 129, '2019-2-5', 45, 2, 45, '2_7_1.png', '2_7_2png', '2_7_3.png', '2_7_4.png');
INSERT INTO `item` VALUES (28, '伊娃', 'IVAR 伊娃 储物系列功能强大，已忠实服务顾客50余年。阁楼、客厅、食品储藏室和卧室，都特别适合放置 IVAR 伊娃。', 450, '2019-5-24', 45, 2, 45, '2_8_1.png', '2_8_2.png', '2_8_3.png', '2_8_4.png');
INSERT INTO `item` VALUES (29, '海朗', '你可以根据个人喜好组合这些储物柜，设计出恰当实用的办公室或家居储物解决方案。你可以选购不同的尺寸，便于存放从钥匙到手提包等各类物品。', 400, '2019-1-14', 23, 2, 23, '2_9_1.png', '2_9_2.png', '2_9_3.png', '2_9_4.png');
INSERT INTO `item` VALUES (30, '科比约恩', '底部有孔洞排水，可经受雨淋。 室内外均可使用。 该柜采用涂粉末漆镀锌钢制成，耐用、防尘、易于清洁。', 599, '2018-8-16', 14, 2, 14, '2_10_1.png', '2_10_2.png', '2_10_3.png', '2_10_4.png');
INSERT INTO `item` VALUES (31, '巴拉', '这款搁板非常适合放置重物——它可以承载95公斤的重量，是标准搁板的两倍。 可在室内潮湿的地方使用。 这款搁板结实耐用，防潮防灰，可以承载重物，便于在家中各处使用，例如车库、浴室、厨房和餐具间等。', 948, '2019-4-24', 36, 2, 36, '2_11_1.png', '2_11_2.png', '2_11_3.png', '2_11_4.png');
INSERT INTO `item` VALUES (32, '海思塔', '将你最精美的摆设陈列在开放式搁架上，其余物品则收纳得井井有条，隐藏于视线之外。实木材质体现精心设计的细节，拉丝表面展现经典纯粹的质感。', 7500, '2018-7-23', 82, 2, 82, '2_12_1.png', '2_12_2.png', '2_12_3.png', '2_12_4.png');
INSERT INTO `item` VALUES (33, '迪南', '镜子背面有安全涂层，降低镜子破裂发生危险的可能。 门可安装为向右或向左开启。 这款家具采用柔和圆润的造型和边角设计，可为儿童和成人提供安全保护。', 697, '2018-11-17', 15, 2, 15, '2_13_1.png', '2_13_2.png', '2_13_3.png', '2_13_4.png');
INSERT INTO `item` VALUES (34, '阿普莱诺', '借助 ÄPPLARÖ/KLASEN 阿普莱诺/克拉森 碳烤炉、手推车及储物柜，你可以将烹饪区与实用区域结合起来，这样既可以放置上菜盘，又可以摆放烧烤工具。', 3294, '2019-2-8', 68, 2, 68, '2_14_1.png', '2_14_2.png', '2_14_3.png', '2_14_4.png');
INSERT INTO `item` VALUES (35, '诺克胡', '适用于打造包含便携式炉灶和宽敞储物空间的转角厨房。我们提供现成的模块组合，从购买到使用，都十分方便快捷。', 2947, '2019-4-24', 24, 2, 24, '2_15_1.png', '2_15_2.png', '2_15_3.png', '2_15_4.png');
INSERT INTO `item` VALUES (36, '斯多瓦/弗利亚', '每天都会做各种事情，比如穿衣打扮、阅读、玩以及剪贴活动等。如果有块地方可以集中做所有这些事情，收拾整理起来也会轻松许多。有了 STUVA 斯多瓦 组合，日常活动统统搞定。', 2246, '2018-7-27', 3, 2, 3, '2_16_1.png', '2_16_2.png', '2_16_3.png', '2_16_4.png');
INSERT INTO `item` VALUES (37, '瑞吉索', '对细节的极致考究令这款家具具备独特的手工制作外观。 带有明显粒纹的白蜡木贴面，让每个柜子都有其独特个性。 可调节搁板，您可根据需要设定储物。', 2499, '2019-6-15', 41, 2, 41, '2_17_1.png', '2_17_2.png', '2_17_3.png', '2_17_4.png');
INSERT INTO `item` VALUES (38, '迪南/利兰根', '支脚可调节，即使地面不平也能平稳站立。 门可安装为向右或向左开启。 这款家具采用柔和圆润的造型和边角设计，可为儿童和成人提供安全保护。', 1285, '2019-3-3', 27, 2, 27, '2_18_1.png', '2_18_2.png', '2_18_3.png', '2_18_4.png');
INSERT INTO `item` VALUES (39, '米斯伯', 'MILSBO 米斯伯 玻璃门柜 不像一些储物产品可以用来隐藏物品，你可以清楚展示收藏品，且可上锁，妥善保护物品安全。', 1299, '2019-9-24', 52, 2, 52, '2_19_1.png', '2_19_2.png', '2_19_3.png', '2_19_4.png');
INSERT INTO `item` VALUES (40, '汉尼斯', '一个收纳所有鞋子的空间，让出行更加便捷。设计简约经典，带有些许传统韵味，可完美搭配 HEMNES 汉尼斯 系列的其他家具。', 899, '2019-4-19', 57, 2, 57, '2_20_1.png', '2_20_2.png', '2_19_3.png', '2_20_4.png');
INSERT INTO `item` VALUES (41, '奈斯顿', '结实耐用的钢质结构与饰有网格图案的床头板相结合，打造出轻盈通透的效果。这款床架设计简洁，风格百搭，可与其他各类家具和谐搭配。', 899, '2018-12-7', 89, 3, 22, '3_1_1.png', '3_1_2.png', '3_1_3.png', '3_1_4.png');
INSERT INTO `item` VALUES (42, '马尔姆', '设计简洁，实木贴面。可单独使用，或搭配床头板使用。此外，还配有宽大的储物盒，带脚轮设计可让盒子顺畅滑动。', 2249, '2017-10-6', 110, 3, 632, '3_2_1.png', '3_2_2.png', '3_2_3.png', '3_2_4.png');
INSERT INTO `item` VALUES (43, '特里索', '睡前时光是阅读的好时候！床头板采用倾斜设计，让你可以舒适地坐在床上看书。这可是在入睡前充分放松的好方法。', 999, '2016-1-22', 59, 3, 345, '3_3_1.png', '3_3_2.png', '3_3_3.png', '3_3_4.png');
INSERT INTO `item` VALUES (44, '百灵', '床架多处带有隐蔽式抽屉，如果你的居住空间较小，选择它再适合不过了。BRIMNES百灵系列家具为你提供多种巧妙解决方案，助你节省空间。', 2699, '2017-6-23', 67, 3, 123, '3_4_1.png', '3_4_2.png', '3_4_3.png', '3_4_4.png');
INSERT INTO `item` VALUES (45, '菲茵斯兰', '若您习惯在床上看书或电视，柔软的床头板非常适合倚靠。 接触面采用柔软的染色粒面皮革，厚度1.2毫米，触感光滑柔韧。', 6399, '2018-7-24', 46, 3, 432, '3_5_1.png', '3_5_2.png', '3_5_3.png', '3_5_4.png');
INSERT INTO `item` VALUES (46, '约纳斯', '桦木和皮革等天然材料，搭配精细的木工细节，打造出简洁通透的外观。这款床架是宜家 BJÖRKSNÄS 约纳斯 系列单品之一，源于斯堪的纳维亚的工艺传统桦木和皮革等天然材料，搭配精细的木工细节，打造出简洁通透的外观。这款床架是宜家 BJÖRKSNÄS 约纳斯 系列单品之一，源于斯堪的纳维亚的工艺传统。', 3299, '2016-8-25', 88, 3, 456, '3_6_1.png', '3_6_2.png', '3_6_3.png', '3_6_4.png');
INSERT INTO `item` VALUES (47, '莱尔维克', '如果你喜欢浪漫，你会发现，白色钢质装饰曲线的魅力令人难以抗拒。你可以在床上放上精美的纺织品和枕头，安然进入童话般甜美的梦乡。', 1699, '2018-3-15', 76, 3, 60, '3_7_1.png', '3_7_2.png', '3_7_3.png', '3_7_4.png');
INSERT INTO `item` VALUES (48, '艾思福', '这款床具设计素净简洁，可成为家中亮点；还可以用来搭配你最喜爱的纺织品或其他家居用品。床头板较低，最适合放在窗边或倾斜的天花板下。', 1499, '2017-9-25', 98, 3, 55, '3_8_1.png', '3_8_2.png', '3_8_3.png', '3_8_4.png');
INSERT INTO `item` VALUES (49, '格里姆斯布', '稳固轻巧，饰以活泼明快的绿色。低矮的设计，适合放在窗边或倾斜式天花板下，床底下还有许多空间可以存放储物盒。只需简单几步便可完成组装。', 549, '2017-9-26', 45, 3, 44, '3_9_1.png', '3_9_2.png', '3_9_3.png', '3_9_4.png');
INSERT INTO `item` VALUES (50, '格约拉', '这款床定能让你的美梦实现！你可以选择较低的一端作床头板，也可以选择另一端。你可以在上面挂一些衣物或布料，将其打造成房间隔板，或是把它独立摆放在房间中央。', 2299, '2017-9-27', 62, 3, 334, '3_10_1.png', '3_10_2.png', '3_10_3.png', '3_10_4.png');
INSERT INTO `item` VALUES (51, '汉尼斯', '我们采用的材料是来自可持续来源的实心木，这是一种耐用的可再生材料，用它打造的家具会随着时间的流逝而保持原有特色不变。可与 HEMNES 汉尼斯 系列的其他家具搭配使用。', 2099, '2017-9-28', 69, 3, 23, '3_11_1.png', '3_11_2.png', '3_11_3.png', '3_11_4.png');
INSERT INTO `item` VALUES (52, '诺德里', 'NORDLI诺德里床架不仅仅是一张舒适的床，同时还是储物单元，配有6个大抽屉，可存放衣物和备用羽绒被。这款床架实用又不占空间，还能让你甜蜜入梦。', 2599, '2017-9-29', 90, 3, 23, '3_12_1.png', '3_12_2.png', '3_12_3.png', '3_12_4.png');
INSERT INTO `item` VALUES (53, '迪拉提', '有了这款床架，你可以将书籍和水杯放得近在手边；床边桌固定在床架上，便于清洁打理。', 4799, '2017-9-30', 78, 3, 45, '3_13_1.png', '3_13_2.png', '3_13_3.png', '3_13_4.png');
INSERT INTO `item` VALUES (54, '萨格斯图阿', '这款风格经典的床架饰有黄铜细节。富有弧度的床头板和黄铜色装饰细节让坚硬的钢架结构变得柔和起来。在上面铺上你最喜爱的床上用品，使它成为你卧室最抢眼的单品，彰显自己的独特个性。', 1199, '2017-10-1', 96, 3, 5, '3_14_1.png', '3_14_2.png', '3_14_3.png', '3_14_4.png');
INSERT INTO `item` VALUES (55, '提赛尔', '这款家具简洁轻巧、外形圆润，并且做工精湛、质量上乘、设计经典，确保顾客可持续使用多年。TYSSEDAL 提赛尔 系列中还有一些卧室家具同样拥有斯堪的纳维亚风格外观。', 2999, '2017-10-2', 59, 3, 23, '3_15_1.png', '3_15_2.png', '3_15_3.png', '3_15_4.png');
INSERT INTO `item` VALUES (56, '塔瓦', 'TARVA塔瓦床架是具有现代特色的斯堪的纳维亚传统家具，此类家具一直采用简洁的设计风格，并由未经处理的木材制作而成。这款产品设计经典，可与其他各类家具和谐搭配。', 1399, '2017-10-3', 102, 3, 78, '3_16_1.png', '3_16_2.png', '3_16_3.png', '3_16_4.png');
INSERT INTO `item` VALUES (61, '爱克托', '备受喜爱的 EKTORP 爱克托 座椅采用经典设计，搭配厚实舒适的靠垫。垫套易于更换，不妨额外再购买一两个垫套，根据心情或季节随意更换。', 1499, '2019-4-24', 57, 4, 14, '4_5_1.png', '4_5_2.png', '4_5_3.png', '4_5_4.png');
INSERT INTO `item` VALUES (62, '克利帕', '我们在1980年代推出了 KLIPPAN 克利帕 沙发，如今它仍然是顾客的最爱。这款沙发坐感舒适，适合各种场所，并且有多种颜色的沙发套供你选择，堪称现代感十足的经典之作！', 999, '2019-1-25', 121, 4, 36, '4_6_1.png', '4_6_2.png', '4_6_3.png', '4_6_4.png');
INSERT INTO `item` VALUES (63, '兰德克纳', '温暖、宜人、整洁、时尚。这款沙发配备支撑座垫，垫套触感柔软，线条造型紧密贴合，因而兼具舒适、实用和美观等特点。', 3999, '2018-1-8', 145, 4, 82, '4_7_1.png', '4_7_2.png', '4_7_3.png', '4_7_4.png');
INSERT INTO `item` VALUES (64, '格罗恩里德', '相互依偎，感受温暖的拥抱，享受温馨的夜晚和慵懒的白天。这款沙发采用加深设计，搭配柔软、可移动靠垫，而且有多种形状和尺寸可选，一切皆旨在为你打造舒适享受。', 4499, '2019-5-25', 165, 4, 15, '4_8_1.png', '4_8_2.png', '4_8_3.png', '4_8_4.png');
INSERT INTO `item` VALUES (65, '弗罗特博', '看电影或与朋友交谈。读书或与家人一同休息。发邮件或睡上一觉。无论你想做什么，都有足够的空间。可移动的靠垫可以让沙发更加舒适，适合就坐或者躺卧。', 3699, '2019-7-17', 17, 4, 68, '4_9_1.png', '4_9_2.png', '4_9_3.png', '4_9_4.png');
INSERT INTO `item` VALUES (66, '利胡特', '好好款待留宿的客人。LIDHULT 利胡特 沙发床的设计能够尽可能为你提供舒适感受，你可以和朋友一起坐在沙发床上放松。如果朋友需要留宿，则可以睡在上面，给人以包围、迷人、宽大之感。', 10999, '2019-4-5', 18, 4, 24, '4_10_1.png', '4_10_2.png', '4_10_3.png', '4_10_4.png');
INSERT INTO `item` VALUES (67, '巴克弗', '简单操作即可变成一张床。 垫套可拆卸、机洗，便于保持清洁。', 1399, '2018-12-30', 35, 4, 36, '4_11_1.png', '4_11_2.png', '4_11_3.png', '4_11_4.png');
INSERT INTO `item` VALUES (68, '瓦伦图', 'VALLENTUNA 瓦伦图 系列中的所有模块既可独立使用也可组合使用，便于你打造理想尺寸的沙发组合。 VALLENTUNA 瓦伦图 座位宽敞，拥有可贴合身体线条的袋装弹簧，能够长久保持舒适坐感。', 2520, '2018-7-14', 28, 4, 57, '4_12_1.png', '4_12_2.png', '4_12_3.png', '4_12_4.png');
INSERT INTO `item` VALUES (69, '英格托', '两扇折页可让你根据需求调整桌子大小。 你可将电线和延长导线汇集在桌面下的搁板上，将留置于视线外但又伸手可及。 这款文件柜组件可以放在桌面或悬挂在墙上。', 999, '2016-12-7', 173, 5, 121, '5_1_1.png', '5_1_2.png', '5_1_3.png', '5_1_4.png');
INSERT INTO `item` VALUES (70, '利萨伯', 'LISABO利萨伯系列曾荣获国际知名的红点设计大奖。该系列产品坚固耐用、易于组装，看起来十分轻便，手工工艺气息浓厚。', 999, '2017-10-6', 283, 5, 145, '5_2_1.png', '5_2_2.png', '5_2_3.png', '5_2_4.png');
INSERT INTO `item` VALUES (71, '拉罕姆', '桌子设计简洁，易于放置，定会让你一见倾心。实心松木随时光流逝而越发美丽，为房间增添温馨质朴之感，可与 LERHAMN 拉罕姆 椅子完美搭配。', 599, '2018-1-22', 325, 5, 165, '5_3_1.png', '5_3_2.png', '5_3_3.png', '5_3_4.png');
INSERT INTO `item` VALUES (72, '伊克多兰', '一款经久耐用的餐桌，让你可以轻松享受丰盛大餐。一个人便可轻松展开桌子，支腿均位于桌角处，有足够的空间来摆放椅子。', 999, '2017-6-23', 156, 5, 17, '5_4_1.png', '5_4_2.png', '5_4_3.png', '5_4_4.png');
INSERT INTO `item` VALUES (81, '英格', '未经处理的实心松木是一种天然的耐用材料，可以根据您的喜好来涂漆、上油或染色。 松木的纹路笔直，拥有木节，令其质朴的外观极具辨识度。自然状态的白蜡木重量大，给人非常结实的感觉。', 369, '2019-3-18', 519, 5, 176, '5_13_1.png', '5_13_2.png', '5_13_3.png', '5_13_4.png');
INSERT INTO `item` VALUES (82, '诺伯', '可折叠；不用时节省空间。实木是一种耐磨的天然材料。我们已经为你测试过了！桌子表面防水防污、防油耐热、耐刮擦、耐碰撞，结构结实坚固，可经受多年的日常使用。', 336, '2016-10-9', 299, 5, 432, '5_14_1.png', '5_14_2.png', '5_14_3.png', '5_14_4.png');
INSERT INTO `item` VALUES (83, '诺顿', '可延伸式餐桌，带有1个备用活动桌面，可坐4-6人；能够根据需要调节桌子的大小。 隐蔽式锁定功能，以防在顶部和叶片之间留有空隙，而且，可将备用叶片固定在位。', 1699, '2016-11-3', 347, 5, 362, '5_15_1.png', '5_15_2.png', '5_15_3.png', '5_15_4.png');
INSERT INTO `item` VALUES (84, '多斯比', '高光泽表面能反射光线，打造充满活力的桌子外观。结实的镀铬框架光泽闪耀。为这款桌子搭配带镀铬椅腿的椅子，可打造出时尚简洁的风格。', 1299, '2019-6-14', 276, 5, 339, '5_16_1.png', '5_16_2.png', '5_16_3.png', '5_16_4.png');
INSERT INTO `item` VALUES (85, '安维巴', '全新餐桌理念？温暖竹制表面下有一个精巧的储物盒，可用来存放刀叉、笔或新鲜香草，方便取用。使用电脑办公时，你可以将电线穿过储物盒。', 2999, '2017-12-4', 249, 5, 354, '5_17_1.png', '5_17_2.png', '5_17_3.png', '5_17_4.png');
INSERT INTO `item` VALUES (86, '乐维', 'KULLABERG乐维桌面给人一种自然生动的感觉。所以我们决定保留木材表面的节瘤和其他印记，让桌面独一无二。', 999, '2019-5-28', 193, 5, 276, '5_18_1.png', '5_18_2.png', '5_18_3.png', '5_18_4.png');
INSERT INTO `item` VALUES (58, '弗瑞顿', '一夜安睡过后，你可以轻松把卧室或客房再次变回客厅。内置储物空间易于使用，十分宽敞，可以存放床上用品、书籍和睡衣。', 2799, '2019-5-24', 75, 4, 45, '4_2_1.png', '4_2_2.png', '4_2_3.png', '4_2_4.png');
INSERT INTO `item` VALUES (57, '奇维', '尽情享受 KIVIK 奇维 沙发带来的柔软舒适。这款沙发尺寸宽大、扶手较低，且采用记忆海绵设计，能够紧密贴合身体轮廓，可让你在上面长时间小睡、与人交流和放松。', 2999, '2019-2-5', 213, 4, 5, '4_1_1.png', '4_1_2.png', '4_1_3.png', '4_1_4.png');
INSERT INTO `item` VALUES (73, '西沃特', '蜜胺表面，防潮、防刮擦，易于清洗。 桌面有预先钻好的孔用于固定底架，使安装简单轻松。', 1499, '2016-7-24', 233, 5, 18, '5_5_1.png', '5_5_2.png', '5_5_3.png', '5_5_4.png');
INSERT INTO `item` VALUES (59, '汉林比', '沙发小巧齐整，易于装饰，哪怕空间有限。', 499, '2019-1-14', 65, 4, 45, '4_3_1.png', '4_3_2.png', '4_3_3.png', '4_3_4.png');
INSERT INTO `item` VALUES (60, '斯佳蒙', '为钟爱的旧物品赋予新生命。我们在1950年代推出这款椅子。如今60多年过去了，我们重新将其纳入我们的产品系列，还是一样的工艺、舒适度和外观。尽情享受吧！', 1299, '2018-8-16', 36, 4, 23, '4_4_1.png', '4_4_2.png', '4_4_3.png', '4_4_4.png');
INSERT INTO `item` VALUES (74, '瑞吉托', '由于木材的表面仍保留着节和其他痕印，因此有一种纯粹的天然木质感。 桌面有预先钻好的孔用于固定底架，使安装简单轻松。', 1399, '2016-8-25', 176, 5, 35, '5_6_1.png', '5_6_2.png', '5_6_3.png', '5_6_4.png');
INSERT INTO `item` VALUES (75, '维斯坦', '清漆表面方便擦拭。桌面有预先钻好的孔用于固定底架，使安装简单轻松。', 2999, '2015-3-15', 432, 5, 28, '5_7_1.png', '5_7_2.png', '5_7_3.png', '5_7_4.png');
INSERT INTO `item` VALUES (76, '麦托', '这款桌子可满足不同顾客的需求，包括极简主义者和对日常用具强度与耐用性有要求的家庭。可放在厨房或餐厅。设计简约，易于搭配多种不同风格。', 399, '2016-9-25', 362, 5, 173, '5_8_1.png', '5_8_2.png', '5_8_3.png', '5_8_4.png');
INSERT INTO `item` VALUES (77, '望斯塔', '可延伸式餐桌，带有1个备用活动桌面，可坐4-6人；能够根据需要调节桌子的大小。 这款桌子设计巧妙，即使不展开使用，桌面上也不会留有接缝。', 899, '2017-10-6', 339, 5, 283, '5_9_1.png', '5_9_2.png', '5_9_3.png', '5_9_4.png');
INSERT INTO `item` VALUES (78, '冈拉瑞德', '亲朋好友团聚在一起时，圆桌总是理想之选，而这款圆桌会令人情不自禁地想开启轻松对谈。温馨的木材和柔和的圆形边缘营造出舒适怡人的轻松氛围。可轻松放在家中任何位置。', 999, '2018-5-10', 354, 5, 325, '5_10_1.png', '5_10_2.png', '5_10_3.png', '5_10_4.png');
INSERT INTO `item` VALUES (79, '巴斯维金', '折叠式桌面；节省空间，可根据需要 调节桌面大小。 桌子带有折页式桌面，可坐2-4人；能够根据需要调节桌子的大小。 折叠桌下可存放四把折叠椅，不用时节省空间。', 798, '2016-8-30', 276, 5, 156, '5_11_1.png', '5_11_2.png', '5_11_3.png', '5_11_4.png');
INSERT INTO `item` VALUES (80, '比约斯', '这款桌子可以伸展，因而宾客到来时能提供充足的空间，隐藏式锁扣设计可以避免桌面之间出现烦人的缝隙。桌面一擦就净，让你轻松应对就餐时不慎洒落的食物汤汁。', 1299, '2017-12-4', 123, 5, 233, '5_12_1.png', '5_12_2.png', '5_12_3.png', '5_12_4.png');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock`  (
  `id` int(16) NOT NULL COMMENT 'item 对应 ID',
  `stock` int(16) NOT NULL COMMENT '商品库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES (1, 123);
INSERT INTO `item_stock` VALUES (2, 293);
INSERT INTO `item_stock` VALUES (3, 221);
INSERT INTO `item_stock` VALUES (4, 66);
INSERT INTO `item_stock` VALUES (5, 89);
INSERT INTO `item_stock` VALUES (6, 12);
INSERT INTO `item_stock` VALUES (7, 22);
INSERT INTO `item_stock` VALUES (8, 245);
INSERT INTO `item_stock` VALUES (9, 21);
INSERT INTO `item_stock` VALUES (10, 22);
INSERT INTO `item_stock` VALUES (11, 632);
INSERT INTO `item_stock` VALUES (12, 345);
INSERT INTO `item_stock` VALUES (13, 123);
INSERT INTO `item_stock` VALUES (14, 432);
INSERT INTO `item_stock` VALUES (15, 456);
INSERT INTO `item_stock` VALUES (16, 60);
INSERT INTO `item_stock` VALUES (17, 55);
INSERT INTO `item_stock` VALUES (18, 44);
INSERT INTO `item_stock` VALUES (19, 334);
INSERT INTO `item_stock` VALUES (20, 23);
INSERT INTO `item_stock` VALUES (21, 23);
INSERT INTO `item_stock` VALUES (22, 45);
INSERT INTO `item_stock` VALUES (23, 5);
INSERT INTO `item_stock` VALUES (24, 23);
INSERT INTO `item_stock` VALUES (25, 78);
INSERT INTO `item_stock` VALUES (26, 5);
INSERT INTO `item_stock` VALUES (27, 45);
INSERT INTO `item_stock` VALUES (28, 45);
INSERT INTO `item_stock` VALUES (29, 23);
INSERT INTO `item_stock` VALUES (30, 14);
INSERT INTO `item_stock` VALUES (31, 36);
INSERT INTO `item_stock` VALUES (32, 82);
INSERT INTO `item_stock` VALUES (33, 15);
INSERT INTO `item_stock` VALUES (34, 68);
INSERT INTO `item_stock` VALUES (35, 24);
INSERT INTO `item_stock` VALUES (36, 3);
INSERT INTO `item_stock` VALUES (37, 41);
INSERT INTO `item_stock` VALUES (38, 27);
INSERT INTO `item_stock` VALUES (39, 52);
INSERT INTO `item_stock` VALUES (40, 57);
INSERT INTO `item_stock` VALUES (41, 89);
INSERT INTO `item_stock` VALUES (42, 110);
INSERT INTO `item_stock` VALUES (43, 59);
INSERT INTO `item_stock` VALUES (44, 67);
INSERT INTO `item_stock` VALUES (45, 46);
INSERT INTO `item_stock` VALUES (46, 88);
INSERT INTO `item_stock` VALUES (47, 76);
INSERT INTO `item_stock` VALUES (48, 98);
INSERT INTO `item_stock` VALUES (49, 45);
INSERT INTO `item_stock` VALUES (50, 62);
INSERT INTO `item_stock` VALUES (51, 69);
INSERT INTO `item_stock` VALUES (52, 90);
INSERT INTO `item_stock` VALUES (53, 78);
INSERT INTO `item_stock` VALUES (54, 96);
INSERT INTO `item_stock` VALUES (55, 59);
INSERT INTO `item_stock` VALUES (56, 102);
INSERT INTO `item_stock` VALUES (61, 57);
INSERT INTO `item_stock` VALUES (62, 121);
INSERT INTO `item_stock` VALUES (63, 145);
INSERT INTO `item_stock` VALUES (64, 165);
INSERT INTO `item_stock` VALUES (65, 17);
INSERT INTO `item_stock` VALUES (66, 18);
INSERT INTO `item_stock` VALUES (67, 35);
INSERT INTO `item_stock` VALUES (68, 28);
INSERT INTO `item_stock` VALUES (69, 173);
INSERT INTO `item_stock` VALUES (70, 283);
INSERT INTO `item_stock` VALUES (71, 325);
INSERT INTO `item_stock` VALUES (72, 156);
INSERT INTO `item_stock` VALUES (81, 519);
INSERT INTO `item_stock` VALUES (82, 299);
INSERT INTO `item_stock` VALUES (83, 347);
INSERT INTO `item_stock` VALUES (84, 276);
INSERT INTO `item_stock` VALUES (85, 249);
INSERT INTO `item_stock` VALUES (86, 193);
INSERT INTO `item_stock` VALUES (87, 432);
INSERT INTO `item_stock` VALUES (88, 362);
INSERT INTO `item_stock` VALUES (89, 339);
INSERT INTO `item_stock` VALUES (90, 354);
INSERT INTO `item_stock` VALUES (91, 276);
INSERT INTO `item_stock` VALUES (92, 123);
INSERT INTO `item_stock` VALUES (93, 519);
INSERT INTO `item_stock` VALUES (94, 299);
INSERT INTO `item_stock` VALUES (95, 347);
INSERT INTO `item_stock` VALUES (96, 276);
INSERT INTO `item_stock` VALUES (97, 249);
INSERT INTO `item_stock` VALUES (98, 193);
INSERT INTO `item_stock` VALUES (57, 213);
INSERT INTO `item_stock` VALUES (58, 75);
INSERT INTO `item_stock` VALUES (59, 65);
INSERT INTO `item_stock` VALUES (60, 36);
INSERT INTO `item_stock` VALUES (73, 233);
INSERT INTO `item_stock` VALUES (74, 176);
INSERT INTO `item_stock` VALUES (75, 432);
INSERT INTO `item_stock` VALUES (76, 362);
INSERT INTO `item_stock` VALUES (77, 339);
INSERT INTO `item_stock` VALUES (78, 354);
INSERT INTO `item_stock` VALUES (79, 276);
INSERT INTO `item_stock` VALUES (80, 123);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单 ID',
  `user_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '下订单的用户 ID',
  `item_id` int(16) NOT NULL COMMENT '购买的商品 ID',
  `price` int(16) NULL DEFAULT NULL COMMENT '购买价格',
  `amount` int(16) NULL DEFAULT NULL COMMENT '购买数量',
  `ifdone` int(4) NULL DEFAULT NULL COMMENT '是否已结算： 0 未结算 1 已结算',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `pay_mode` int(4) NULL DEFAULT NULL COMMENT '支付方式：1支付宝 2微信 3银联支付 4货到付款',
  `i_color` int(16) NULL DEFAULT NULL COMMENT '颜色：1白色 2黑色 3红色 4蓝色',
  `ifchosen` int(4) NOT NULL DEFAULT 0 COMMENT '是否被选择',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('190704B03MR3XYFW', '123', 1, 599, 10, 1, 'School', 3, 2, 0);
INSERT INTO `order_info` VALUES ('190704B401X10Z2W', '123', 78, 999, 5, 1, 'School', 2, 2, 0);
INSERT INTO `order_info` VALUES ('190704FXCM5Y5X68', '123', 3, 499, 1, 1, 'Company', 4, 2, 0);
INSERT INTO `order_info` VALUES ('190704HBS1MSW7TC', '123', 62, 999, 3, 1, 'School', 4, 2, 0);
INSERT INTO `order_info` VALUES ('1907067BTK0675S8', '1907067ADFWXRP94', 7, 999, 3, 1, 'Home', 3, 1, 0);
INSERT INTO `order_info` VALUES ('1907067BZ3F41G2W', '1907067ADFWXRP94', 26, 849, 3, 1, 'Home', 3, 4, 0);
INSERT INTO `order_info` VALUES ('1907067CM6KC3KWH', '1907067ADFWXRP94', 6, 398, 1, 1, 'Home', 2, 2, 0);
INSERT INTO `order_info` VALUES ('1907067SMXD0KYW0', '1907067ADFWXRP94', 27, 129, 1, 1, 'Home', 2, 2, 0);
INSERT INTO `order_info` VALUES ('1907067SPY8SCC28', '1907067ADFWXRP94', 66, 10999, 1, 1, 'Home', 2, 2, 0);
INSERT INTO `order_info` VALUES ('1907067STRYK0CPH', '1907067ADFWXRP94', 15, 876, 1, 1, 'Home', 2, 4, 0);
INSERT INTO `order_info` VALUES ('19070670NAK9RYW0', '1907066Z9MCA31GC', 2, 199, 1, 0, '', NULL, 2, 0);
INSERT INTO `order_info` VALUES ('19070670687XWMK4', '1907066Z9MCA31GC', 6, 398, 2, 0, '', NULL, 1, 0);
INSERT INTO `order_info` VALUES ('19070653SC6BPMY8', '1907062H2X8GX0BC', 10, 587, 1, 0, '', NULL, 2, 0);
INSERT INTO `order_info` VALUES ('19070654401C5F3C', '1907062H2X8GX0BC', 10, 587, 1, 0, '', NULL, 2, 0);
INSERT INTO `order_info` VALUES ('1907066FHGFHA9YW', '1907062H2X8GX0BC', 6, 398, 1, 0, '', NULL, 2, 0);
INSERT INTO `order_info` VALUES ('19070670BCC9CRGC', '1907066Z9MCA31GC', 37, 2499, 3, 0, '', NULL, 1, 0);
INSERT INTO `order_info` VALUES ('19070653P6GF3FK4', '1907062H2X8GX0BC', 4, 178, 1, 0, '', NULL, 3, 0);

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo`  (
  `id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动 ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `price` int(16) NULL DEFAULT NULL COMMENT '活动价格',
  `start_time` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动结束时间',
  `item_id` int(16) NULL DEFAULT NULL COMMENT '活动商品 ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `age` int(8) NULL DEFAULT NULL COMMENT '年纪',
  `address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件地址1',
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件地址2',
  `address3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件地址3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('190630C6NZ648KKP', 'yinren', 'e10adc3949ba59abbe56e057f20f883e', '1713507920@qq.com', 21, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('190630CAPTPG51AW', 'yinren', '220466675e31b9d20c051d5e57974150', '07920@qq.com', 21, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('123', 'wjx', 'e10adc3949ba59abbe56e057f20f883e', '123', 18, '家', '公司', '学校');
INSERT INTO `user` VALUES ('1907057YFAF4FBHH', 'Rx', 'e10adc3949ba59abbe56e057f20f883e', '789@qq.com', 17, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('1907057XSAKB706W', '1', 'e10adc3949ba59abbe56e057f20f883e', '731136022@qq.com', 18, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('190705A200TMGBMW', 'yang', '96e79218965eb72c92a549dd5a330112', '24993@qq.ocm', 20, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('1907066Z9MCA31GC', 'www', '96e79218965eb72c92a549dd5a330112', '2222@qq.com', 10, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('1907066Z01GA8ZC0', 'yang', 'e10adc3949ba59abbe56e057f20f883e', '1111@qq.com', 20, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('19070627W95N6G54', 'yang', 'e10adc3949ba59abbe56e057f20f883e', '249930@qq.com', 20, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('1907067ADFWXRP94', 'PPPP', '96e79218965eb72c92a549dd5a330112', '3333@qq.com', 10, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
