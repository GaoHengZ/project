<br />
<b>Warning</b>:  strftime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in <b>D:\AppServ\www\phpMyAdmin\export.php</b> on line <b>254</b><br />
<br />
<b>Warning</b>:  strftime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in <b>D:\AppServ\www\phpMyAdmin\libraries\common.lib.php</b> on line <b>1802</b><br />
<br />
<b>Warning</b>:  strftime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in <b>D:\AppServ\www\phpMyAdmin\libraries\common.lib.php</b> on line <b>1803</b><br />
<br />
<b>Warning</b>:  strftime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in <b>D:\AppServ\www\phpMyAdmin\libraries\common.lib.php</b> on line <b>1805</b><br />
-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2016 �?05 �?03 �?14:35
-- 服务器版本: 5.0.51
-- PHP 版本: 5.6.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `blog`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `comment`
-- 

CREATE TABLE `comment` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `titleid` smallint(6) unsigned NOT NULL,
  `user` varchar(20) character set utf8 NOT NULL,
  `comment` text character set utf8 NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- 
-- 导出表中的数据 `comment`
-- 

INSERT INTO `comment` VALUES (3, 18, 'bnbbs', '我的第一条评论！', '2014-03-20 11:16:18');
INSERT INTO `comment` VALUES (2, 19, 'bnbbs', '我的第一条评论！', '2014-03-20 11:15:51');
INSERT INTO `comment` VALUES (6, 19, 'bnbbs', '我的第三条评论！', '2014-03-20 11:19:36');
INSERT INTO `comment` VALUES (7, 12, 'bnbbs', '我的第一条评论！', '2014-03-20 11:19:47');
INSERT INTO `comment` VALUES (10, 18, 'bnbbs', '我的第二条评论！', '2014-03-20 19:38:36');
INSERT INTO `comment` VALUES (9, 19, 'bnbbs', '我的第四条评论！', '2014-03-20 19:10:31');
INSERT INTO `comment` VALUES (11, 19, 'bnbbs', '我的第五条评论！', '2014-03-20 20:38:48');
INSERT INTO `comment` VALUES (12, 19, 'bnbbs', '我的第六条评论！', '2014-03-20 21:05:46');
INSERT INTO `comment` VALUES (13, 19, 'bnbbs', '我的第七条评论！', '2014-03-20 21:07:30');
INSERT INTO `comment` VALUES (14, 19, 'bnbbs', '我的第八条评论！', '2014-03-20 21:09:08');
INSERT INTO `comment` VALUES (15, 19, 'bnbbs', '我的第九条评论！', '2014-03-21 11:12:52');
INSERT INTO `comment` VALUES (18, 19, 'bnbbs', '我的第十条评论！', '2014-03-21 13:04:33');
INSERT INTO `comment` VALUES (22, 19, 'bnbbs', '我的第八八条评论！', '2014-03-21 13:10:53');
INSERT INTO `comment` VALUES (23, 19, '123', '1111', '2016-05-03 18:41:53');

-- --------------------------------------------------------

-- 
-- 表的结构 `issue`
-- 

CREATE TABLE `issue` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `title` varchar(200) character set utf8 NOT NULL,
  `content` text character set utf8,
  `user` varchar(20) character set utf8 NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- 
-- 导出表中的数据 `issue`
-- 

