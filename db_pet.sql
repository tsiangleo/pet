/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.1.73-community : Database - db_pet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_pet` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `db_pet`;

/*Table structure for table `carinfo` */

DROP TABLE IF EXISTS `carinfo`;

CREATE TABLE `carinfo` (
  `caraccountid` int(20) unsigned NOT NULL,
  `petid0` int(20) DEFAULT '0',
  `petid1` int(20) DEFAULT '0',
  `petid2` int(20) DEFAULT '0',
  `petid3` int(20) DEFAULT '0',
  `petid4` int(20) DEFAULT '0',
  `petid5` int(20) DEFAULT '0',
  `num` int(20) DEFAULT '0',
  `totalmoney` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `carinfo` */

insert  into `carinfo`(`caraccountid`,`petid0`,`petid1`,`petid2`,`petid3`,`petid4`,`petid5`,`num`,`totalmoney`) values (1,0,0,0,0,0,0,0,0),(2,5,0,0,0,0,0,1,5000);

/*Table structure for table `messageinfo` */

DROP TABLE IF EXISTS `messageinfo`;

CREATE TABLE `messageinfo` (
  `messageID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `accountID` bigint(20) DEFAULT NULL,
  `content` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `messageinfo` */

insert  into `messageinfo`(`messageID`,`accountID`,`content`,`time`,`title`) values (2,1,'sdsdsd','2017-06-02 14:52:59','sdsdf'),(4,2,'侧阿斯顿发','2017-06-02 15:20:49','测试');

/*Table structure for table `newsinfo` */

DROP TABLE IF EXISTS `newsinfo`;

