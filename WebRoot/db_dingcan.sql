SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1393654966130', '凉拌菜', 'no');
INSERT INTO `t_catelog` VALUES ('1393654973698', '热炒菜', 'no');
INSERT INTO `t_catelog` VALUES ('1393654982744', '炖汤类', 'no');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` varchar(50) NOT NULL,
  `catelog_id` varchar(50) default NULL,
  `bianhao` varchar(500) default NULL,
  `mingcheng` varchar(500) default NULL,
  `jieshao` varchar(500) default NULL,
  `fujian` varchar(500) default NULL,
  `shichangjia` int(11) default NULL,
  `tejia` int(11) default NULL,
  `del` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1393655526789', '1393654966130', '0001', '凉拌金针菇', '用剪刀减去金针菇的根蒂部分，再反复冲洗干净。较长的金针菇可以从中间剪开，以方便食用；红椒去籽切细锅中加水，加1勺盐，烧开后下入金针菇和红椒丝，煮1分钟，关火。&mdash;&mdash;只需1分钟，金针菇很易熟，时间煮长了反而容易塞', '/upload/1393655525402.jpg', '100', '100', 'no');
INSERT INTO `t_goods` VALUES ('1393655887280', '1393654982744', '0002', '三鲜豆腐羹', '豆腐洗净，切成小丁，切豆腐的时候可以从后往前切，切的同时可以用手压住，这样豆腐就不会总粘在刀上了大虾只取虾仁，并用小刀在虾背上划开，取出虾线，这样处理后做好的虾会更像虾球', '/upload/1393655885962.jpg', '100', '100', 'no');
INSERT INTO `t_goods` VALUES ('1393655949576', '1393654982744', '0003', '冬瓜薏仁鲫鱼汤', '薏米仁洗净后放水中浸泡一个小时，枸杞洗净备用。冬瓜去皮切成块儿。鲫鱼去除内脏洗净备用开锅后放入葱段和姜片，倒入少许料酒，改文火慢炖50分钟', '/upload/1393655948031.jpg', '100', '100', 'no');
INSERT INTO `t_goods` VALUES ('1393656014209', '1393654973698', '0004', '糖醋排骨', '将排骨剁成长约5厘米的段，然后洗干净放入锅中加上水没过排将锅烧开，然后用勺子将上面的浮沫撇干净，可以用大火烧开浮沫都飘起来，这样很容易将浮沫撇的很干放入拍松的生姜块，再加上八角、花椒、料酒、大葱一起煮，小火盖上锅盖煮40分钟，排骨熟', '/upload/1393656012959.jpg', '100', '100', 'no');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` int(11) NOT NULL auto_increment,
  `neirong` varchar(200) default NULL,
  `liuyanshi` varchar(2000) default NULL,
  `user_id` varchar(50) default NULL,
  `huifu` varchar(50) default NULL,
  `huifushi` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` varchar(200) NOT NULL,
  `bianhao` varchar(200) default NULL,
  `shijian` varchar(200) default NULL,
  `zhuangtai` varchar(200) default NULL,
  `huifu` varchar(255) default NULL,
  `songhuodizhi` varchar(200) default NULL,
  `fukuanfangshi` varchar(200) default NULL,
  `jine` int(11) default NULL,
  `user_id` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------


-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `id` varchar(200) NOT NULL,
  `order_id` varchar(200) default NULL,
  `goods_id` varchar(50) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1393657633435', '1393657633280', '1393655303399', '1');
INSERT INTO `t_orderitem` VALUES ('1393657943847', '1393657943777', '1393655887280', '1');
INSERT INTO `t_orderitem` VALUES ('1393658063119', '1393658063033', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1393658148327', '1393658147936', '1393655887280', '1');
INSERT INTO `t_orderitem` VALUES ('1393658173125', '1393658172985', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1393658262440', '1393658262399', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1393658284297', '1393658284160', '1393655949576', '1');
INSERT INTO `t_orderitem` VALUES ('1395033001797', '1395033001698', '1393655171464', '1');
INSERT INTO `t_orderitem` VALUES ('1395033002062', '1395033001698', '1393655526789', '1');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(50) NOT NULL,
  `loginname` varchar(50) default NULL,
  `loginpw` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `del` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1349561912257', 'a', 'a', 'ch', 'no');
-- ----------------------------
-- Table structure for `t_xinyong`
-- ----------------------------
DROP TABLE IF EXISTS `t_xinyong`;
CREATE TABLE `t_xinyong` (
  `id` varchar(50) NOT NULL,
  `shuxing` varchar(50) default NULL,
  `neirong` varchar(50) default NULL,
  `shijian` varchar(50) default NULL,
  `user_id` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_xinyong
-- ----------------------------
