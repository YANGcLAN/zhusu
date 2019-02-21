﻿USE minsu;
CREATE TABLE sowing(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO sowing VALUES
(1,"http://127.0.0.1:3000/img/1.jpg"),
(2,"http://127.0.0.1:3000/img/2.jpg"),
(3,"http://127.0.0.1:3000/img/3.jpg"),
(4,"http://127.0.0.1:3000/img/4.jpg");

USE minsu;
CREATE TABLE rise(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(100),
  content VARCHAR(100)
);
INSERT INTO rise VALUES
(null,"http://127.0.0.1:3000/img/11.jpg","轰趴聚会","私密空间 亲朋好友尽兴玩"),
(null,"http://127.0.0.1:3000/img/22.jpg","家庭出游","一房多卧 家人合住好照看"),
(null,"http://127.0.0.1:3000/img/33.jpg","实惠长住","洗衣做饭 设施齐全又省钱"),
(null,"http://127.0.0.1:3000/img/44.jpg","新奇体验","房型丰富 风格迥异更养眼");

USE minsu;
CREATE TABLE img(
 id INT PRIMARY KEY AUTO_INCREMENT,
 img_url VARCHAR(100)
);
INSERT INTO img VALUES
(null,"http://127.0.0.1:3000/img/111.jpg"),
(null,"http://127.0.0.1:3000/img/222.jpg"),
(null,"http://127.0.0.1:3000/img/333.jpg"),
(null,"http://127.0.0.1:3000/img/444.jpg"),
(null,"http://127.0.0.1:3000/img/555.jpg");

USE minsu;
CREATE TABLE tenant(
 id INT PRIMARY KEY AUTO_INCREMENT,
 img_url VARCHAR(100),
 fabulous INT,
 evaluate INT,
 title VARCHAR(200),
 content VARCHAR(100)
);
INSERT INTO tenant VALUES
(null,"http://127.0.0.1:3000/img/5.jpg",25427,8,"想获得导师转身？先来这些民宿唱到嗨","想要周杰伦、李健，还是谢霆锋的转身呢？"),
(null,"http://127.0.0.1:3000/img/6.jpg",16889,3,"青岛啤酒节嗨玩攻略，避暑狂欢醉音乐","美食美酒美景，清凉一夏"),
(null,"http://127.0.0.1:3000/img/7.jpg",29490,13,"住宫廷风民宿，感受延禧攻略帝后CP的甜蜜","看得到紫禁城的民宿");

USE minsu;
CREATE TABLE landIord(
 id INT PRIMARY KEY AUTO_INCREMENT,
 img_url VARCHAR(100),
 title VARCHAR(100),
 content VARCHAR(100)
);
INSERT INTO landIord VALUES
(null,"http://127.0.0.1:3000/img/147.jpg","不会做营销的编导不是好房东——云享·城居","满满干货分享“民宿经营三部曲"),
(null,"http://127.0.0.1:3000/img/258.jpg","远离浮躁的新中式民宿——南昌·己度","讨厌虚假与浮躁，所以我尽我所能去营造真实与温馨的氛围");


USE minsu;
CREATE TABLE login(
 id INT PRIMARY KEY AUTO_INCREMENT,
 uname VARCHAR(16),
 upwd VARCHAR(12),
 uemail VARCHAR(20),
 uphone VARCHAR(11)
);
INSERT INTO login VALUES
(null,'baoshimin','7758258','634551726@qq.com',13777810995);


USE minsu;
CREATE TABLE beijing(
 id INT PRIMARY KEY AUTO_INCREMENT,
 img_url VARCHAR(200),
 title VARCHAR(100),
 title_money INT,
 title_text VARCHAR(100),
 title_per VARCHAR(100)
);
INSERT INTO beijing VALUES
(null,"http://127.0.0.1:3000/img/50.jpg","延庆湖景区独栋别墅★儿童娱乐★烧烤",1999,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/51.jpg","北京怀柔水长城特色小院",2380,"四居室  320平 宜居12人  北京 | 昌平区","人均￥199"),
(null,"http://127.0.0.1:3000/img/52.jpg","北京怀柔水长城特色小院",880,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/53.jpg","怀柔景区特色民宿★超大娱乐室",5888,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/54.jpg","北京延庆乡居小院",6999,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/55.jpg","北京大兴温泉旁聚会培训独栋别墅",3988,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/56.jpg","艺术园区里的“别致空间民宿体验馆”",2880,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/57.jpg","北京王府街10号聚会别墅",3680,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/58.jpg","北京昌平碧肯山复古经典聚会别墅",3380,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/59.jpg","慕田峪长城脚下的乡居小院",2600,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/60.jpg","北京密云水库乡野小院",7758,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/61.jpg","北京徽派复古别院",4299,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/62.jpg","慕田峪长城红螺寺山脚下的小院",4586,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/63.jpg","北京房山新中式简约田园小院五居室",5632,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/64.jpg","北京雍和宫北新桥二环里四居室四合院",1250,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/65.jpg","北京小汤山阳光独栋别墅",9854,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/66.jpg","北京雍和宫北新桥二环里四居室四合院",12030,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/67.jpg","北京小汤山阳光独栋别墅",6987,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/68.jpg","北京怀柔水长城特色小院",8462,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/69.jpg","怀柔景区特色民宿★超大娱乐室",3450,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/70.jpg","北京大兴温泉旁聚会培训独栋别墅",2458,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/71.jpg","京城隐山人文小院❤探寻长城遗址 ",6985,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/72.jpg","北京昌平碧肯山经典聚会别墅",4445,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/73.jpg","密云希望小镇观山景北欧风",3528,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/74.jpg","北京房山区乡隐田园桃叶谷3号院",1102,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/75.jpg","团建趴/生日趴/朋友趴/老乡会",9840,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/76.jpg","北京房山600平聚会别墅",6578,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/77.jpg","森岚·逸云精品民宿|年会&团建轰趴圣地",1489,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/78.jpg","北京房山600平聚会别墅",3579,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/79.jpg","北京德式简约风格聚会别墅",6877,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/80.jpg"," 四合院•叁拾/恰 榻榻米 地铁北京站协和",3522,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/81.jpg","香堂文化新村30人娱乐全能聚会别墅",3896,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/82.jpg","坡峰岭景区——回到乡间 依山而居2号院",4806,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/83.jpg","【雁栖湖·青龙峡】怀柔4卧超大泳池民宿 ",4587,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/84.jpg","北京昌平天然氧吧带泳池大号别墅",7774,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/85.jpg","千平超大空间庭院特色聚会民宿",3551,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/86.jpg","阳台山风景区观景庭院别墅",4589,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/87.jpg","怀柔五居山水别墅可烧烤",4411,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/88.jpg","怀柔水库附近三居可BBQ小院",2003,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/89.jpg","1600平团建✪百人活动场地私家泳池",1991,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/90.jpg","怀柔雁西湖青龙湖别墅民宿",5200,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249"),
(null,"http://127.0.0.1:3000/img/91.jpg","近山小筑（精品民宿）会议 聚会 团建 轰趴场地 KTV 棋牌",9872,"四居室 280平米 宜居8人  北京 | 延庆县","人均￥249");


USE minsu;
CREATE TABLE imgam(
 id INT PRIMARY KEY AUTO_INCREMENT,
 img_url VARCHAR(100)
);
INSERT INTO imgam VALUES
(null,"http://127.0.0.1:3000/img/92.jpg"),
(null,"http://127.0.0.1:3000/img/93.jpg"),
(null,"http://127.0.0.1:3000/img/94.jpg"),
(null,"http://127.0.0.1:3000/img/95.jpg");


USE minsu;
CREATE TABLE travel(
 id INT PRIMARY KEY AUTO_INCREMENT,
 img_url VARCHAR(100),
 portrait VARCHAR(100),
 title VARCHAR(100),
 author VARCHAR(100),
 time VARCHAR(100),
 browse INT,
 content VARCHAR(300),
 region VARCHAR(100),
 live VARCHAR(100),
 pipil VARCHAR(100)
);
INSERT INTO travel VALUES
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","山秀村美— 令人着迷的徽州","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/101.jpg","http://127.0.0.1:3000/img/201.jpg","涌潮奔浪秦皇岛 万里长城第一关","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","秦皇岛","别墅短租","民宿推荐"),
(null,"http://127.0.0.1:3000/img/102.jpg","http://127.0.0.1:3000/img/202.jpg","北京，一座没人理你的繁华城市","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/103.jpg","http://127.0.0.1:3000/img/203.jpg","上海，每天消费60亿，却只算得上半座世界性城市","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","11月的三亚，圆我一场“闺蜜”之旅","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","金融古华尔 ，龟城平遥行","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","扎尕那，当阳光洒向无垠的大地","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","很多年，再没有一家让我住下就不想走的民宿了","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","缘来爱你，是我独家的记忆","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","跨越1200公里的距离，他们以爱之名成就了梦想","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","沉醉不知归处，京师之枕，云上花园之旅","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","演员不当偏要做设计，这个“大叔”太任性！","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","醒来觉得甚是爱你","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","听说这里的生活，如诗如画浪漫天涯？","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","今晚的柔情——你走进了她的心","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","一段旅程，邂逅一个温暖的家","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","在三亚公主郡，我做了一场极致的海岛美梦","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","非标住宿“学院派”：一直被模仿，从未被超越！","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","忘了巴厘和马代，看了这别墅原来这些年都白去了……","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","一同躲在这座房子里的，叫理想和李响","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","山水之间，有一座Lillan的‘小梁山’","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","梅香如故，同里古院恰似故人归来","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","寻这样一座小城，还父母一场旅行","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","你看的是魔幻之城，我只爱无辣不欢","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","一路向南，涠洲有海","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","这一场说走就走的旅行，并不只是说说而已","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","听说这里的生活，如诗如画浪漫天涯？","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","今晚的柔情——你走进了她的心","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事"),
(null,"http://127.0.0.1:3000/img/100.jpg","http://127.0.0.1:3000/img/200.jpg","一段旅程，邂逅一个温暖的家","作者：海绵 ","2019年01月07日",69,"古人有“五岳归来不看山，黄山归来不看岳”的说法。游黄山 ，一年四季都很合适，因为四季景色各有不同，各有各的风采.","北京","别墅短租","旅行故事");