INSERT INTO `issue` VALUES (11, '飞行员和空姐登机前拎的旅行箱里有什么？是私人物品吗？', '<p>驾驶员的箱子东西不多，一般有几件衣服证件少量护肤品洗漱用品，我说的是国内过夜航班，盟机长说得很全面了。乘务员那就五花八门了：衣服，电\n脑，iPad，手电，大量化妆品，零食（常看见有带盒装周黑鸭的），安全套（并不是每个乘务员都有，只是极少数，并且我发誓我真不知道干什么用的。）。安\n全员：除了自用用品和证件。会携带警械登机，都有什么就不说了。但是会单独放在一个警具带里。补充一点：一般过夜航班国内机组会在戴箱子的同时带一个过夜\n包，设计的很科学。可以装制服，折起来还可以当一个包使用。。</p><p>PS：很奇怪我怎么知道的吧，尤其是关于安全套的故事。其实我只是机场的安检员。。。对，机组也是需要安检的，是不多余？另：广大crew同学们不要感觉\n自己的隐私就这样无情的暴露在屌丝安检员眼前。为了安全那是官话，其实除了我这样多年在机组通道执勤见得东西多了才知道外，广大安检员是根本不关心你包里\n有什么东西的，因为普通旅客限制携带的物品你们没有限制。所以大多数人乐得清闲，根本不会认真瞧机组的行李。。。还有，你们别以为X光机图像什么都看得出\n来，除违禁品外。生活物品分辨的真的是不太好，尤其是安全套这种橡胶材质的有机物。什么？你问我怎么能认识？还记得多年以前，那时我清纯羞涩，稚气未脱。\n刚刚进入安检队伍，一位善良的、经验丰富老前辈耐心的教我单位不会教的知识，告诉我：这，是安全套。这，是胸罩，这，是情趣玩具。这，是。。。。<br>如今，这些知识全部派上了用场。</p><p>那个啥，真没想到随口一调侃获得这么多赞同，看来这种爆隐私的回答是广大群众喜闻乐见的。话说我真的不是故意要把群众们的思维往那个方向引的。。我已经说\n了，我真的不知道CC带那啥是干啥的。因为曾看见有某个图腾为大鹏的airline整整一队人人有一盒，况且这东西真的不常见。。所以大家不要在腹黑的\nYY。。<br>  还有，问我能不能看出小仓鼠那位仁兄，昨天晚上我刚查了一只小乌龟。还有一只小比熊狗狗我会乱说嘛？把宠物放包里容易闷死的你造吗？</p>', '123', '2016-05-01 19:03:05');
INSERT INTO `issue` VALUES (10, '那些年入上百万的人是如何做到的？平均年龄是多少？', '<p>之后去的底薪40K/月的一个我认为更适合我的公司管理几百个码农。之后创业。虽然经历了连续创业失败以及生活上的种种困难导致我事实上很穷，但，我自己现在的职业目标和选择依然和薪水无关，只希望能在我自己手上做成多少年以后还能让我骄傲的事情。</p><p>我先说创业的。<br>找关系包俩工程，每个百十来万，然后各种偷工减料，花点钱搞定监理和甲方。搞定。当然了，前提是你的内心能够过得去。千万别在学校啊、路桥啊上面做手脚。会遭报应。</p><p>一个软件或服务或运营类项目订单小点的几十万，大点的几百万，更大的几千万甚至更多。<br>作为创业者，养一个十个人的team，年支出如果控制在百万里面，那么有4-5个小单子就能净利百万。有一个大单子就很 happy了。</p><p><br>在大家都能知道名字的公司里，事业部总经理、大部门总监、高级销售总监、高级客户总监等等的title基本就这个水平了，或者更低的岗位也ok。\n顶级的技术专家和产品专家也差不多。我知道一位技术大牛，中国人（准确的说是至今仍然保留中国籍），服务于国内创业小团队，月薪18万美元。<br><br>中小型公司里，如果公司业务比较良性，那么VP一级应该差不多的。顶级的销售也能轻松拿到这个薪水。</p><p>我自己在11年拿到过某浙江互联网公司（央视露脸无数次，不是阿里。。。）底薪百万／年的offer，然后觉着公司不靠谱没去，然后去混了两年娱乐圈。</p><p>我的一个曾经的老大，是我的楷模，我的管理方法甚至个人处事方法很多都在他身上学来的，农村孩子出身，历经若干大公司，自己说自己是中国打工者里面的顶级角色，在微软、腾讯等做过极高的职位。现在改行去了传统行业，年薪千万级别。他现在37岁吧。<br>我\n自己03年大学毕业，大约经过8-9年做到能够年薪百万。这里面前三年走了弯路。06年进入互联网行业从外行用最笨最努力的方式成为销售冠军，然后不停升\n职／转职，据老同事讲我至今还保持这老东家的升级记录～从纯粹的销售到现在的产品、运营、渠道、CEO，然后过程中经历若干次跳槽。到27岁成为日后一个\n大公司的总经理办公会成员。之后就有了基本保障了。直到现在。</p><p>我身边同样有很多技术牛人。06年吧，我刚刚从底薪1200转型到一个所谓的管理者，月薪可能是7K附近，那会儿我们公司的产品总监月薪28K，我都惊了。到08年我手下的产品经理薪水最高的是42K，要知道我们是17薪。<br>在一个不是特别冷门的领域里面，你能想明白别人想不明白的事情，你能解决别人解决不掉的问题，或者同样的事情你的效率比别人高的多，那么你的薪水就应该很高。至于能有多高，看你如何去争取了。</p>', '123', '2016-05-01 22:21:39');
INSERT INTO `issue` VALUES (12, '希望缓解眼睛干涩症状，什么眼药水最好？', '<b>Santen FX</b><b>奈甲挫林(naphazoline)</b><b>抗眼部充血剂</b><b>通过使眼睛里面的血管收缩来让他们看起来变白</b><b>并不能真正解决眼部干涩的问题</b><b>眼睛血丝只是看起来变白了</b><b>有研究表明这类药物会加剧眼睛干涩的症状</b><b>长期使用后停止使用会让眼睛更容易干涩以及产生更严重的血丝症状。</b><p>和前面的几位答题者一样，我以前也是Santen FX的忠实粉丝，这玩意用了之后确实感觉非常的爽，特别是滴完之后一打开眼睛感觉浑身都凉得不行，红血丝也不见踪影。以至于有一段时间每次刷完题、打完游戏之后都要用几滴——直到我在Quora上看到一个眼科医生的回答！</p><p>或者其他宣称能够“GET THE RED OUT”的眼药水都含有</p><p>或者类似的成分，它是一种</p><p>，</p><p>。但是这是一种治标不治本的方式，这类眼药水</p><p>，你的</p><p>，事实上</p><p>。更糟糕的是，这类药物还会产生一定的依赖性，</p><p>列出这位医生推荐的一些品牌的眼药水供大家参考，但大多数都是北美的牌子，似乎不那么容易在药店买到，可以考虑在淘宝购入，我自己尝试了Refresh Tears感觉非常好~</p><p>去年端午三天假期在宿舍几乎一整天都在床上玩手机，然后就开始眼睛干、涩、疼，更有时候不能被风吹日晒，风一吹就感觉眼睛里的液体秒干！！哗哗的灌风！黑暗里不能看手机屏幕，刺眼的疼。</p><p>网\n上查阅大量信息，怀疑干眼症（症状几乎全部符合！！！而且这病是慢性病几乎无法医治，就算一段时间好了之后还会反反复复，更有甚者会导致失明…我当时真真\n的被吓到了好吗！！！感觉我心灵的窗户从此就要别我而去了那个悔恨那个焦虑那个……(￣^￣)ゞ）遂去医院检查，检查结果除了近视没任何问题，医生很坚定\n得说就是平时用眼过度了，开了两瓶眼药水。不得不说那个包装从外到里都觉得很渣，但毕竟是正儿八经的眼科医院啊，总不该是假的吧，试了一下，但还是不放\n心，把两瓶都扔了。</p>', '123', '2016-05-01 19:04:49');
INSERT INTO `issue` VALUES (17, '潜水被鲸鱼吞下去后还有自救的可能性吗？', '问得一个好问题，下面来细细分析：<br>1.首先，你得被正确的鲸鱼吞食（什么样的鲸鱼能吞进去一个人？）<br>并不是每个鲸鱼都能轻易的吞进一个装备完善的人的。<br>根据生物上的分法，鲸是一个总的大目，其中又分须鲸亚目和齿鲸亚目。<br><br>须鲸亚目下的鲸都是<b>鲸须滤食</b>的方式捕捉小鱼小虾为食，因此它们食道普遍很窄，才几厘米最多10几厘米而已。体积最大的蓝鲸食道直径也才10cm而已。<br>而齿鲸拥有牙齿来捕获鱼或鱿鱼。<br>啊？那齿鲸有牙齿它不会咀嚼吗？<br>别害怕，有一种齿鲸的牙齿并不是用来咀嚼食物的，而是用来捕捉猎物的，而且它的喉头很大，能吞下整只乌贼、章鱼和小鲨鱼。<br><br>2.如何被抹香鲸吃掉（鲸腹不是你想进，想进就能进）<br>首先，抹香鲸通常为海底300 -800米 ，有时1-2公里之间潜水寻找食物。以多种枪乌贼和深海鱼为主要食物。<br>因此你得下潜这么深。然后趁它东西的时候潜入嘴中。<br>（经知友提醒，貌似无法下潜这么深啊....只有等它上浮时不断骚扰它了。）<br><br>3.抹香鲸食道历险记<br>你现在被抹香鲸吞了下去，就像我们吞口水时会咽一下，抹香鲸吞食物的时候也是咽一下的，希望这时不会被食物互相挤死吧。<br>而且抹香鲸是有三个胃的。你首先进到的是抹香鲸第一个胃，它里面没有胃液也没有空气（空气罐派上作用了），但会不停的蠕动来用肌肉粉碎食物，所以亲要在被粉身碎骨前赶紧去下一个胃哦。<br>第二个，第三个会分泌胃酸。所以亲要把握机会快点出来哦不然就被腐蚀啦。<br>', '123', '2016-05-01 11:39:44');
INSERT INTO `issue` VALUES (18, '为何刘备不管多落魄都有人跟随？', '而且王粲还写过这样一句话：灵帝末年，备尝在京师，复与曹公俱还沛国，募召合众。会灵帝崩，天下大乱，备亦起军，从讨董卓。<br><br>如果这个事实成立，刘备和公孙瓒混的时候，还去过首都，并结识了曹操。这个结识可不简单，复与曹公俱还沛国，募召合众，这件事儿发生在灵帝死之前，泄露出的消息是什么呢 ？<br><br><p>当时的西园八校尉的兵，可能是自己招的。皇帝死后，蹇硕拿得住这支部队才叫见鬼，何进</p>拿不住，但这支部队人数不少，袁绍袁术合兵就扫灭了宦官。但人数也不是太多，后来董卓进京人数数千，害怕镇不住这帮孙子，于是耍花招反复入城，袁绍就虚了。<br><br>这也解释了后来为啥曹操被刘备玩的很惨——早年就很赏识这个不轻易流露政治立场的小贼啊（你看刘备投奔过多少人吧，他从不表态，等着你表态）！<br><br>于是有：曹操与刘备密言，备泄之于袁绍，绍知操有图已之意。操自咋其舌流血，以失言戒后世。<br><br>总之，看来看去，刘备虽然本钱少导致之前没混出来，但是智商，做人，魅力，口才，各种牛逼闪闪。玩的曹操袁绍一愣一愣。<br><br>这种人对于同样有能力，没出身的人，比如张飞（小型土豪），关羽（犯事儿跑路的人），赵云（郡兵头子，可能还和黄巾有关系，我猜的），那吸引力，刚刚地。<br><br>但是对陈登这种有地盘有功名的人，皇叔的吸引力就有限了。没能从事实上征服陈登，皇叔非常遗憾，但的卢光环闪烁，陈登不久就病死。<br><br>而且陈登生前还嘴炮表态，这表态是针对曹操那边的，各种飞扬跋扈，摘录如下：<br><br>登\n曰：“夫闺门雍穆，有德有行，吾敬陈元方（陈纪）兄弟；渊清玉絜，有礼有法，吾敬华子鱼（华歆）；清脩疾恶，有识有义，吾敬赵元达（赵昱）；博闻强记，奇\n逸卓荦，吾敬孔文举（孔融）；雄姿杰出，有王霸之略，吾敬刘玄德（刘备）：所敬如此，何骄之有！余子琐琐，亦焉足录哉？”<br>', '123', '2016-05-01 11:40:22');
INSERT INTO `issue` VALUES (19, '程序员想转行当医生，可行吗？', '别逗了题主，正常人18岁上医科大学，23岁本科毕业考研，26岁硕士毕业考博，29岁博士毕业。并且这些都是一路顺风的情况下。现在又特么出台个住院医\n师规范化培训，要求在教学医院轮转三年充当免费劳动力，当然博士可以减免一年（各地政策不同，轮转期间待遇有好有差，一般不到两千，而且不给奖金）。轮转\n后32岁花了不少钱找了不少关系终于在大医院入编了。刚工作依旧苦逼，晋职称前面有一百多号人排队，何时能排到自己？<b>自</b>己终于晋职称了，结果出门诊被人一\n刀捅死。没错，很有可能！而且作为医学生，我们好像忘了结婚的事情，没错，我们没时间，也结不起。<br><br>既然大家都在打击题主，我来写点正经（？）的看看~不过值不值，题主自己判断。Disclaimer：本人非医科生，资料也未经过严谨考据。不过周围pre-med很多。如果题主真的下了决心，我也不介意帮你问问进度啊，备考经验一类。<br><br>一\n般理科生转行成医森的话，在美国是可行的。因为美国基本没有本科医学院，也只有少数学校有正式的pre-med这个专业。而医学院的录取，也并未硬性规定\n只收“特定专业”人士。在满足要求的条件下，其实CS男也有点自己的优势啊~比如我见过的CS男一般数学都非常好，而这一点，medical \nschool也是很欣赏的。<br><br>你可能是想直接读个国内医学院的研究生然后当医生？这是不行的，临床执业医师执照要求本科是临床医学或者研究生是临床型，跨专业考入的绝对是做科研型，没\n有资格考临床执照。此外我还没有见过如此大的跨专业，不晓得政策是否允许，通常我们说的跨专业都是从预防医学什么的跨到临床来。<br><br>所以正道\n是你得重新考大学，最节约时间的路是八年制，但收分挺高，我连看了两届学弟的分，都是全省前1～5/1000的样子。那要不就是五年制，然后读硕读博，别\n的答案也给分析了，这样从现在开始需要的时间至少是10-11年，加上明年开始住院医师规培制度全面实行，到10年后的政策下怕是博士还要再做2年规培才\n能正式从医？所以不管你走什么学制，想像其他规范培养的医师一样就得十多年，这十多年没有多少收入，你算算是否耗得起。何况别人到40岁怎么都开始独当一\n面了，你这样到40岁还要跟在同龄人屁股后面跟10年才能和他们一样，我敢说你得不到想要的成就感的。<br>', '123', '2016-05-01 11:41:46');

-- --------------------------------------------------------

-- 
-- 表的结构 `user`
-- 

CREATE TABLE `user` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `user` varchar(20) character set utf8 NOT NULL,
  `pass` char(40) NOT NULL,
  `email` varchar(100) character set utf8 NOT NULL,
  `sex` varchar(10) character set utf8 NOT NULL,
  `birthday` date default NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- 
-- 导出表中的数据 `user`
-- 

INSERT INTO `user` VALUES (1, 'bnbbs', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'bnbbs@163.com', 'male', '0000-00-00', '2014-02-27 17:16:33');
INSERT INTO `user` VALUES (30, '123', '7c4a8d09ca3762af61e59520943dc26494f8941b', '123@qq.com', 'male', '2016-05-02', '2016-05-02 11:31:44');