CREATE TABLE `newsinfo` (
  `newsID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `newsfrom` varchar(40) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text,
  PRIMARY KEY (`newsID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `newsinfo` */

insert  into `newsinfo`(`newsID`,`title`,`author`,`newsfrom`,`updatetime`,`content`) values (3,'泰国女生给狗狗化老虎妆 技术之高足以以假乱真','管理员','网络','2017-06-02 14:51:31','中新网6月1日电 据泰国《世界日报》报道，泰国一名21岁女生苏坦雅因为热爱艺术，便将自己养了7年多的狗狗“秋秋”化妆成老虎的样子，技术之高足以以假乱真。\r\n被化妆成“老虎”的秋秋。被化妆成“老虎”的秋秋。（图片来源：泰国《世界日报》）\r\n苏坦雅表示，“秋秋”非常温顺可爱，不吠也不咬人。\r\n她表示，给“秋秋”化妆成老虎模样后，其他一些狗也不敢再靠近它，不敢再欺负它。\r\n秋秋变身“老虎”，以假乱真。（图片来源：泰国《世界日报》）秋秋变身“老虎”，以假乱真。'),(4,'狗狗的记忆力有多长','管理员','网络','2017-06-02 14:55:56','都说鱼的记忆力只有七秒，而貌似狗狗的记忆力却很长，他们知道自己的名字、知道哪个是自己的主人，那么你知道狗狗的记忆力可以有多长吗？\r\n1-121230150051T5.jpg\r\n\r\n        关于狗狗记忆力的问题，很多动物专家都做过研究。俗话说，猫找八百里，狗找一千里，这都是说猫狗都有惊人的回家本领。为此，有人认为猫狗的记忆能力应该是非常强的。然而，对于狗狗来说，它们的记忆能力到底强不强，记忆能力到底多久呢？\r\n\r\n        其实狗狗的记忆能力并没有它的听觉、嗅觉那么敏锐、那么持久。在日常生活中，当宠物狗犯错之后，我们都要立即惩罚，而不要拖到几天之后，因为几天之后的狗狗早已经将之前发生的事情忘记了，在对它进行批评，只会让它感觉到更莫名其妙。从这点来看，狗狗的记忆能力似乎并不强，而且记忆力也并不长久。\r\n\r\n        然而，也有很多的事实证明，狗狗能几千之外寻找会家，能在很多年后依然记得主人的声音。从这点来看，狗狗的记忆能力似乎又是很强、很持久的。其实，研究早已发现，狗狗的记忆能力对有些事物可能记忆很模糊，但是对于主人、住所，主人的声音等都有很强的记忆。而且研究也发现，狗狗的听觉、嗅觉是非常敏锐的。它们对声音的判断非常的强，而且能长时间记忆。所以，综合的分析，狗狗的记忆能力可能在某方面会比较弱，但是在某方面有显示得非常强。');

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `orderID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `BaccountID` bigint(20) DEFAULT NULL,
  `SaccountID` bigint(20) DEFAULT NULL,
  `petID` bigint(20) DEFAULT NULL,
  `totalmoney` varchar(20) DEFAULT NULL,
  `ordertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `issend` int(10) DEFAULT '0',
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo` */

insert  into `orderinfo`(`orderID`,`BaccountID`,`SaccountID`,`petID`,`totalmoney`,`ordertime`,`issend`) values (1,2,1,4,'5000','2017-06-02 16:16:30',0),(2,2,1,2,'3000','2017-06-02 16:16:32',0),(3,2,1,1,'5000','2017-06-02 16:16:35',1),(4,2,1,2,'3000','2017-06-02 16:16:38',2),(5,2,1,12,'3000','2017-06-02 16:16:40',2),(6,2,1,5,'5000','2017-06-02 16:16:42',0);

/*Table structure for table `petinfo` */

DROP TABLE IF EXISTS `petinfo`;

CREATE TABLE `petinfo` (
  `petID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `BaccountID` bigint(20) DEFAULT '0',
  `Saccountid` bigint(20) DEFAULT NULL,
  `petname` varchar(50) DEFAULT NULL,
  `petweight` varchar(20) DEFAULT NULL,
  `petsize` varchar(10) DEFAULT NULL,
  `petfrom` varchar(100) DEFAULT NULL,
  `petprice` int(11) DEFAULT NULL,
  `VIPprice` int(11) DEFAULT NULL,
  `petdescription` text,
  `picturepath` varchar(50) DEFAULT 'images_PetShow/pet01.gif',
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `petinfo` */

insert  into `petinfo`(`petID`,`BaccountID`,`Saccountid`,`petname`,`petweight`,`petsize`,`petfrom`,`petprice`,`VIPprice`,`petdescription`,`picturepath`) values (1,0,1,'哈士奇','20','a','阿里斯',7000,5000,'西伯利亚雪橇犬（俄语：Сибирский хаски，Sibirskiy haski，英语：Siberian husky）常见别名哈士奇。俗名：二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤，身高大约雄犬肩高53-58厘米，雌犬51-56厘米，是一种中型犬。西伯利亚雪橇犬是原始的古老犬种，在西伯利亚东北部、格陵兰南部生活。哈士奇名字的由来，是源自其独特的嘶哑声。\r\n哈士奇性格多变，有的极端胆小，也有的极端暴力，进入大陆和家庭的哈士奇，都已经没有了这种极端的性格，比较温顺，是一种流行于全球的宠物犬。与金毛犬、拉布拉多并列为三大无攻击型犬类。被世界各地广泛饲养，并在全球范围内，有大量该犬种的赛事。[1] ','images_PetShow/pet05.gif'),(2,2,1,'田园犬','20','a','朝阳',4000,3000,'中华田园犬（拉丁学名：Canis lupus familiaris），传统称呼为“土狗”，北方有的地方又叫“柴狗”，属于食肉目、犬科、犬亚科的一种哺乳动物，长大后肩高约35~55厘米，体重约 15~35公斤。与早起的，狼，中国狼，草原狼，的外形非常相似，嘴短，额平。','images_PetShow/pet01.gif'),(3,0,1,'比熊犬','20','a','三里屯',7000,5000,'比熊犬（法语：Bichon Frisé，意指“白色卷毛的玩赏用小狗”）原产于地中海地区，是一种小型犬品种。它们不会自然脱毛，因此毛发需要整理。颜色一般白色。原称巴比熊犬，后缩为比熊犬。怀疑是巴比特犬和水猎融犬的后裔。是一种娇小的、强健的白色粉扑型的狗，具有欢快的性格，从它羽毛般欢快地卷在背后的尾巴和好奇的眼神中就能体现出来。\r\n外形可爱，深受大家喜欢，现在多被当作家养宠物 ，因此需要定期处理它的毛发，疾病等。比熊犬性情温顺、敏感、顽皮而可爱。逗人喜欢的特点也是此品种是否纯正的标志，或者说至少应该有这一点。整体外貌而言，比熊犬是小型犬，健壮，萌，蓬松的小尾巴贴在后背，有着一双充满好奇的黑色眼睛。同时它的动作优雅，灵活逗人喜爱。还有一个好处，它不太会掉毛，活动空间小，主要分布在欧洲，但近几年来，一些亚洲国家的人们也开始乐于饲养这类乖巧的小型犬，分布范围逐渐扩大。','images_PetShow/pet03.gif'),(4,0,1,'金毛犬','20','c','大连',7000,5000,'金毛犬（英语：Golden Retriever）是比较现代并很流行的狗的品种，是单猎犬，作为用来在猎捕野禽的寻回犬而培养出来的，游泳的续航力极佳。它是最常见的家犬之一，因为它很容易养，有耐心并且对主人要求不多，只要定期的运动，食物和兽医体检就可以了。金毛的独特之处在于它讨人喜欢的性格，是属于匀称、有力、活泼的一个犬种，特征是稳固、身体各部位配合合理，腿既不太长也不笨拙，表情友善，个性热情、机警、自信而且不怕生。金毛犬最早是一种寻回猎犬。现在大多作为导盲犬与宠物狗。对小孩子或者婴儿十分友善。金毛犬是位列世界犬种智商排行的第四名。','images_PetShow/pet02.gif'),(5,0,1,'拉布拉多犬','20','c','三亚',7000,5000,'拉布拉多寻回犬因原产地在加拿大的纽芬兰与拉布拉多省而得名。拉布拉多寻回犬是一种大型犬类，个性忠诚、大气、憨厚、温和、阳光、开朗、活泼，智商极高，也对人很友善，是非常适合被选作经常出入公共场合的导盲犬或地铁警犬及搜救犬和其他工作犬的狗品种，跟西伯利亚雪撬犬和金毛寻回犬并列三大无攻击性犬类，拉布拉多智商位列世界犬类第六位。\r\n拉布拉多猎犬有四种颜色，分别为：黑色、黄色、巧克力、米白色。最常见的是黑色，黄色。\r\n在美国犬业俱乐部中拉布拉多是目前登记数量最多的品种，对小孩尤其的友善，对犬主人略粘人。','images_PetShow/pet04.gif'),(6,0,1,'萨摩耶犬','20','c','新疆',7000,5000,'萨摩耶犬（Samoyed），别名萨摩耶，原是西伯利亚的原住民萨摩耶族培育出的犬种。机警、强壮、灵活、美丽、高贵优雅、乖巧可爱，有着非常引人注目的外表，体格强健，有“微笑天使”的称号，也有着“微笑天使面孔，捣蛋魔鬼内心”之称，一岁前调皮、灵动。\r\n萨摩耶犬的颜色为白色；部分带有很浅的浅棕色、奶酪色、浅棕色。此外其他颜色都属于失格。世界上曾出现过一只灰白色萨摩，FCI承认他是具有纯种血统萨摩耶基因的返祖萨摩，黑色萨摩耶犬极为罕见。','images_PetShow/pet12.jpg'),(7,0,1,'泰迪犬','20','c','重庆',7000,3000,'贵宾犬，Poodle，也称“贵妇犬”，又称“卷毛狗”，在德语中，Pudel是“水花飞溅”的意思。贵宾犬起源于欧洲，具体是哪个国家还有争议。贵宾犬以水中捕猎而著称，是水猎犬。但是只有标准贵宾具有工作能力。它是聪明而善解人意的犬种。多年以来，它一直被认为是法国的国犬。贵宾犬根据体型大小被AKC标准分为标准型，迷你型，玩具型三种。而FCI把它们分为大型，中型，迷你型，玩具型四种。贵宾犬气质独特，造型多变，赢得了许多人的欢心，给人一种漂亮的、聪明的印象。值得注意的是，并没有泰迪这个品种的犬，泰迪不是犬种，它只是贵宾犬众多美容造型中的一种的名称。','images_PetShow/pet14.jpg'),(8,0,1,'哈士奇','20','c','阿拉斯加',7000,3000,'阿斯顿发生地方','images_PetShow/pet13.jpg'),(9,0,1,'柴犬','20','c','阿拉斯加',7000,3000,'柴犬是体型中等并且又最古老的犬。柴犬能够应付陡峭的丘陵和山脉的斜坡，拥有灵敏的感官，使得柴犬屡次成为上乘的狩猎犬。\r\n柴犬性格活泼、好动；对自己喜欢的玩具、会一天到晚的把玩。对外有极强警惕性户主看家护院：特别是对大型同类，并且不服输。草丛中的耗子、鸟都会是它的猎物及玩具。\r\n柴犬是日本国宝，常见的赤色柴犬价格都在6000元到15000元之间。另浙江等地，一直以来方言里管土狗叫柴犬，近亲于中华田园犬。','images_PetShow/pet15.jpg'),(11,0,1,'哈士奇二蛋','60','a','阿拉斯加',7000,5000,'西伯利亚雪撬犬是和狼的血统非常近的犬种，所以外形非常的像狼，有着比大多数犬种都要厚的毛发，毛发\r\n哈士奇形态特征\r\n哈士奇形态特征\r\n颜色大致分为黑色、灰色、棕色（浅棕色又被称为梦幻色）、纯白色（极少）四种，当然这些颜色通常都是夹杂着白色毛发同时存在。哈士奇眼睛有纯棕色和纯蓝色，不允许有杂色，可以一只眼睛棕色一只眼睛蓝色。哈士奇的头版，俗称脸型，通常有十字脸型、桃脸型、三把火、地中海四种。','images_PetShow/pet16.jpg'),(12,2,1,'金毛寻回犬 ','20','b','阿拉斯加',7000,3000,'源自苏格兰的金毛寻回犬能够风靡世人，当然除了它一身金黄色的被毛吸引众生外，同时也因它们天生温驯的个性，令人对它爱不释手。要追溯金毛寻回犬的历史，大概要穿梭到1865年的时候，那时苏格兰流行打猎，因此擅于捕猎野生动物的中型犬种就大受狩猎家欢迎。\r\n其后苏格兰有一位贵族就尝试以黄色的拉布拉多寻回犬(Labrador Retmver)同现在己绝种的拉布水猎犬混合繁殖，品种经过改良后，成为了今天的金毛寻回犬。\r\n金毛寻回犬在英国风行一时，知名度不断提高，深受英国人的欢迎，1903年第一只金毛寻回犬在英国狗会正式登记，8年后英国金毛寻回犬会成立，可谓名噪英伦。其后有一些到英国旅行的游客，更把金毛寻回犬带回美国、加拿大等地，作为打猎之用。直到1932年，AKC成立了金毛寻回犬会(GRCA)，如今会员已多达数干名。50年后，金毛寻回犬更在AKC犬只服从比赛中连续获得三届冠军，而在2001年金毛寻回犬更被AKC选为十大最受欢迎注册犬种之一，排名紧次于拉不拉多猎犬，风头可谓一时无二[1]  。','images_PetShow/pet17.jpg'),(13,0,2,'金毛大哈','15','a','阿拉斯加',7000,5000,'金毛幼犬四个半月大以前，不要让它自行上下楼梯，上下汽车时也要小心，若离地面太高，不要让它自行上下，要抱它上。十二个月以前，不要带着黄金幼犬跑步，如此会给尚未完全钙化的骨骼带来太大的压力。十二个月以后跑步开始时不要太远，要逐渐地加长距离。\r\n除了跑步以外，游泳也是一项很好的运动。但最好同爱犬一起下水。在睡觉前一定要全身都擦干，特别是耳朵内一定要保持干燥以避免感染。有些金毛对盐分过敏，在海中游泳后一定要尽快地用淡水将其身上的盐分冲掉[4]  。','images_PetShow/pet11.jpg'),(14,0,2,'金毛二哈','10','a','阿拉斯加',6000,4000,'金毛幼犬四个半月大以前，不要让它自行上下楼梯，上下汽车时也要小心，若离地面太高，不要让它自行上下，要抱它上。十二个月以前，不要带着黄金幼犬跑步，如此会给尚未完全钙化的骨骼带来太大的压力。十二个月以后跑步开始时不要太远，要逐渐地加长距离。\r\n除了跑步以外，游泳也是一项很好的运动。但最好同爱犬一起下水。在睡觉前一定要全身都擦干，特别是耳朵内一定要保持干燥以避免感染。有些金毛对盐分过敏，在海中游泳后一定要尽快地用淡水将其身上的盐分冲掉[4]  。','images_PetShow/pet01.gif');

/*Table structure for table `petpucture` */

DROP TABLE IF EXISTS `petpucture`;

CREATE TABLE `petpucture` (
  `pictureID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `petID` bigint(20) DEFAULT NULL,
  `picturepath` varchar(100) DEFAULT NULL,
  `picturetitle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `petpucture` */

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `accountid` bigint(20) unsigned NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `integral` varchar(10) DEFAULT '0',
  `registdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `shoppingcarID` bigint(20) DEFAULT NULL,
  `postcode` char(20) DEFAULT NULL,
  `realname` varchar(40) DEFAULT NULL,
  `sex` char(10) DEFAULT NULL,
  `IDcard` varchar(18) DEFAULT NULL,
  `accountstate` char(10) DEFAULT '1' COMMENT '1:正常,0冻结'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`accountid`,`address`,`email`,`phone`,`grade`,`integral`,`registdate`,`shoppingcarID`,`postcode`,`realname`,`sex`,`IDcard`,`accountstate`) values (1,'三里屯','goudan@taopet.com','18222228888',NULL,'0','2017-06-02 13:37:25',NULL,'404040','村口狗蛋','m','400232112111928373','1'),(2,'三里屯',NULL,'18200517144',NULL,'6000','2017-06-02 09:37:25',NULL,'404040','村口2蛋','m',NULL,'1');

/*Table structure for table `usertable` */

DROP TABLE IF EXISTS `usertable`;

CREATE TABLE `usertable` (
  `uaccountid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uaccountid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usertable` */

insert  into `usertable`(`uaccountid`,`account`,`password`) values (1,'qqqqq','qqqqq'),(2,'mmmmmm','mmmmmm');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
