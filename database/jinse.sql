/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.01
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : jinse

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 23/03/2020 00:57:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户uid',
  `address` varchar(42) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `remark` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `address_address_index`(`address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '作者',
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面地址',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `number` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击数',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `coin_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联币种ID',
  `tags` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签',
  `good` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '利好',
  `bad` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '利空',
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID',
  `video` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '视频地址',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '文章类型(默认1文章,2快讯,3视频)',
  `zan` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 1, '3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响', '/storage/2020_03_17/865478c1d5e41b30ffca510bf0f5b13b2184.png', '<p><strong>巴神：</strong></p>\n\n<p><strong>没有恰到好处的旅程，只有恰如其分的心情。谁让瞬间像永远，谁让未来像从前，续集很多可都是剧中人，有了直播没了剧终，感受了这一周的风浪，也要迎接下一周的波动。得失无语，弃风获雨，不以盈喜，不以损悲，淡定自若，从容应对！当阳光明媚，玫瑰还未枯萎，当时光零碎，信念未被摧毁，当行情远去，翻倍还未追随，生活，不会总如意，投资，不会都圆满，都要经受聚散离合，都是历经风雨吹打，路尽时，适时拐弯，总会豁然眼！投资，不是靠心情存在，而是靠心态活着！</strong></p>\n\n<p><strong><img src=\"https://img.jinse.com/3048672_image3.png\" alt=\"rayvCVOcFzBLbK7Vk7aO8c2yGyuMwW4u2jgUl2x8.png\"></strong></p>\n\n<p><b>晚间要闻：</b></p>\n\n<p><b>1：</b>据官方公告，Gate.io第五期LBank vs Ravencoin投票上币活动结束，胜出项目为LBank。Gate.io将于3月18日中午12:00开通LBK/USDT交易，并随后开通提现服务。</p>\n\n<p><strong>2：</strong>据Decrypt消息，韩国科学与信息通信技术部将向当地区块链创业公司提供310万美元的资助，以促进区块链技术的商业化。具体而言，该部门将与信息通信产业振兴院（NIPA）合作，通过免费招募的方式选择九个方向的最佳区块链应用，并授予各个项目36万美元的资助。</p>\n\n<p><strong>3：</strong>北京“监管沙盒”将出台监管细则，对于“入箱”机构来说，应用“出箱”后必须由持牌机构经营。</p>\n\n<p><strong>4：</strong>据证券时报消息，3月17日，中装建设区块链技术服务平台首次尝试应用并场景落地，通过平台上线并发放第一笔贷款，进行可用性验证，同步跟进技术环境测试，为后期系统大范围管理运行做好充分准备。</p>\n\n<p><strong>5：</strong>据LongHash 3月17日消息，所有数据都表明，比特币价格跌至3600美元到3800美元区间的最大原因是加密货币市场高度杠杆化的结构。有业内高管表示，加密货币市场支持下的“不良杠杆”使其极易陷入危机。而一些交易者认为，比特币这一次打破过去8年间市场趋势的短期回调应该归咎于 BitMEX清算引擎宕机，而不是市场本身。</p>\n\n<p><strong>3.17晚间行情分析：</strong></p>\n\n<p><strong>BTC：</strong>今日主要震荡横盘，从一小时分线横盘震荡为主，目前属于收线阶段，持续横盘一小时线MACD容易形成向下死叉，所以目前急需关注横盘震荡行情箱体利润，分钟线级别处于小基本头肩顶趋势，晚间5400属于重要压力位，破位压力5700，未能突破主要短空为主，下方主要支撑4900，上方5400一带重点压力位破位顺势，</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>晚间参考：5450-5500附近空，目标5300-5200，止损5600上方，回踩下方5150-5200附近多，目标5350-5500止损5000，</strong></p>\n\n<p><strong><img src=\"https://img.jinse.com/3069497_image3.png\" alt=\"Q7SW8732TZy9yu1FryD8KefWprvxHzSiyWSe9AdY.png\"></strong></p>\n\n<p><strong>ETH:</strong>白天顺着大盘走势，走势震荡运行，布林带收口压缩运行空间，走势在布林带中轨附近运行，MACD快慢线在零轴下方呈金叉上行，KDJ、RSI指标拐头上探，目前大盘回归平静，走势以震荡为主，在区间内高抛低吸即可，</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<strong>晚间参考：118附近空，稳健120空，目标114-109，止损115。下方109附近多，目标114 止损105，</strong></p>\n\n<p><strong><img src=\"https://img.jinse.com/3069508_image3.png\" alt=\"hNYqMyd4ZJD0sdFurHGaBaxdU9lTW8lX7hCmA9TQ.png\"></strong></p>\n\n<p><strong>BCH：</strong>BCH白天随着大盘走势窄幅震荡，晚间走势探底在177.6的位置后，走势止跌反弹最高涨至177.96的位置，随后走势震荡整理，4小时走势5日均线及10日均线胶着运行，走势在布林带中轨附近运行，布林带收口，MACD快慢线在零轴下方呈金叉上行，KDJ、RSI指标拐头上探，短期走势进入震荡状态，日内在区间内高势低吸为主，</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>晚间参考：上方建议183-188期间空 ，目标177-167 止损 190&nbsp; 下方167附近多 目标177 止损160</strong></p>\n\n<p><strong><img src=\"https://img.jinse.com/3069514_image3.png\" alt=\"PGJDFkqdCTWH6B8wUjYmTtS2r53fnCRK3QvSIUh5.png\"></strong></p>\n\n<p><strong>LTC:</strong>白天走势最低33.99一线后反弹最高触及34.51的位置后小幅回落震荡运行，目前报价34.23，4小时级别均线呈死叉状态，但MACD快慢线呈金叉上行，布林带收口，走势回到布林带中轨运行，各指标拐头上行，短期来看，走势在区间内震荡，所以操作以高抛低吸为主，短期压力位36-40，支撑位30-35，</p>\n\n<p>&nbsp; &nbsp;&nbsp;<strong>晚间参考：上方35附近空 目标34-32 止损36&nbsp; 下方32附近多 目标34&nbsp; 止损30&nbsp;</strong></p>\n\n<p><strong><img src=\"https://img.jinse.com/3069519_image3.png\" alt=\"ncyd6F4TW7WvsYkhj8bFATHj1xpDZAAjciU7t177.png\"></strong></p>\n\n<p><strong>EOS：</strong>柚子白天也是受整体趋势影响，大幅度下跌后，形成一个震荡趋势，1.96附近一直横盘整理，目前从价位上看的话，基本上已经处于底部状态，中长线可以以多单为主，短线操作根据形势，带好止损操作，</p>\n\n<p><img src=\"https://img.jinse.com/3069523_image3.png\" alt=\"EvjBNKS2NF2yxfkPT3kEHNZJ5p9eZHPVQirRiwt4.png\"></p>\n\n<p><strong>以上就是晚间我为大家的分析：本文出自笔者感觉不错可以关注一下，可以获得最新行情走势以便大家学习参考，转载请注明出处个人观点仅供参考，</strong></p>', 0, '2020-03-18 03:56:44', '2020-03-18 03:56:44', 0, '[\"\\u6316\\u77ff\"]', 0, 0, 2, NULL, 1, 0);
INSERT INTO `articles` VALUES (2, 1, '比特币入选《财富》“现代百大最佳设计产品” 抄底的时刻到了', '/storage/2020_03_19/beb5d2ee4447a7945f17059e83c2a9535108.png', '<p style=\"text-align:center\"><img src=\"https://img.jinse.com/3056015_image3.png\"></p><p><strong><span style=\"font-size: 20px;\">事件&nbsp;</span></strong> &nbsp;&nbsp;</p><p>BTC闪崩，价格从7980美元直落至3800美元，跌幅达52%，价格减半，只用了一天，市场陷入恐慌。此前，因为“减半”预期和避险需求，BTC的价格一度从6696美元涨至10500美元。</p><p>风险提示：监管政策风险、市场趋势风险</p><p><span style=\"font-size: 20px;\"><strong>正文&nbsp; &nbsp;</strong></span></p><p>BTC闪崩，价格从7980美元直落至3800美元，跌幅达52%，价格减半只用了一天，市场陷入极度恐慌，BTC“数字黄金”的成色受到考验。此前，因为“减半”预期和避险需求，BTC的价格一度从6696美元涨至10500美元。</p><p>BTC出现暴跌，主要是因为：疫情席卷世界，全球或陷入经济危机。投资者出于归偿债务的需求，回收流动性，致使避险资产失灵，BTC“数字黄金”的成色受到挑战。数字资产市场生态环境恶劣，期货合约等衍生品乱象丛生，市场失血严重。</p><p>长期来看，寒冬总会过去，期待破茧成蝶。区块链技术仍在向前发展，现在处于蝶变前夜。回顾BTC历史，价格的剧烈波动是其一以贯之的特征。随着减半即将到来，BTC将进入一个新的时代。</p><p><span style=\"font-size: 20px;\"><strong>1、暴跌背后：经济危机，流动性枯竭</strong></span></p><p><strong>第一，受疫情影响，全球或已经处于经济危机当中。</strong></p><p><strong>美股一周两次熔断，史无前例。</strong>各国股市跟跌，欧股持续走低。3月12日，道指、纳指、标普集体跌破7%，继周一后再次触发熔断。交易恢复后，三大指数进一步下跌。受此影响，泰国、菲律宾、韩国、巴基斯坦、印尼、加拿大、巴西、墨西哥等国家股市也暴跌触发熔断。与此同时，欧洲股市同样持续走跌。</p><p><strong>国际油价暴跌超22%，创本世纪以来油价最大跌幅。</strong>受新冠疫情影响，全球石油需求急剧下降；上周五石油输出国组织（OPEC）与俄罗斯的减产协议破裂，石油价格战开启，油价暴跌。</p><p><strong>现货黄金跌破1590美元/盎司，日内跌超2.5%。</strong>作为成色最好的避险工具，黄金中断前段时间的上涨势头，随市场下行。</p><p>资金蜂拥至避险资产，美国国债收益率跌破1%，创下史上最低。当疫情主要在中国时，路透社对经济学家的调查显示，中国一季度GDP增速将从6%降至3.5%。往年中国经济贡献了全球经济增长近30%，中国经济失速必将导致世界经济失速。</p><p>按照世界货币基金组织（IMF）的定义，只要全球经济增速低于2.5%，就算衰退。而2019年，全球经济增速只有2.9%，只要增速再下滑0.4个百分点，全球就陷入衰退了。经合组织（OECD）已经更新了他们对世界经济增速的估计，认为将降到1.5%，衰退只乎铁板钉钉了。</p><p>往后来看，全球经济情况会越来越糟。一旦经济开始衰退，会形成“雪崩”效应，供给受阻、需求不振、信心不足——收入减少，破产变多，失业增加——供应短缺、需求下降（工人失去工作，推迟大宗消费，取消家庭度假）、信心丧失……这种循环周而复始，经济已陷入陡峭的下没螺旋。</p><p>这次的经济危机叠加供给冲击、需求冲击和金融冲击三重因素，严重程度很可能是仅次于1929年“大萧条”，我们将此次命名为：“2020年全球经济瘟疫”。</p><p style=\"text-align:center\"><img src=\"https://img.jinse.com/3056016_image3.png\"></p><p><strong>第二，BTC“数字黄金”的成色受到挑战。</strong>一方面，BTC确实表现出一定的避险价值：2019年6月份由于贸易战等原因BTC与黄金双双大涨；2020年年初的美伊危机，BTC与黄金再次大涨。但另一方面，BTC对于国际事件的反应具有不确定性，并非每次都避险奏效。比如2月初，疫情席卷全球，BTC就并未随着黄金一样受到追捧，反而出现价格持续下行的情况。</p><p style=\"text-align:center\"><img src=\"https://img.jinse.com/3056015_image3.png\"></p><p><strong>第三，流动性枯竭，避险资产失灵。</strong>新冠肺炎疫情席卷世界，市场恐慌情绪飙升，全球主要投资市场均出现暴跌。投资者出于归偿债务的需求，回收流动性，套现各种流动性好的资产，甚至黄金价格也随之下行。</p><p><strong>第四，数字资产市场生态环境恶劣。</strong>这两年，区块链行业没有突破性的进展，市场缺乏优质的底层资产，无法吸引行业外部人士关注和进入市场，没有活水，市场陷入存量博弈的格局当中，所有的热点都是昙花一现。</p><p>近期市场大热的借贷、期货、合约等数字资产衍生品，只是给不适当的人群提供了不合适的杠杆工具，让他们彼此搏杀，对于行业的长期发展无益。</p><p>同时，市场因为缺乏监管，乱象丛生，与“赌场”无异。一些交易平台，频繁出现“拨网线”、“停机”、“插针”等行为，加剧市场波动，难逃操纵市场之嫌。</p><p><span style=\"font-size: 20px;\"><strong>2、寒冬总会过去，期待破茧成蝶</strong></span></p><p><strong>区块链还在，BTC还在。</strong></p><p>尽管受到全球经济危机波及，数字资产市场遭受重创，但不可否认，区块链技术仍在向前发展，现在处于蝶变前夜。各种区块链的落地应用和产业化的推进，使得区块链进入了更广阔的发展空间，得到了更多的认可。中央和地方纷纷出台了相关监管或扶持政策，为区块链技术和产业发展营造了良好的政策环境。</p><p>回顾BTC历史，价格的剧烈波动是其一以贯之的特征。2018年12月，BTC最低跌至3400美元，半年后，又重新站上了13000美元。全球经济危机的背景下，BTC减半即将到来，BTC将进入一个新的时代，一个成本更高、增量更稀缺的时代。</p><p>保持信仰，挺过黎明前的黑暗。</p><p><strong>附注：</strong></p><p>因一些原因，本文中的一些名词标注并不是十分精准，主要如：通证、数字通证、数字currency、货币、token、Crowdsale等，读者如有疑问，可来电来函共同探讨。</p>', 0, '2020-03-19 17:53:57', '2020-03-19 17:53:57', 0, '[\"BTC\",\"\\u4ea7\\u4e1a\",\"\\u6316\\u77ff\"]', 0, 0, 1, '/storage/2020_03_19/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4', 3, 0);
INSERT INTO `articles` VALUES (3, 1, '“减半”行情 原来是价格减半', '/storage/2020_03_19/beb5d2ee4447a7945f17059e83c2a9535108.png', '<p style=\"text-align:center\"><img src=\"https://img.jinse.com/3056015_image3.png\"></p><p><strong><span style=\"font-size: 20px;\">事件&nbsp;</span></strong> &nbsp;&nbsp;</p><p>BTC闪崩，价格从7980美元直落至3800美元，跌幅达52%，价格减半，只用了一天，市场陷入恐慌。此前，因为“减半”预期和避险需求，BTC的价格一度从6696美元涨至10500美元。</p><p>风险提示：监管政策风险、市场趋势风险</p><p><span style=\"font-size: 20px;\"><strong>正文&nbsp; &nbsp;</strong></span></p><p>BTC闪崩，价格从7980美元直落至3800美元，跌幅达52%，价格减半只用了一天，市场陷入极度恐慌，BTC“数字黄金”的成色受到考验。此前，因为“减半”预期和避险需求，BTC的价格一度从6696美元涨至10500美元。</p><p>BTC出现暴跌，主要是因为：疫情席卷世界，全球或陷入经济危机。投资者出于归偿债务的需求，回收流动性，致使避险资产失灵，BTC“数字黄金”的成色受到挑战。数字资产市场生态环境恶劣，期货合约等衍生品乱象丛生，市场失血严重。</p><p>长期来看，寒冬总会过去，期待破茧成蝶。区块链技术仍在向前发展，现在处于蝶变前夜。回顾BTC历史，价格的剧烈波动是其一以贯之的特征。随着减半即将到来，BTC将进入一个新的时代。</p><p><span style=\"font-size: 20px;\"><strong>1、暴跌背后：经济危机，流动性枯竭</strong></span></p><p><strong>第一，受疫情影响，全球或已经处于经济危机当中。</strong></p><p><strong>美股一周两次熔断，史无前例。</strong>各国股市跟跌，欧股持续走低。3月12日，道指、纳指、标普集体跌破7%，继周一后再次触发熔断。交易恢复后，三大指数进一步下跌。受此影响，泰国、菲律宾、韩国、巴基斯坦、印尼、加拿大、巴西、墨西哥等国家股市也暴跌触发熔断。与此同时，欧洲股市同样持续走跌。</p><p><strong>国际油价暴跌超22%，创本世纪以来油价最大跌幅。</strong>受新冠疫情影响，全球石油需求急剧下降；上周五石油输出国组织（OPEC）与俄罗斯的减产协议破裂，石油价格战开启，油价暴跌。</p><p><strong>现货黄金跌破1590美元/盎司，日内跌超2.5%。</strong>作为成色最好的避险工具，黄金中断前段时间的上涨势头，随市场下行。</p><p>资金蜂拥至避险资产，美国国债收益率跌破1%，创下史上最低。当疫情主要在中国时，路透社对经济学家的调查显示，中国一季度GDP增速将从6%降至3.5%。往年中国经济贡献了全球经济增长近30%，中国经济失速必将导致世界经济失速。</p><p>按照世界货币基金组织（IMF）的定义，只要全球经济增速低于2.5%，就算衰退。而2019年，全球经济增速只有2.9%，只要增速再下滑0.4个百分点，全球就陷入衰退了。经合组织（OECD）已经更新了他们对世界经济增速的估计，认为将降到1.5%，衰退只乎铁板钉钉了。</p><p>往后来看，全球经济情况会越来越糟。一旦经济开始衰退，会形成“雪崩”效应，供给受阻、需求不振、信心不足——收入减少，破产变多，失业增加——供应短缺、需求下降（工人失去工作，推迟大宗消费，取消家庭度假）、信心丧失……这种循环周而复始，经济已陷入陡峭的下没螺旋。</p><p>这次的经济危机叠加供给冲击、需求冲击和金融冲击三重因素，严重程度很可能是仅次于1929年“大萧条”，我们将此次命名为：“2020年全球经济瘟疫”。</p><p style=\"text-align:center\"><img src=\"https://img.jinse.com/3056016_image3.png\"></p><p><strong>第二，BTC“数字黄金”的成色受到挑战。</strong>一方面，BTC确实表现出一定的避险价值：2019年6月份由于贸易战等原因BTC与黄金双双大涨；2020年年初的美伊危机，BTC与黄金再次大涨。但另一方面，BTC对于国际事件的反应具有不确定性，并非每次都避险奏效。比如2月初，疫情席卷全球，BTC就并未随着黄金一样受到追捧，反而出现价格持续下行的情况。</p><p style=\"text-align:center\"><img src=\"https://img.jinse.com/3056015_image3.png\"></p><p><strong>第三，流动性枯竭，避险资产失灵。</strong>新冠肺炎疫情席卷世界，市场恐慌情绪飙升，全球主要投资市场均出现暴跌。投资者出于归偿债务的需求，回收流动性，套现各种流动性好的资产，甚至黄金价格也随之下行。</p><p><strong>第四，数字资产市场生态环境恶劣。</strong>这两年，区块链行业没有突破性的进展，市场缺乏优质的底层资产，无法吸引行业外部人士关注和进入市场，没有活水，市场陷入存量博弈的格局当中，所有的热点都是昙花一现。</p><p>近期市场大热的借贷、期货、合约等数字资产衍生品，只是给不适当的人群提供了不合适的杠杆工具，让他们彼此搏杀，对于行业的长期发展无益。</p><p>同时，市场因为缺乏监管，乱象丛生，与“赌场”无异。一些交易平台，频繁出现“拨网线”、“停机”、“插针”等行为，加剧市场波动，难逃操纵市场之嫌。</p><p><span style=\"font-size: 20px;\"><strong>2、寒冬总会过去，期待破茧成蝶</strong></span></p><p><strong>区块链还在，BTC还在。</strong></p><p>尽管受到全球经济危机波及，数字资产市场遭受重创，但不可否认，区块链技术仍在向前发展，现在处于蝶变前夜。各种区块链的落地应用和产业化的推进，使得区块链进入了更广阔的发展空间，得到了更多的认可。中央和地方纷纷出台了相关监管或扶持政策，为区块链技术和产业发展营造了良好的政策环境。</p><p>回顾BTC历史，价格的剧烈波动是其一以贯之的特征。2018年12月，BTC最低跌至3400美元，半年后，又重新站上了13000美元。全球经济危机的背景下，BTC减半即将到来，BTC将进入一个新的时代，一个成本更高、增量更稀缺的时代。</p><p>保持信仰，挺过黎明前的黑暗。</p><p><strong>附注：</strong></p><p>因一些原因，本文中的一些名词标注并不是十分精准，主要如：通证、数字通证、数字currency、货币、token、Crowdsale等，读者如有疑问，可来电来函共同探讨。</p>', 0, '2020-03-19 17:53:57', '2020-03-19 17:53:57', 0, '[\"BTC\",\"\\u4ea7\\u4e1a\",\"\\u6316\\u77ff\"]', 0, 0, 1, '/storage/2020_03_19/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4', 3, 0);
INSERT INTO `articles` VALUES (4, 3, '期货连环爆 矿工已蒙圈 3000美元是最后的关口？', '/storage/2020_03_19/126e57edf4611a66cc43dbefcf6f43a22514.png', '<p>“比特币跌幅超过20%，历史上只发生过几次。而上一次暴跌，还要追溯到2020年3月12日，我的记忆很深刻，那感觉，仿佛就在昨天。”</p><p>这是今天最火的段子之一。</p><p>好好的怎么就暴跌了？而且直接减半！很多人逐渐相信：一定是庄家在现货市场疯狂砸盘，然后在期货市场里以空单获利？完美收割。</p><p>真的如此吗？</p><p></p><p><img src=\"https://img.jinse.com/3055947_image3.png\" title=\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\" alt=\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\"></p><p></p><p><span style=\"font-size: 20px;\"><strong>比特币暴跌，这些原因你信吗？</strong></span></p><p>Primitive&nbsp;Ventures&nbsp;创始合伙人Dovey（万卉）在微博发文，她总结了5个原因。</p><blockquote>1、早期巨鲸抛售，不少10-11年的硬核玩家为了预备大萧条卖币。<p>2、杠杆合约连环爆仓导致流动性危机，没有熔断，没有央妈，只能靠市场肉身做价格调节。</p><p>3、价格锚定物USDT无法弹性供给，法币出入金渠道堵塞，接下来还可能发生。</p><p>4、矿工质押盘强制平仓 。</p><p>5、交易所系统性风险。</p></blockquote><p>我们一一来分析Dovey说的是什么意思。</p><p>合约连环爆仓，这是指由于短时间内暴跌，使得大部分做多账户被强制平仓，平仓抛售比特币，再次压低现货价格，进而再次造成更多多单爆仓。</p><p>入金渠道就像输送新鲜血液的渠道，一旦被掐断，市场里没有钱，就无法承接卖单。这两天很多人应该都有体会，以火币为例，短时间USDT价格暴涨至8美金，而且卖家稀少，你想抄底比特币也很难。很多人的多单接近强平价格，却无法快速筹集足够的USDT补仓增加保证金，进而眼睁睁看着被强制平仓。</p><p>BlockVC创始人徐英凯在微博贴了一张图，截图显示，某一时间，美元做出入金的Coinbase Pro的BTC价格为5598.98美元，而以USDT为出入金的火币全球站，BTC价格为4451.31美元，价差达到了1000美元。</p><p>“真的是活久见，法币所和币币所可以达到价差如此之巨大，市场的无效性如此之强，在这样的市场里面要不输钱又不输币太难了。”他说。</p><p>这很有可能就是因为USDT出入金渠道出了问题，流动性缺乏，使得价格疯狂下跌。但QKL123分析师刘庆认为，不排除是交易所系统卡顿或数据卡顿造成的。</p><p>第四个原因与矿工有关，2019年以来，矿业不仅进入了集中化、专业化阶段，矿业也进入大规模金融化阶段。比如，矿工将挖出的比特币质押给第三方机构，换取USDT或法币购买矿机或建设矿场，这种加杠杆在币价稳定时风险较低。然而，此轮暴跌，当质押的比特币价格低于其质押的价格，就可能被平台强制平仓。这也加强了砸盘的力量。</p><p>第五，交易所系统性风险。这一点万卉并没有具体指明是什么。</p><p>不过，微博大VTumbleBit有提到，很多抵押借贷，包括交易所在Bitmax做对冲仓。他认为交易所拿着用户的币进行了衍生品操作。</p><p>针对这个问题，FTX COO&nbsp;Constance Wang 认为，从Bitmax最终爆仓的单子价值看，大部分是散户，当然这不能说里面完全没有机构。但不能因此就把连环爆仓的罪名加到机构身上。</p><p>徐英凯在微博进一步发文称，<strong>大家可能都明白这次的暴跌来自杠杆借贷和债务危机，但到底是谁的责任呢？从矿机产商、矿工矿场、交易所、投资人、借贷工具等等，所有人都是推动这一惨剧走到最后的一员，这是一场社会实验，这是一次集体的“合谋”。</strong></p><p></p><p><img src=\"https://img.jinse.com/3055950_image3.png\" title=\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\" alt=\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\">万卉认为，12日晚，美联储15000亿美金的流动性支持才让市场回魂了10分钟，交易日内大盘跌了近10%，其实市场并不缺钱，缺的是信心。比特币的暴跌，也是流动性危机。</p><p>FTX COO&nbsp;Constance Wang 在接受巴比特采访时分析，其实这次暴跌可以分两段，第一段大概是从9000-6500阶段，这很大原因是受大环境影响，包括美股熔断，新冠肺炎对宏观经济的影响和由此带来的恐慌情绪。第二段是6500-3800阶段，主要原因是连环爆仓。</p><p>Constance Wang 认为，<strong>连环爆仓不是一个很新奇的现象，之前就出现过，但这次当各种因素杂糅在一起，才造成了非常大的影响和恐慌</strong>。</p><p>目前，随着比特币在触及3800美元后强势反弹至5000美元左右，市场的恐慌已有所好转，然而事情就这么结束了吗？或许不是。</p><p><strong>比特币此轮暴跌开启了一个潘多拉魔盒，它不仅反映出流动性不足，它还反映出，至少在加密货币世界，系统性风险或许真的存在。</strong></p><p>比如，DeFi就首当其冲，目前，假设ETH进一步下跌，对于Maker DAO来说，它们就要像当年BitShares一样，最通过治理代币的拍卖以偿还抵押不足的不良债务。据悉，MakerDAO 在价格下跌前有超过 50 万美元的盈余，而目前是超过 400 万美元的债务。</p><p>这还是其中之一，相信因为此轮暴跌，可能还有一些连环反应将逐步暴露出来。而它们对市场又会带来什么影响，只能拭目以待。</p><p><span style=\"font-size: 20px;\"><strong>矿工蒙圈了，但很多人还在抄底、等待</strong></span></p><p>很显然，暴跌对于比特币矿业而言简直就是噩梦。币印官网显示，在0.38元一度电的情况下，除最新的蚂蚁矿机S19Pro，其它比特币矿机电费占比均超过50%。诸多主流矿机进入关机时间，其中，占据全网算力约40%的蚂蚁矿机S9已经宣告退休。</p><p>矿业大逃亡要来了吗？巴比特采访了几位矿业大咖。</p><p>矿业自媒体，比特币矿工区块链矿哥称，自己的机器除蚂蚁S9关机外，其余还没有关机。但矿场部分客户的机器已经关机了，客户要观望几天。</p><p>“<strong>我们会根据算力难度以及电价综合观察，到关机临界点了再看情况，走一步算一步，也在回笼资金，保证流动性。</strong>”他说。</p><p>他认为，目前的大环境短期内对挖矿不是很有利，但如果全球疫情能在一个月内控制住，那还会大概率在减半前有一波（上涨）。“尽量扛过去吧，这也算是黎明前的黑暗了。”</p><p>杰捷矿业CEO刘款说，暂时还没有机器关机，其中包括部分已经到关机价格的机器。“跑几天试试，坚持10天，观望一下。其它现在没有任何措施可以实时。如果没有反弹，2-3个月会死掉一大部分的人，昨天晚上很多人失眠了。“</p><p>另外，她提到，作为矿机经销商，她感慨矿机根本卖不动了，而且，<strong>现在很多人都懵了，不知道矿机买卖该出多少价格</strong>。但她说也有很多人在抄底，她就准备了一部分资金买矿机。</p><p>金山矿业创始人王栋文的情况与其他两位基本相似。他还比较担心这种暴跌会让影响到新参与者的认知或计划。而他也认为，在场内可以握好币，场外的择机参与，等未来大涨。</p><p>比特蓝鲸创始人陈雷介绍，他四个矿场约六万台矿机受到严重影响，高功耗机器已达到关机价，一些托管机器，他已按照客户要求进行了拉闸或临时调价处理，部分云算力平台客户产生客诉要处理，有一些未经历过这种大跌的客户表现得很焦虑。</p><p>“现在肯定还不是最难的时候，市场会加重担忧，比特币也有可能会进一步受到冲击，需要现金流的玩家都会比较辛苦，减半周期的叠加影响，可能会有很困难的局面，但这就是市场常态，玩家来来往往，行业在起起落落中逐步升级，风控手段丰富、现金流储备充裕、杠杆压力小的玩家会更安全一些，<strong>但换一个角度看，行业现金流紧张，要素交易萎靡的时候，可能也是危中有机的时候了。希望比特币能守住三千美元的关口。</strong>”他说。</p>', 0, '2020-03-19 20:49:20', '2020-03-19 20:49:20', 0, '[\"BTC\",\"\\u884c\\u60c5\"]', 0, 0, 2, NULL, 1, 0);

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `net_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'qki' COMMENT '主网类型',
  `decimals` int(11) NOT NULL DEFAULT 0 COMMENT '小数位数',
  `contract_address` varchar(66) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '合约地址',
  `assets_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产名称',
  `recharge_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可充值、提现，1可以，2不能',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `assets_contract_address_unique`(`contract_address`) USING BTREE,
  INDEX `assets_assets_name_index`(`assets_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for assets_logs
-- ----------------------------
DROP TABLE IF EXISTS `assets_logs`;
CREATE TABLE `assets_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `assets_id` int(10) UNSIGNED NOT NULL COMMENT '资产类型ID',
  `assets_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产类型名称',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `tx_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '交易记录id',
  `operate_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作类型',
  `amount` decimal(26, 8) NOT NULL DEFAULT 0.00000000 COMMENT '数量',
  `amount_before_change` decimal(26, 8) NOT NULL DEFAULT 0.00000000 COMMENT '变动前数量',
  `tx_hash` varchar(66) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交易hash',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `assets_logs_tx_hash_unique`(`tx_hash`) USING BTREE,
  INDEX `assets_logs_assets_id_index`(`assets_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for balances
-- ----------------------------
DROP TABLE IF EXISTS `balances`;
CREATE TABLE `balances`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `assets_id` int(10) UNSIGNED NOT NULL COMMENT '资产类型id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产名称',
  `amount` decimal(26, 8) NOT NULL COMMENT '数量',
  `freeze_amount` decimal(26, 8) NOT NULL COMMENT '冻结数量',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `balances_assets_id_uid_unique`(`assets_id`, `uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for balances_logs
-- ----------------------------
DROP TABLE IF EXISTS `balances_logs`;
CREATE TABLE `balances_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `assets_id` int(10) UNSIGNED NOT NULL COMMENT '资产类型ID',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `operate_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作类型',
  `amount` decimal(26, 8) NOT NULL DEFAULT 0.00000000 COMMENT '数量',
  `amount_before_change` decimal(26, 8) NOT NULL DEFAULT 0.00000000 COMMENT '变动前数量',
  `assets_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产类型名称',
  `tx_hash` varchar(66) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交易hash',
  `tx_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '交易记录id',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ip',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `href` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
  `r_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联内容ID(活动/文章/)',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '文章类型(默认1图片,2文章,3活动4)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'banner表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, '2020年企业战役扶持计划', '/storage/2020_03_16/5605c46f1c6a1c085967cd768aa2ad7c3315.png', 'https://www.jinse.com/dissertation/117.html', 0, 1);
INSERT INTO `banners` VALUES (2, 'A网(AEX)抵押借币改版预告,0利率来袭', '/storage/2020_03_16/e8d0acc9d32870b01bfac2ffdc739fbe6877.png', 'https://www.jinse.com/blockchain/600643.html', 0, 1);

-- ----------------------------
-- Table structure for block
-- ----------------------------
DROP TABLE IF EXISTS `block`;
CREATE TABLE `block`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `hash` varchar(66) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `block_height_unique`(`height`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for boxes
-- ----------------------------
DROP TABLE IF EXISTS `boxes`;
CREATE TABLE `boxes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `assets_id` int(11) NOT NULL COMMENT '合成的目标资产类型',
  `amount` int(11) NOT NULL COMMENT '门票数量',
  `height` int(11) NOT NULL COMMENT '区块高度',
  `color` int(11) NOT NULL COMMENT '1红色 2蓝色',
  `status` tinyint(4) NOT NULL COMMENT '0默认 1成功 2失败',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `boxes_uid_index`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for calendars
-- ----------------------------
DROP TABLE IF EXISTS `calendars`;
CREATE TABLE `calendars`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `r_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属关联ID(币种,交易所)',
  `rate` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '星级/评分',
  `good` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '利好',
  `bad` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '利空',
  `coin_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联币种ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型(默认1公告/新闻,2奖励/减产,3会议/AMA...)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '日历表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `pid` int(11) UNSIGNED NOT NULL COMMENT '上级ID',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `root_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '根ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, '政策', 0, 999, 0);
INSERT INTO `categories` VALUES (2, '行情', 0, 999, 0);
INSERT INTO `categories` VALUES (3, '专栏', 0, 999, 0);
INSERT INTO `categories` VALUES (4, '产业', 0, 999, 0);
INSERT INTO `categories` VALUES (5, '技术', 0, 999, 0);
INSERT INTO `categories` VALUES (6, '视频', 0, 999, 0);
INSERT INTO `categories` VALUES (7, '投研', 0, 999, 0);
INSERT INTO `categories` VALUES (8, '人物', 0, 999, 0);
INSERT INTO `categories` VALUES (9, '学院', 0, 999, 0);

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `article_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '我的收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '作者',
  `article_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reply_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被回复评论ID',
  `reply_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被回复的用户ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `zan` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 2, 1, '666', 0, 0, '2020-03-22 22:04:01', '2020-03-22 22:04:01', 0);
INSERT INTO `comments` VALUES (2, 3, 1, '谢谢', 1, 2, '2020-03-22 22:04:18', '2020-03-22 22:04:18', 0);
INSERT INTO `comments` VALUES (3, 2, 2, '666', 0, 0, '2020-03-22 22:04:01', '2020-03-22 22:04:01', 0);

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '系统配置信息主键',
  `param_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `param_key`(`param_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统配置信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES (1, 'SYS:DEF:CONFIG:CLOUD:STORAGE:KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', 0, '云存储配置信息');

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'faq常见问题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES (1, 'Lorem ipsum dolor sit amet', '请自行baidu,google', '2020-03-04 15:32:20', '2020-03-04 15:35:10');
INSERT INTO `faqs` VALUES (2, 'Maecenas iaculis urna eget massa viverra', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:32:35', '2020-03-04 15:32:35');
INSERT INTO `faqs` VALUES (3, 'Maecenas at urna rhoncus', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:33:29', '2020-03-04 15:33:29');
INSERT INTO `faqs` VALUES (4, 'Phasellus non sapien', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:33:43', '2020-03-04 15:33:43');
INSERT INTO `faqs` VALUES (5, 'Nam auctor velit molestie ante', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:33:58', '2020-03-04 15:33:58');
INSERT INTO `faqs` VALUES (6, 'Suspendisse imperdiet', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:34:11', '2020-03-04 15:34:11');
INSERT INTO `faqs` VALUES (7, 'Fusce at erat eu ante pulvinar egestas', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:34:24', '2020-03-04 15:34:24');
INSERT INTO `faqs` VALUES (8, 'Vivamus sed odio fermentum', '请自行查找', '2020-03-04 15:34:51', '2020-03-04 15:34:51');

-- ----------------------------
-- Table structure for fdfs
-- ----------------------------
DROP TABLE IF EXISTS `fdfs`;
CREATE TABLE `fdfs`  (
  `id` bigint(22) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '大小',
  `group_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '组名',
  `fast_file_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'fdfs_id',
  `type` tinyint(2) NULL DEFAULT NULL COMMENT '状态',
  `document_type` tinyint(2) NULL DEFAULT NULL COMMENT '文档类型',
  `create_id` bigint(22) NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'fdfs' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '默认0,可不登录(登录可查看历史反馈)',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型,默认1功能,2体验,3内容,4其他',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人/称呼',
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系方式(qq/微信/邮箱/手机号)',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '意见反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for follows
-- ----------------------------
DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `r_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '关联ID(作者/标签)',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型默认1作者,2标签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '我的关注' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for histories
-- ----------------------------
DROP TABLE IF EXISTS `histories`;
CREATE TABLE `histories`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `article_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '浏览历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hot_words
-- ----------------------------
DROP TABLE IF EXISTS `hot_words`;
CREATE TABLE `hot_words`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '热词',
  `number` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数(热门标签)',
  `weight` int(6) UNSIGNED NOT NULL DEFAULT 0 COMMENT '权重(desc倒叙,默认0)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '搜索热词表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_words
-- ----------------------------
INSERT INTO `hot_words` VALUES (1, 'BTC', 0, 0);
INSERT INTO `hot_words` VALUES (2, 'VTOKEN', 0, 0);
INSERT INTO `hot_words` VALUES (3, 'GEC', 0, 0);
INSERT INTO `hot_words` VALUES (4, 'XRP', 0, 0);
INSERT INTO `hot_words` VALUES (5, 'LINK', 0, 0);

-- ----------------------------
-- Table structure for is_reads
-- ----------------------------
DROP TABLE IF EXISTS `is_reads`;
CREATE TABLE `is_reads`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容[{notice:\'2020-03-10 10:10:01\'}]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户消息阅读记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '系统日志主键',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求参数',
  `response` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '响应',
  `ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `old` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '旧信息',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求地址',
  `action` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, 'admin', '登录', 'POST', '{\"t\":1582727349648,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"1759b768-bfe6-4867-8438-5d58f1b23ff4\",\"captcha\":\"3895\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-02-26 14:59:09\",\"token\":\"viUCKy88Y1NSeF78atYYF1rl1Oa2qeUj3fXyxsya0mmWw187qCQq5HqbHL9gInnVXhlLDICsIgx0dAqQ\",\"updateTime\":\"2020-02-26 14:29:09\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-02-26 22:29:09', '', 'http://127.0.0.1:8082/api/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (2, NULL, '退出登录', 'POST', '{\"t\":1582727561388}', '{\"msg\":\"退出成功\",\"code\":200}', '127.0.0.1', '2020-02-26 22:32:41', '', 'http://127.0.0.1:8082/api/logout', 'App\\Http\\Controllers\\Auth\\AdminLoginController@logout');
INSERT INTO `logs` VALUES (3, 'admin', '登录', 'POST', '{\"t\":1582727572515,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"41a7eb32-6c3e-4fd7-8116-b5e6c245ab43\",\"captcha\":\"6968\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-02-26 15:02:52\",\"token\":\"V1XQa1sa1wYD3H1kdxgbYnEBawZyUomVJLsVpBAqzBiR6N7x1Uz6WliW5TyTqUhxtCZx6ZeIeOGEeoVj\",\"updateTime\":\"2020-02-26 14:32:52\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-02-26 22:32:52', '', 'http://127.0.0.1:8082/api/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (4, NULL, '退出登录', 'POST', '{\"t\":1582728676445}', '{\"msg\":\"退出成功\",\"code\":200}', '127.0.0.1', '2020-02-26 22:51:16', '', 'http://127.0.0.1:8082/api/logout', 'App\\Http\\Controllers\\Auth\\AdminLoginController@logout');
INSERT INTO `logs` VALUES (5, 'admin', '登录', 'POST', '{\"t\":1582728726393,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"e3abb695-fe98-408a-890f-99159de917be\",\"captcha\":\"3324\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-02-26 15:22:06\",\"token\":\"RUBGFeT9xDfwQeEYXYNtwScAi55UQOJvR1slAwzzvIuGZdKT9nRTeLBJbPW07ScW7zC1bdWfC8f4OZ9l\",\"updateTime\":\"2020-02-26 14:52:06\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-02-26 22:52:06', '', 'http://127.0.0.1:8082/api/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (6, 'admin', '新增管理员', 'POST', '{\"t\":1582728781033,\"id\":null,\"name\":\"test8\",\"password\":\"123456\",\"email\":\"54@qq.com\",\"mobile\":\"13996609880\",\"status\":1,\"roleIdList\":[5]}', '{\"result\":{\"name\":\"test8\",\"email\":\"54@qq.com\",\"mobile\":\"13996609880\",\"status\":1,\"create_admin_id\":1,\"update_time\":\"2020-02-26 14:53:01\",\"create_time\":\"2020-02-26 14:53:01\",\"id\":9},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-02-26 22:53:01', '', 'http://127.0.0.1:8082/api/admin', 'App\\Http\\Controllers\\AdminController@save');
INSERT INTO `logs` VALUES (7, 'admin', '删除角色', 'DELETE', '[5]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-02-26 22:56:25', '', 'http://127.0.0.1:8082/api/roles', 'App\\Http\\Controllers\\RoleController@delete');
INSERT INTO `logs` VALUES (8, 'admin', '登录', 'POST', '{\"t\":1583150267623,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"ba0d5a2a-1f39-4671-867e-dbf1e5077eea\",\"captcha\":\"5806\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-02 12:27:47\",\"token\":\"nnoFAffgZm0C8dA8mudW4bAF61Nl4dtTbaZP53c9QFx8idAfTLcLh5o2egkurS90YllKnb9fmyGtB52b\",\"updateTime\":\"2020-03-02 11:57:47\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-02 19:57:47', '', 'http://127.0.0.1:8089/api/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (9, 'admin', '登录', 'POST', '{\"t\":1583736378765,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"c6439e5a-6b3b-491f-8656-04df314ba55f\",\"captcha\":\"0538\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-09 07:16:20\",\"token\":\"LpVJYQqGeIHQQHkO8GOx9lmw4FIfH62MV8yYnepffMyzi88Q6DyQKaEZHf1OhEPlrGChqivrQscAafKu\",\"updateTime\":\"2020-03-09 06:46:20\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:46:20', '', 'http://127.0.0.1:8082/api/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (10, 'admin', '修改菜单', 'PUT', '{\"t\":1583736408285,\"id\":11,\"type\":0,\"name\":\"监控\\/文档\",\"parent_id\":0,\"url\":null,\"perms\":null,\"orders\":999,\"icon\":\"system\"}', '{\"result\":{\"id\":11,\"parent_id\":0,\"name\":\"监控\\/文档\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"system\",\"orders\":999,\"parent_name\":\"一级菜单\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:46:48', '', 'http://127.0.0.1:8082/api/menus/11', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (11, 'admin', '删除菜单', 'DELETE', '[31]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:47:04', '', 'http://127.0.0.1:8082/api/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (12, 'admin', '修改菜单', 'PUT', '{\"t\":1583736432331,\"id\":12,\"type\":0,\"name\":\"开发工具\",\"parent_id\":0,\"url\":null,\"perms\":null,\"orders\":999,\"icon\":\"system\"}', '{\"result\":{\"id\":12,\"parent_id\":0,\"name\":\"开发工具\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"system\",\"orders\":999,\"parent_name\":\"一级菜单\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:47:12', '', 'http://127.0.0.1:8082/api/menus/12', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (13, 'admin', '修改菜单', 'PUT', '{\"t\":1583736445803,\"id\":33,\"type\":0,\"name\":\"业务管理\",\"parent_id\":0,\"url\":null,\"perms\":null,\"orders\":2,\"icon\":\"zonghe\"}', '{\"result\":{\"id\":33,\"parent_id\":0,\"name\":\"业务管理\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"zonghe\",\"orders\":2,\"parent_name\":\"一级菜单\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:47:26', '', 'http://127.0.0.1:8082/api/menus/33', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (14, 'admin', '修改菜单', 'PUT', '{\"t\":1583736476772,\"id\":37,\"type\":1,\"name\":\"友链管理\",\"parent_id\":33,\"url\":\"web\\/partner\",\"perms\":\"web:partner:list,web:partner:info,web:partner:save,web:partner:update,web:partner:delete\",\"orders\":999,\"icon\":\"geren\"}', '{\"result\":{\"id\":37,\"parent_id\":33,\"name\":\"友链管理\",\"url\":\"web\\/partner\",\"perms\":\"web:partner:list,web:partner:info,web:partner:save,web:partner:update,web:partner:delete\",\"type\":1,\"icon\":\"geren\",\"orders\":999,\"parent_name\":\"业务管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:47:57', '', 'http://127.0.0.1:8082/api/menus/37', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (15, 'admin', '删除友链', 'DELETE', '[5,6,7,8,9,10,11]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:59:01', '', 'http://127.0.0.1:8082/api/admin/partners', 'App\\Http\\Controllers\\PartnerController@delete');
INSERT INTO `logs` VALUES (16, 'admin', '删除友链', 'DELETE', '[14,15,16,17]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-09 14:59:57', '', 'http://127.0.0.1:8082/api/admin/partners', 'App\\Http\\Controllers\\PartnerController@delete');
INSERT INTO `logs` VALUES (17, 'admin', '登录', 'POST', '{\"t\":1584338331899,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"198d1d4d-a064-45ec-8d30-523936aceec8\",\"captcha\":\"9999\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-16 06:28:52\",\"token\":\"KjTvT3G9ElsfuCcdlgiZVDstMw8pyeRCWJ1VudsZDm2VTIWnqyR94xrbKjgIbhXAQQvNMJW90R7xMjLq\",\"updateTime\":\"2020-03-16 05:58:52\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 13:58:52', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (18, 'admin', '新增菜单', 'POST', '{\"t\":1584339945660,\"type\":0,\"name\":\"内容管理\",\"parent_id\":33,\"url\":null,\"perms\":null,\"orders\":1,\"icon\":\"bianji\"}', '{\"result\":{\"parent_id\":33,\"name\":\"内容管理\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"bianji\",\"orders\":1,\"id\":43,\"parent_name\":\"业务管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:25:46', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (19, 'admin', '删除菜单', 'DELETE', '[41]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:26:55', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (20, 'admin', '删除菜单', 'DELETE', '[42]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:27:03', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (21, 'admin', '新增菜单', 'POST', '{\"t\":1584340079172,\"type\":1,\"name\":\"文章管理\",\"parent_id\":43,\"url\":\"web\\/article\",\"perms\":null,\"orders\":1,\"icon\":\"log\"}', '{\"result\":{\"parent_id\":43,\"name\":\"文章管理\",\"url\":\"web\\/article\",\"perms\":null,\"type\":1,\"icon\":\"log\",\"orders\":1,\"id\":44,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:27:59', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (22, 'admin', '新增菜单', 'POST', '{\"t\":1584340128963,\"type\":0,\"name\":\"用户管理\",\"parent_id\":33,\"url\":null,\"perms\":null,\"orders\":2,\"icon\":\"admin\"}', '{\"result\":{\"parent_id\":33,\"name\":\"用户管理\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"admin\",\"orders\":2,\"id\":45,\"parent_name\":\"业务管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:28:49', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (23, 'admin', '新增菜单', 'POST', '{\"t\":1584340175732,\"type\":1,\"name\":\"会员列表\",\"parent_id\":45,\"url\":\"web\\/user\",\"perms\":null,\"orders\":1,\"icon\":\"admin\"}', '{\"result\":{\"parent_id\":45,\"name\":\"会员列表\",\"url\":\"web\\/user\",\"perms\":null,\"type\":1,\"icon\":\"admin\",\"orders\":1,\"id\":46,\"parent_name\":\"用户管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:29:35', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (24, 'admin', '新增菜单', 'POST', '{\"t\":1584340220354,\"type\":0,\"name\":\"网站管理\",\"parent_id\":33,\"url\":null,\"perms\":null,\"orders\":1,\"icon\":\"config\"}', '{\"result\":{\"parent_id\":33,\"name\":\"网站管理\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"config\",\"orders\":1,\"id\":47,\"parent_name\":\"业务管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:30:20', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (25, 'admin', '修改菜单', 'PUT', '{\"t\":1584340240874,\"id\":43,\"type\":0,\"name\":\"内容管理\",\"parent_id\":33,\"url\":null,\"perms\":null,\"orders\":3,\"icon\":\"bianji\"}', '{\"result\":{\"id\":43,\"parent_id\":33,\"name\":\"内容管理\",\"url\":null,\"perms\":null,\"type\":0,\"icon\":\"bianji\",\"orders\":3,\"parent_name\":\"业务管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:30:41', '', 'http://127.0.0.1:8181/api/admin/menus/43', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (26, 'admin', '新增菜单', 'POST', '{\"t\":1584340265795,\"type\":1,\"name\":\"网站信息\",\"parent_id\":47,\"url\":\"web\\/info\",\"perms\":null,\"orders\":1,\"icon\":\"shezhi\"}', '{\"result\":{\"parent_id\":47,\"name\":\"网站信息\",\"url\":\"web\\/info\",\"perms\":null,\"type\":1,\"icon\":\"shezhi\",\"orders\":1,\"id\":48,\"parent_name\":\"网站管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:31:06', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (27, 'admin', '新增菜单', 'POST', '{\"t\":1584340319290,\"type\":1,\"name\":\"Banner管理\",\"parent_id\":47,\"url\":\"web\\/banner\",\"perms\":null,\"orders\":999,\"icon\":\"zhedie\"}', '{\"result\":{\"parent_id\":47,\"name\":\"Banner管理\",\"url\":\"web\\/banner\",\"perms\":null,\"type\":1,\"icon\":\"zhedie\",\"orders\":999,\"id\":49,\"parent_name\":\"网站管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:31:59', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (28, 'admin', '删除菜单', 'DELETE', '[11]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:32:26', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (29, 'admin', '删除菜单', 'DELETE', '[12]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:32:33', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (30, 'admin', '删除菜单', 'DELETE', '[5]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:11', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (31, 'admin', '删除菜单', 'DELETE', '[6]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:15', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (32, 'admin', '删除菜单', 'DELETE', '[7]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:19', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (33, 'admin', '删除菜单', 'DELETE', '[8]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:22', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (34, 'admin', '删除菜单', 'DELETE', '[13]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:25', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (35, 'admin', '删除菜单', 'DELETE', '[10]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:27', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (36, 'admin', '删除菜单', 'DELETE', '[9]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:34:29', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (37, 'admin', '新增菜单', 'POST', '{\"t\":1584340541937,\"type\":1,\"name\":\"分类管理\",\"parent_id\":43,\"url\":\"web\\/category\",\"perms\":null,\"orders\":999,\"icon\":\"menu\"}', '{\"result\":{\"parent_id\":43,\"name\":\"分类管理\",\"url\":\"web\\/category\",\"perms\":null,\"type\":1,\"icon\":\"menu\",\"orders\":999,\"id\":50,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:35:42', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (38, 'admin', '新增菜单', 'POST', '{\"t\":1584340567785,\"type\":1,\"name\":\"标签管理\",\"parent_id\":43,\"url\":\"web\\/tag\",\"perms\":null,\"orders\":999,\"icon\":\"zonghe\"}', '{\"result\":{\"parent_id\":43,\"name\":\"标签管理\",\"url\":\"web\\/tag\",\"perms\":null,\"type\":1,\"icon\":\"zonghe\",\"orders\":999,\"id\":51,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:36:08', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (39, 'admin', '新增菜单', 'POST', '{\"t\":1584340697369,\"type\":1,\"name\":\"意见反馈\",\"parent_id\":47,\"url\":\"web\\/feedback\",\"perms\":null,\"orders\":999,\"icon\":\"pinglun\"}', '{\"result\":{\"parent_id\":47,\"name\":\"意见反馈\",\"url\":\"web\\/feedback\",\"perms\":null,\"type\":1,\"icon\":\"pinglun\",\"orders\":999,\"id\":52,\"parent_name\":\"网站管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:38:17', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (40, 'admin', '新增菜单', 'POST', '{\"t\":1584340836328,\"type\":1,\"name\":\"实名认证\",\"parent_id\":45,\"url\":\"web\\/user_verify\",\"perms\":null,\"orders\":1,\"icon\":\"role\"}', '{\"result\":{\"parent_id\":45,\"name\":\"实名认证\",\"url\":\"web\\/user_verify\",\"perms\":null,\"type\":1,\"icon\":\"role\",\"orders\":1,\"id\":53,\"parent_name\":\"用户管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:40:36', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (41, 'admin', '修改菜单', 'PUT', '{\"t\":1584340848736,\"id\":53,\"type\":1,\"name\":\"实名认证\",\"parent_id\":45,\"url\":\"web\\/user_verify\",\"perms\":null,\"orders\":999,\"icon\":\"role\"}', '{\"result\":{\"id\":53,\"parent_id\":45,\"name\":\"实名认证\",\"url\":\"web\\/user_verify\",\"perms\":null,\"type\":1,\"icon\":\"role\",\"orders\":999,\"parent_name\":\"用户管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:40:48', '', 'http://127.0.0.1:8181/api/admin/menus/53', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (42, 'admin', '新增菜单', 'POST', '{\"t\":1584340971096,\"type\":1,\"name\":\"专题管理\",\"parent_id\":43,\"url\":\"web\\/subject\",\"perms\":null,\"orders\":999,\"icon\":\"zonghe\"}', '{\"result\":{\"parent_id\":43,\"name\":\"专题管理\",\"url\":\"web\\/subject\",\"perms\":null,\"type\":1,\"icon\":\"zonghe\",\"orders\":999,\"id\":54,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:42:51', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (43, 'admin', '新增菜单', 'POST', '{\"t\":1584341015935,\"type\":1,\"name\":\"热词管理\",\"parent_id\":43,\"url\":\"web\\/hot_word\",\"perms\":null,\"orders\":999,\"icon\":\"sousuo\"}', '{\"result\":{\"parent_id\":43,\"name\":\"热词管理\",\"url\":\"web\\/hot_word\",\"perms\":null,\"type\":1,\"icon\":\"sousuo\",\"orders\":999,\"id\":55,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:43:36', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (44, 'admin', '修改菜单', 'PUT', '{\"t\":1584341197127,\"id\":54,\"type\":1,\"name\":\"专题管理\",\"parent_id\":43,\"url\":\"web\\/subject\",\"perms\":null,\"orders\":999,\"icon\":\"daohang\"}', '{\"result\":{\"id\":54,\"parent_id\":43,\"name\":\"专题管理\",\"url\":\"web\\/subject\",\"perms\":null,\"type\":1,\"icon\":\"daohang\",\"orders\":999,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:46:37', '', 'http://127.0.0.1:8181/api/admin/menus/54', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (45, 'admin', '删除菜单', 'DELETE', '[37]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:56:50', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@delete');
INSERT INTO `logs` VALUES (46, '', '退出登录', 'POST', '{\"t\":1584341825552}', '{\"msg\":\"退出成功\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:05', '', 'http://127.0.0.1:8181/api/admin/logout', 'App\\Http\\Controllers\\Auth\\AdminLoginController@logout');
INSERT INTO `logs` VALUES (47, 'test', '登录', 'POST', '{\"t\":1584341831036,\"name\":\"test\",\"password\":\"123456\",\"uuid\":\"383b190e-60d0-43f8-85a4-5706128ab73e\",\"captcha\":\"1843\"}', '{\"result\":{\"adminId\":2,\"expire\":1800,\"expireTime\":\"2020-03-16 07:27:11\",\"token\":\"fw5n1cInS84bB6jLQV2mTq1XtZtMPZ6izqJurr2655KXBGSuCXTEQaTWzxy9MiL9mWAoR0YtOCY6EIDo\",\"updateTime\":\"2020-03-16 06:57:11\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:11', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (48, '', '退出登录', 'POST', '{\"t\":1584341840111}', '{\"msg\":\"退出成功\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:20', '', 'http://127.0.0.1:8181/api/admin/logout', 'App\\Http\\Controllers\\Auth\\AdminLoginController@logout');
INSERT INTO `logs` VALUES (49, 'admin', '登录', 'POST', '{\"t\":1584341844413,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"05b2c60f-a138-456c-89a3-0237b115378b\",\"captcha\":\"0268\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-16 07:27:24\",\"token\":\"M4M2hPvjkqmo4zAasf79dbaHkwnC8V8J3v0ii42NloxIO13nvAphQDKyFY7l44hi6xWQOJCuxqY8KPC0\",\"updateTime\":\"2020-03-16 06:57:24\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:24', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (50, 'admin', '修改管理员', 'PUT', '{\"t\":1584341851910,\"id\":2,\"name\":\"test\",\"password\":null,\"email\":\"12@qq.com\",\"mobile\":\"13996609880\",\"status\":1,\"roleIdList\":[2]}', '{\"result\":{\"id\":2,\"name\":\"test\",\"sex\":1,\"email\":\"12@qq.com\",\"mobile\":\"13996609880\",\"status\":1,\"create_admin_id\":1,\"create_time\":\"2020-02-22 09:13:36\",\"update_time\":\"2020-02-22 09:45:00\",\"remake\":null},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:32', '', 'http://127.0.0.1:8181/api/admin/managers/2', 'App\\Http\\Controllers\\ManagerController@update');
INSERT INTO `logs` VALUES (51, 'admin', '修改角色', 'PUT', '{\"t\":1584341865196,\"id\":2,\"role_name\":\"后台管理员\",\"remark\":null,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,27,30,32,29,47,48,49,52,-666666,33]}', '{\"result\":{\"id\":2,\"role_name\":\"后台管理员\",\"remark\":null,\"create_admin_id\":1,\"create_time\":\"2020-02-22 13:49:52\",\"update_admin_id\":1,\"update_time\":\"2020-03-16 06:57:45\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:45', '', 'http://127.0.0.1:8181/api/admin/roles/2', 'App\\Http\\Controllers\\RoleController@update');
INSERT INTO `logs` VALUES (52, '', '退出登录', 'POST', '{\"t\":1584341869406}', '{\"msg\":\"退出成功\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:49', '', 'http://127.0.0.1:8181/api/admin/logout', 'App\\Http\\Controllers\\Auth\\AdminLoginController@logout');
INSERT INTO `logs` VALUES (53, 'test', '登录', 'POST', '{\"t\":1584341874860,\"name\":\"test\",\"password\":\"123456\",\"uuid\":\"75d86796-0287-4290-807f-2db3d305fdae\",\"captcha\":\"3963\"}', '{\"result\":{\"adminId\":2,\"expire\":1800,\"expireTime\":\"2020-03-16 07:27:55\",\"token\":\"VsC0iaGPDOv0tGlAvJQG82uTQQYcCIZpK3onXxR9xEwy4gHdCtAFlVLg8espr6qXOCsmqTJYNy8aMtcg\",\"updateTime\":\"2020-03-16 06:57:55\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:57:55', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (54, 'test', '修改角色', 'PUT', '{\"t\":1584341892428,\"id\":2,\"role_name\":\"后台管理员\",\"remark\":null,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,27,30,32,29,47,48,49,52,46,44,-666666,33,45,43]}', '{\"result\":{\"id\":2,\"role_name\":\"后台管理员\",\"remark\":null,\"create_admin_id\":1,\"create_time\":\"2020-02-22 13:49:52\",\"update_admin_id\":2,\"update_time\":\"2020-03-16 06:58:12\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:58:12', '', 'http://127.0.0.1:8181/api/admin/roles/2', 'App\\Http\\Controllers\\RoleController@update');
INSERT INTO `logs` VALUES (55, 'test', '修改角色', 'PUT', '{\"t\":1584341913224,\"id\":2,\"role_name\":\"后台管理员\",\"remark\":null,\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,27,30,32,29,33,47,48,49,52,45,46,53,43,44,50,51,54,55,-666666]}', '{\"result\":{\"id\":2,\"role_name\":\"后台管理员\",\"remark\":null,\"create_admin_id\":1,\"create_time\":\"2020-02-22 13:49:52\",\"update_admin_id\":2,\"update_time\":\"2020-03-16 06:58:12\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 14:58:33', '', 'http://127.0.0.1:8181/api/admin/roles/2', 'App\\Http\\Controllers\\RoleController@update');
INSERT INTO `logs` VALUES (56, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/27bd029f6eedd9fd5a03986c8427a6244251.png\",\"src\":\"http:\\/\\/localhost\\/storage\\/2020_03_16\\/27bd029f6eedd9fd5a03986c8427a6244251.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:04:58', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (57, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/bc7ba4b76463d609463129676d5e895c7660.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/bc7ba4b76463d609463129676d5e895c7660.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:05:36', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (58, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/daa8ac2a285c540248e13bc469349ce93448.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/daa8ac2a285c540248e13bc469349ce93448.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:15:24', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (59, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:19:50', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (60, 'test', '新增banner', 'POST', '{\"t\":1584350391948,\"id\":null,\"name\":\"2020年企业战役扶持计划\",\"type\":\"1\",\"href\":\"https:\\/\\/www.jinse.com\\/dissertation\\/117.html\",\"img\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\"}', '{\"result\":{\"name\":\"2020年企业战役扶持计划\",\"img\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"href\":\"https:\\/\\/www.jinse.com\\/dissertation\\/117.html\",\"id\":1,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"type_name\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:19:52', '', 'http://127.0.0.1:8181/api/admin/banners', 'App\\Http\\Controllers\\BannerController@save');
INSERT INTO `logs` VALUES (61, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/e8d0acc9d32870b01bfac2ffdc739fbe6877.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/e8d0acc9d32870b01bfac2ffdc739fbe6877.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:24:14', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (62, 'test', '新增banner', 'POST', '{\"t\":1584350655715,\"id\":null,\"name\":\"A网(AEX)抵押借币改版预告,0利率来袭\",\"type\":\"1\",\"href\":\"https:\\/\\/www.jinse.com\\/blockchain\\/600643.html\",\"img\":\"\\/storage\\/2020_03_16\\/e8d0acc9d32870b01bfac2ffdc739fbe6877.png\"}', '{\"result\":{\"name\":\"A网(AEX)抵押借币改版预告,0利率来袭\",\"img\":\"\\/storage\\/2020_03_16\\/e8d0acc9d32870b01bfac2ffdc739fbe6877.png\",\"href\":\"https:\\/\\/www.jinse.com\\/blockchain\\/600643.html\",\"id\":2,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/e8d0acc9d32870b01bfac2ffdc739fbe6877.png\",\"type_name\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:24:15', '', 'http://127.0.0.1:8181/api/admin/banners', 'App\\Http\\Controllers\\BannerController@save');
INSERT INTO `logs` VALUES (63, 'test', '修改新增banner', 'PUT', '{\"t\":1584350839843,\"id\":1,\"name\":\"2020年企业战役扶持计划\",\"type\":\"2\",\"href\":\"https:\\/\\/www.jinse.com\\/dissertation\\/117.html\",\"img\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\"}', '{\"result\":{\"id\":1,\"name\":\"2020年企业战役扶持计划\",\"img\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"href\":\"https:\\/\\/www.jinse.com\\/dissertation\\/117.html\",\"r_id\":0,\"type\":\"2\",\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"type_name\":\"文章\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:27:20', '', 'http://127.0.0.1:8181/api/admin/banners/1', 'App\\Http\\Controllers\\BannerController@update');
INSERT INTO `logs` VALUES (64, 'test', '修改新增banner', 'PUT', '{\"t\":1584350852891,\"id\":1,\"name\":\"2020年企业战役扶持计划\",\"type\":\"1\",\"href\":\"https:\\/\\/www.jinse.com\\/dissertation\\/117.html\",\"img\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\"}', '{\"result\":{\"id\":1,\"name\":\"2020年企业战役扶持计划\",\"img\":\"\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"href\":\"https:\\/\\/www.jinse.com\\/dissertation\\/117.html\",\"r_id\":0,\"type\":\"1\",\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/5605c46f1c6a1c085967cd768aa2ad7c3315.png\",\"type_name\":\"图片\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 17:27:33', '', 'http://127.0.0.1:8181/api/admin/banners/1', 'App\\Http\\Controllers\\BannerController@update');
INSERT INTO `logs` VALUES (65, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/1a1d8d4dc762a89d186ade74df51be662100.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/1a1d8d4dc762a89d186ade74df51be662100.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 19:15:33', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (66, 'test', '新增会员', 'POST', '{\"t\":1584357531578,\"id\":null,\"href\":null}', '{\"msg\":\"密码长度为6到20位\",\"code\":404}', '127.0.0.1', '2020-03-16 19:18:51', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (67, 'test', '新增会员', 'POST', '{\"t\":1584357909168,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"注册失败\",\"code\":404}', '127.0.0.1', '2020-03-16 19:25:09', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (68, 'test', '新增会员', 'POST', '{\"t\":1584357970071,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"2222\",\"code\":404}', '127.0.0.1', '2020-03-16 19:26:10', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (69, 'test', '新增会员', 'POST', '{\"t\":1584357980431,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'avatar\' cannot be null (SQL: insert into `users` (`username`, `nickname`, `avatar`, `status`, `phone`, `updated_at`, `created_at`) values (bldd, 保罗大帝, ?, 1, ?, 2020-03-16 11:26:20, 2020-03-16 11:26:20))\",\"code\":404}', '127.0.0.1', '2020-03-16 19:26:20', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (70, 'test', '新增会员', 'POST', '{\"t\":1584358017576,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'avatar\' cannot be null (SQL: insert into `users` (`username`, `nickname`, `avatar`, `status`, `phone`, `updated_at`, `created_at`) values (bldd, 保罗大帝, ?, 1, ?, 2020-03-16 11:26:57, 2020-03-16 11:26:57))\",\"code\":404}', '127.0.0.1', '2020-03-16 19:26:57', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (71, 'test', '新增会员', 'POST', '{\"t\":1584358081375,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'phone\' cannot be null (SQL: insert into `users` (`username`, `nickname`, `avatar`, `status`, `phone`, `updated_at`, `created_at`) values (bldd, 保罗大帝, ?, 1, ?, 2020-03-16 11:28:01, 2020-03-16 11:28:01))\",\"code\":404}', '127.0.0.1', '2020-03-16 19:28:01', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (72, 'test', '新增会员', 'POST', '{\"t\":1584358093567,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"SQLSTATE[HY000]: General error: 1364 Field \'salt\' doesn\'t have a default value (SQL: insert into `users` (`username`, `nickname`, `avatar`, `status`, `phone`, `updated_at`, `created_at`) values (bldd, 保罗大帝, ?, 1, ?, 2020-03-16 11:28:13, 2020-03-16 11:28:13))\",\"code\":404}', '127.0.0.1', '2020-03-16 19:28:13', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (73, 'test', '新增会员', 'POST', '{\"t\":1584358196422,\"id\":null,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"注册成功\",\"code\":200}', '127.0.0.1', '2020-03-16 19:29:56', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (74, 'test', '修改会员', 'PUT', '{\"t\":1584359829137,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":2,\"password\":null,\"password2\":null,\"phone\":null}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 19:57:09', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (75, 'test', '修改会员', 'PUT', '{\"t\":1584359860721,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"12312\",\"password2\":\"12312\",\"phone\":null}', '{\"msg\":\"密码长度为6到20位\",\"code\":404}', '127.0.0.1', '2020-03-16 19:57:41', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (76, 'test', '修改会员', 'PUT', '{\"t\":1584359869872,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":\"123123\",\"password2\":\"123123\",\"phone\":null}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 19:57:50', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (77, 'test', '修改会员', 'PUT', '{\"t\":1584359975176,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":null,\"password2\":null,\"phone\":null}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 19:59:35', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (78, 'test', '修改会员', 'PUT', '{\"t\":1584360511639,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:08:31', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (79, 'test', '修改会员', 'PUT', '{\"t\":1584360740389,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":null,\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:12:20', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (80, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/5cfcba7155526c609d87f53fe18280d5836.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/5cfcba7155526c609d87f53fe18280d5836.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:12:28', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (81, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/d0db36c1b6c4672eda3f48a04a3f06b83520.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/d0db36c1b6c4672eda3f48a04a3f06b83520.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:13:04', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (82, 'test', '修改会员', 'PUT', '{\"t\":1584360785850,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":\"\\/storage\\/2020_03_16\\/d0db36c1b6c4672eda3f48a04a3f06b83520.png\",\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:13:06', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (83, 'test', '修改会员', 'PUT', '{\"t\":1584360799932,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":\"\\/storage\\/2020_03_16\\/d0db36c1b6c4672eda3f48a04a3f06b83520.png\",\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:13:20', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (84, 'test', '新增会员', 'POST', '{\"t\":1584360852940,\"id\":null,\"username\":\"ziye\",\"nickname\":\"紫夜\",\"avatar\":null,\"status\":1,\"password\":\"123123\",\"password2\":\"123123\",\"phone\":\"13996609880\"}', '{\"msg\":\"手机号已存在\",\"code\":404}', '127.0.0.1', '2020-03-16 20:14:13', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (85, 'test', '新增会员', 'POST', '{\"t\":1584360877219,\"id\":null,\"username\":\"ziye\",\"nickname\":\"紫夜\",\"avatar\":null,\"status\":1,\"password\":\"123123\",\"password2\":\"123123\",\"phone\":\"13996609881\"}', '{\"msg\":\"注册成功\",\"code\":200}', '127.0.0.1', '2020-03-16 20:14:37', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (86, 'test', '修改会员', 'PUT', '{\"t\":1584360884563,\"id\":2,\"username\":\"ziye\",\"nickname\":\"紫夜\",\"avatar\":null,\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"msg\":\"修改失败\",\"code\":404}', '127.0.0.1', '2020-03-16 20:14:44', '', 'http://127.0.0.1:8181/api/admin/users/2', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (87, 'test', '修改会员', 'PUT', '{\"t\":1584360889347,\"id\":2,\"username\":\"ziye\",\"nickname\":\"紫夜\",\"avatar\":null,\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609881\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:14:49', '', 'http://127.0.0.1:8181/api/admin/users/2', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (88, 'test', '修改会员', 'PUT', '{\"t\":1584360918987,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":\"\\/storage\\/2020_03_16\\/d0db36c1b6c4672eda3f48a04a3f06b83520.png\",\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13886609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:15:19', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (89, 'test', '修改会员', 'PUT', '{\"t\":1584360924949,\"id\":2,\"username\":\"ziye\",\"nickname\":\"紫夜\",\"avatar\":null,\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:15:25', '', 'http://127.0.0.1:8181/api/admin/users/2', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (90, 'test', '修改会员', 'PUT', '{\"t\":1584361210989,\"id\":1,\"username\":\"bldd\",\"nickname\":\"保罗大帝\",\"avatar\":\"\\/storage\\/2020_03_16\\/d0db36c1b6c4672eda3f48a04a3f06b83520.png\",\"status\":2,\"password\":null,\"password2\":null,\"phone\":\"13886609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:20:11', '', 'http://127.0.0.1:8181/api/admin/users/1', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (91, 'test', '新增标签', 'POST', '{\"t\":1584362034760,\"id\":null,\"name\":\"物联网\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"物联网\",\"number\":0,\"weight\":0,\"id\":1},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:33:55', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (92, 'test', '新增标签', 'POST', '{\"t\":1584362052415,\"id\":null,\"name\":\"ETH\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"ETH\",\"number\":0,\"weight\":0,\"id\":2},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:34:12', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (93, 'test', '新增标签', 'POST', '{\"t\":1584362109856,\"id\":null,\"name\":\"游戏\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"游戏\",\"number\":0,\"weight\":0,\"id\":3},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:35:10', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (94, 'test', '新增标签', 'POST', '{\"t\":1584362269103,\"id\":null,\"name\":\"火币\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"火币\",\"number\":0,\"weight\":0,\"id\":4},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:37:49', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (95, 'test', '新增标签', 'POST', '{\"t\":1584362326207,\"id\":null,\"name\":\"挖矿\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"挖矿\",\"number\":0,\"weight\":0,\"id\":5},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:38:46', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (96, 'test', '新增标签', 'POST', '{\"t\":1584362340918,\"id\":null,\"name\":\"NEO\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"NEO\",\"number\":0,\"weight\":0,\"id\":6},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:39:01', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (97, 'test', '新增标签', 'POST', '{\"t\":1584362359048,\"id\":null,\"name\":\"EOS\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"EOS\",\"number\":0,\"weight\":0,\"id\":7},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:39:19', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (98, 'test', '新增标签', 'POST', '{\"t\":1584362419774,\"id\":null,\"name\":\"BCH\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"BCH\",\"number\":0,\"weight\":0,\"id\":8},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:40:20', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (99, 'test', '新增标签', 'POST', '{\"t\":1584362488134,\"id\":null,\"name\":\"BM\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"BM\",\"number\":0,\"weight\":0,\"id\":9},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:41:28', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (100, 'test', '新增标签', 'POST', '{\"t\":1584362496134,\"id\":null,\"name\":\"BCH\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"BCH\",\"number\":0,\"weight\":0,\"id\":10},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:41:36', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (101, 'test', '新增标签', 'POST', '{\"t\":1584362641933,\"id\":null,\"name\":\"USDT\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"USDT\",\"number\":0,\"weight\":0,\"id\":11},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:44:02', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (102, 'test', '新增标签', 'POST', '{\"t\":1584362650365,\"id\":null,\"name\":\"ADA\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"ADA\",\"number\":0,\"weight\":0,\"id\":12},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:44:10', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (103, 'test', '新增标签', 'POST', '{\"t\":1584362664677,\"id\":null,\"name\":\"ETC\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"ETC\",\"number\":0,\"weight\":0,\"id\":13},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:44:24', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (104, 'test', '新增标签', 'POST', '{\"t\":1584362682573,\"id\":null,\"name\":\"平台币\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"平台币\",\"number\":0,\"weight\":0,\"id\":14},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:44:42', '', 'http://127.0.0.1:8181/api/admin/tags', 'App\\Http\\Controllers\\TagController@save');
INSERT INTO `logs` VALUES (105, 'test', '新增热词', 'POST', '{\"t\":1584362941829,\"id\":null,\"name\":\"BTC\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"BTC\",\"number\":0,\"weight\":0,\"id\":1},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:49:02', '', 'http://127.0.0.1:8181/api/admin/hot_words', 'App\\Http\\Controllers\\HotWordController@save');
INSERT INTO `logs` VALUES (106, 'test', '新增热词', 'POST', '{\"t\":1584362955100,\"id\":null,\"name\":\"VTOKEN\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"VTOKEN\",\"number\":0,\"weight\":0,\"id\":2},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:49:15', '', 'http://127.0.0.1:8181/api/admin/hot_words', 'App\\Http\\Controllers\\HotWordController@save');
INSERT INTO `logs` VALUES (107, 'test', '新增热词', 'POST', '{\"t\":1584362964748,\"id\":null,\"name\":\"GEC\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"GEC\",\"number\":0,\"weight\":0,\"id\":3},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:49:25', '', 'http://127.0.0.1:8181/api/admin/hot_words', 'App\\Http\\Controllers\\HotWordController@save');
INSERT INTO `logs` VALUES (108, 'test', '新增热词', 'POST', '{\"t\":1584362970276,\"id\":null,\"name\":\"XRP\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"XRP\",\"number\":0,\"weight\":0,\"id\":4},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:49:30', '', 'http://127.0.0.1:8181/api/admin/hot_words', 'App\\Http\\Controllers\\HotWordController@save');
INSERT INTO `logs` VALUES (109, 'test', '新增热词', 'POST', '{\"t\":1584362977316,\"id\":null,\"name\":\"LINK\",\"number\":0,\"weight\":0}', '{\"result\":{\"name\":\"LINK\",\"number\":0,\"weight\":0,\"id\":5},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 20:49:37', '', 'http://127.0.0.1:8181/api/admin/hot_words', 'App\\Http\\Controllers\\HotWordController@save');
INSERT INTO `logs` VALUES (110, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/03c4d093452f07f22514dd200ffbf9cc6116.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/03c4d093452f07f22514dd200ffbf9cc6116.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-16 23:53:51', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (111, '', '上传图片', 'POST', '{\"file\":{}}', '{\"msg\":\"上传失败\",\"code\":404}', '127.0.0.1', '2020-03-17 00:37:05', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (112, '', '上传图片', 'POST', '{\"file\":{}}', '{\"msg\":\"上传失败\",\"code\":404}', '127.0.0.1', '2020-03-17 00:50:47', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (113, '', '上传图片', 'POST', '{\"type\":\"video\",\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/e048106741b6f0bbdaa0bad43e2d72c32053.mp4\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/e048106741b6f0bbdaa0bad43e2d72c32053.mp4\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 00:51:57', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (114, 'test', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/68b5b42e99d36b2566c4600ba26553311337.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/68b5b42e99d36b2566c4600ba26553311337.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 02:23:32', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (115, 'test', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/c3bd2fd091b327153ff95808d0dc296f4650.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/c3bd2fd091b327153ff95808d0dc296f4650.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 02:24:11', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (116, 'test', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_16\\/74784a7ad1cd225d9ad6261ee8adc4c0336.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_16\\/74784a7ad1cd225d9ad6261ee8adc4c0336.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 02:44:45', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (117, 'admin', '登录', 'POST', '{\"t\":1584441614480,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"2f7f1afd-e21d-4218-82cc-fa3d00014018\",\"captcha\":\"1955\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-17 11:10:15\",\"token\":\"m7fc5x1TluekVnKA6sphSePRtdxAW3XttM6pQEDqL0bXkCMa7gOFOLyRY1xMtIXY7zWIIPS2HItLo0KH\",\"updateTime\":\"2020-03-17 10:40:15\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 18:40:15', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (118, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/21479665e20aa52692daa27729c2b36b3360.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/21479665e20aa52692daa27729c2b36b3360.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:42:26', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (119, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/83af4c8e7ba156e884fe13a78ba422467104.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/83af4c8e7ba156e884fe13a78ba422467104.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:46:43', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (120, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/69ce0c34882c0d14d7b51900b98cdd9a2868.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/69ce0c34882c0d14d7b51900b98cdd9a2868.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:47:19', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (121, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/44363cf25e5f254f965a4d557fd274f72735.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/44363cf25e5f254f965a4d557fd274f72735.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:48:20', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (122, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/920fff17b2b43bd08c79698a67977d477156.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/920fff17b2b43bd08c79698a67977d477156.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:48:39', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (123, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/2fec6e426982b3ba13b938ada3cc98b24001.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/2fec6e426982b3ba13b938ada3cc98b24001.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:50:57', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (124, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/fcb0d814fb1100cab1e2b8132efc22236785.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/fcb0d814fb1100cab1e2b8132efc22236785.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:51:12', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (125, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/4639437f06958c8e5f52e648c8ff2ac46159.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/4639437f06958c8e5f52e648c8ff2ac46159.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:53:43', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (126, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/3f733cfe05939d97f7630fd5b2b63c774267.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/3f733cfe05939d97f7630fd5b2b63c774267.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:54:11', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (127, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/35213523e960da2fbe45b1e94420f39d6024.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/35213523e960da2fbe45b1e94420f39d6024.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-17 23:54:27', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (128, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/c2e0886912be4c1cb04865948ace6ad47824.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/c2e0886912be4c1cb04865948ace6ad47824.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 00:01:30', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (129, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/ae3faf10b56c01346eea15660a01ce785825.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/ae3faf10b56c01346eea15660a01ce785825.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 00:01:47', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (130, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/bf4f942b789f2d3dd6b4bd56e36aa0ff8182.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/bf4f942b789f2d3dd6b4bd56e36aa0ff8182.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 00:10:19', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (131, 'admin', '登录', 'POST', '{\"t\":1584463723829,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"17141114-0c6e-4d60-8f4a-be889e0d160f\",\"captcha\":\"4969\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-17 17:18:44\",\"token\":\"B1s32r2zX47MaStKTw6CcVd103rrdeKIvPrTmYbLjYFhpkr18PBvD8xg46P19YvONg7ljsytScJdyltg\",\"updateTime\":\"2020-03-17 16:48:44\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 00:48:44', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (132, 'admin', '登录', 'POST', '{\"t\":1584463849988,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"32d0e442-d8cd-4e8e-84e9-7e8ab3230ffa\",\"captcha\":\"3206\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-17 17:20:50\",\"token\":\"tfOxfXQ7sDU0wFkTfLeKwPxbQ3dMUjIUZS0ybuGPJjDIWVc0LCwJIc9jvWTMEERCzt7Xcu7IgMUMEQNg\",\"updateTime\":\"2020-03-17 16:50:50\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 00:50:50', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (133, 'admin', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/d45072fb6c1ea56434e1e43eb98a734a9201.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/d45072fb6c1ea56434e1e43eb98a734a9201.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 00:53:32', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (134, 'admin', '新增分类', 'POST', '{\"t\":1584470997959,\"name\":\"政策\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:49:58', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (135, 'admin', '新增分类', 'POST', '{\"t\":1584470997959,\"name\":\"政策\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"政策\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":1},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:49:58', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (136, 'admin', '新增分类', 'POST', '{\"t\":1584471011550,\"name\":\"行情\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:50:11', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (137, 'admin', '新增分类', 'POST', '{\"t\":1584471011550,\"name\":\"行情\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"行情\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":2},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:50:11', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (138, 'admin', '新增分类', 'POST', '{\"t\":1584471032686,\"name\":\"专栏\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:50:32', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (139, 'admin', '新增分类', 'POST', '{\"t\":1584471032686,\"name\":\"专栏\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"专栏\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":3},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:50:32', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (140, 'admin', '新增分类', 'POST', '{\"t\":1584471045102,\"name\":\"产业\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:50:45', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (141, 'admin', '新增分类', 'POST', '{\"t\":1584471045102,\"name\":\"产业\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"产业\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":4},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:50:45', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (142, 'admin', '新增分类', 'POST', '{\"t\":1584471051862,\"name\":\"技术\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:50:52', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (143, 'admin', '新增分类', 'POST', '{\"t\":1584471051862,\"name\":\"技术\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"技术\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":5},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:50:52', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (144, 'admin', '新增分类', 'POST', '{\"t\":1584471058559,\"name\":\"视频\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:50:58', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (145, 'admin', '新增分类', 'POST', '{\"t\":1584471058559,\"name\":\"视频\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"视频\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":6},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:50:58', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (146, 'admin', '新增分类', 'POST', '{\"t\":1584471070711,\"name\":\"投研\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:51:11', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (147, 'admin', '新增分类', 'POST', '{\"t\":1584471070711,\"name\":\"投研\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"投研\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":7},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:51:11', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (148, 'admin', '新增分类', 'POST', '{\"t\":1584471081583,\"name\":\"人物\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:51:21', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (149, 'admin', '新增分类', 'POST', '{\"t\":1584471081583,\"name\":\"人物\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"人物\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":8},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:51:21', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (150, 'admin', '新增分类', 'POST', '{\"t\":1584471094014,\"name\":\"学院\",\"pid\":0,\"sort\":999}', '{\"msg\":\"请选择上级分类\",\"code\":405}', '127.0.0.1', '2020-03-18 02:51:34', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (151, 'admin', '新增分类', 'POST', '{\"t\":1584471094014,\"name\":\"学院\",\"pid\":0,\"sort\":999}', '{\"result\":{\"name\":\"学院\",\"sort\":999,\"pid\":0,\"root_id\":0,\"id\":9},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 02:51:34', '', 'http://127.0.0.1:8181/api/admin/categories', 'App\\Http\\Controllers\\CategoryController@save');
INSERT INTO `logs` VALUES (152, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 03:54:05', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (153, 'admin', '新增文章', 'POST', '{\"t\":1584475003768,\"id\":null,\"name\":\"3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响\",\"type\":\"1\",\"img\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"content\":\"<p><br><\\/p>\",\"tags\":[\"挖矿\"],\"video\":null,\"category_id\":2,\"user_id\":1}', '{\"result\":{\"name\":\"3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响\",\"img\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"type\":\"1\",\"content\":\"<p><br><\\/p>\",\"tags\":[\"挖矿\"],\"video\":null,\"category_id\":2,\"user_id\":1,\"id\":1,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"type_name\":\"文章\",\"video_src\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 03:56:44', '', 'http://127.0.0.1:8181/api/admin/articles', 'App\\Http\\Controllers\\ArticleController@save');
INSERT INTO `logs` VALUES (154, 'admin', '修改文章', 'PUT', '{\"t\":1584475206793,\"id\":1,\"name\":\"3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响\",\"type\":\"1\",\"img\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"content\":\"<p><br><\\/p>\",\"tags\":[\"挖矿\"],\"video\":null,\"category_id\":2,\"user_id\":1}', '{\"result\":{\"id\":1,\"user_id\":1,\"name\":\"3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响\",\"img\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"content\":\"<p><br><\\/p>\",\"number\":0,\"create_time\":\"2020-03-18 03:56:44\",\"update_time\":\"2020-03-18 03:56:44\",\"coin_id\":0,\"tags\":[\"挖矿\"],\"good\":0,\"bad\":0,\"category_id\":2,\"video\":null,\"type\":\"1\",\"zan\":0,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"type_name\":\"文章\",\"video_src\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 04:00:07', '', 'http://127.0.0.1:8181/api/admin/articles/1', 'App\\Http\\Controllers\\ArticleController@update');
INSERT INTO `logs` VALUES (155, 'admin', '修改文章', 'PUT', '{\"t\":1584475330315,\"id\":1,\"name\":\"3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响\",\"type\":\"1\",\"img\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"content\":\"<p><strong>巴神：<\\/strong><\\/p>\\n\\n<p><strong>没有恰到好处的旅程，只有恰如其分的心情。谁让瞬间像永远，谁让未来像从前，续集很多可都是剧中人，有了直播没了剧终，感受了这一周的风浪，也要迎接下一周的波动。得失无语，弃风获雨，不以盈喜，不以损悲，淡定自若，从容应对！当阳光明媚，玫瑰还未枯萎，当时光零碎，信念未被摧毁，当行情远去，翻倍还未追随，生活，不会总如意，投资，不会都圆满，都要经受聚散离合，都是历经风雨吹打，路尽时，适时拐弯，总会豁然眼！投资，不是靠心情存在，而是靠心态活着！<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3048672_image3.png\\\" alt=\\\"rayvCVOcFzBLbK7Vk7aO8c2yGyuMwW4u2jgUl2x8.png\\\"><\\/strong><\\/p>\\n\\n<p><b>晚间要闻：<\\/b><\\/p>\\n\\n<p><b>1：<\\/b>据官方公告，Gate.io第五期LBank vs Ravencoin投票上币活动结束，胜出项目为LBank。Gate.io将于3月18日中午12:00开通LBK\\/USDT交易，并随后开通提现服务。<\\/p>\\n\\n<p><strong>2：<\\/strong>据Decrypt消息，韩国科学与信息通信技术部将向当地区块链创业公司提供310万美元的资助，以促进区块链技术的商业化。具体而言，该部门将与信息通信产业振兴院（NIPA）合作，通过免费招募的方式选择九个方向的最佳区块链应用，并授予各个项目36万美元的资助。<\\/p>\\n\\n<p><strong>3：<\\/strong>北京“监管沙盒”将出台监管细则，对于“入箱”机构来说，应用“出箱”后必须由持牌机构经营。<\\/p>\\n\\n<p><strong>4：<\\/strong>据证券时报消息，3月17日，中装建设区块链技术服务平台首次尝试应用并场景落地，通过平台上线并发放第一笔贷款，进行可用性验证，同步跟进技术环境测试，为后期系统大范围管理运行做好充分准备。<\\/p>\\n\\n<p><strong>5：<\\/strong>据LongHash 3月17日消息，所有数据都表明，比特币价格跌至3600美元到3800美元区间的最大原因是加密货币市场高度杠杆化的结构。有业内高管表示，加密货币市场支持下的“不良杠杆”使其极易陷入危机。而一些交易者认为，比特币这一次打破过去8年间市场趋势的短期回调应该归咎于 BitMEX清算引擎宕机，而不是市场本身。<\\/p>\\n\\n<p><strong>3.17晚间行情分析：<\\/strong><\\/p>\\n\\n<p><strong>BTC：<\\/strong>今日主要震荡横盘，从一小时分线横盘震荡为主，目前属于收线阶段，持续横盘一小时线MACD容易形成向下死叉，所以目前急需关注横盘震荡行情箱体利润，分钟线级别处于小基本头肩顶趋势，晚间5400属于重要压力位，破位压力5700，未能突破主要短空为主，下方主要支撑4900，上方5400一带重点压力位破位顺势，<\\/p>\\n\\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>晚间参考：5450-5500附近空，目标5300-5200，止损5600上方，回踩下方5150-5200附近多，目标5350-5500止损5000，<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069497_image3.png\\\" alt=\\\"Q7SW8732TZy9yu1FryD8KefWprvxHzSiyWSe9AdY.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>ETH:<\\/strong>白天顺着大盘走势，走势震荡运行，布林带收口压缩运行空间，走势在布林带中轨附近运行，MACD快慢线在零轴下方呈金叉上行，KDJ、RSI指标拐头上探，目前大盘回归平静，走势以震荡为主，在区间内高抛低吸即可，<\\/p>\\n\\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<strong>晚间参考：118附近空，稳健120空，目标114-109，止损115。下方109附近多，目标114 止损105，<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069508_image3.png\\\" alt=\\\"hNYqMyd4ZJD0sdFurHGaBaxdU9lTW8lX7hCmA9TQ.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>BCH：<\\/strong>BCH白天随着大盘走势窄幅震荡，晚间走势探底在177.6的位置后，走势止跌反弹最高涨至177.96的位置，随后走势震荡整理，4小时走势5日均线及10日均线胶着运行，走势在布林带中轨附近运行，布林带收口，MACD快慢线在零轴下方呈金叉上行，KDJ、RSI指标拐头上探，短期走势进入震荡状态，日内在区间内高势低吸为主，<\\/p>\\n\\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>晚间参考：上方建议183-188期间空 ，目标177-167 止损 190&nbsp; 下方167附近多 目标177 止损160<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069514_image3.png\\\" alt=\\\"PGJDFkqdCTWH6B8wUjYmTtS2r53fnCRK3QvSIUh5.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>LTC:<\\/strong>白天走势最低33.99一线后反弹最高触及34.51的位置后小幅回落震荡运行，目前报价34.23，4小时级别均线呈死叉状态，但MACD快慢线呈金叉上行，布林带收口，走势回到布林带中轨运行，各指标拐头上行，短期来看，走势在区间内震荡，所以操作以高抛低吸为主，短期压力位36-40，支撑位30-35，<\\/p>\\n\\n<p>&nbsp; &nbsp;&nbsp;<strong>晚间参考：上方35附近空 目标34-32 止损36&nbsp; 下方32附近多 目标34&nbsp; 止损30&nbsp;<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069519_image3.png\\\" alt=\\\"ncyd6F4TW7WvsYkhj8bFATHj1xpDZAAjciU7t177.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>EOS：<\\/strong>柚子白天也是受整体趋势影响，大幅度下跌后，形成一个震荡趋势，1.96附近一直横盘整理，目前从价位上看的话，基本上已经处于底部状态，中长线可以以多单为主，短线操作根据形势，带好止损操作，<\\/p>\\n\\n<p><img src=\\\"https:\\/\\/img.jinse.com\\/3069523_image3.png\\\" alt=\\\"EvjBNKS2NF2yxfkPT3kEHNZJ5p9eZHPVQirRiwt4.png\\\"><\\/p>\\n\\n<p><strong>以上就是晚间我为大家的分析：本文出自笔者感觉不错可以关注一下，可以获得最新行情走势以便大家学习参考，转载请注明出处个人观点仅供参考，<\\/strong><\\/p>\",\"tags\":[\"挖矿\"],\"video\":null,\"category_id\":2,\"user_id\":1}', '{\"result\":{\"id\":1,\"user_id\":1,\"name\":\"3.17晚间行情解析：你以为减产就是牛市全球经济的恐慌持续升温 既然给BTC带来这样影响\",\"img\":\"\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"content\":\"<p><strong>巴神：<\\/strong><\\/p>\\n\\n<p><strong>没有恰到好处的旅程，只有恰如其分的心情。谁让瞬间像永远，谁让未来像从前，续集很多可都是剧中人，有了直播没了剧终，感受了这一周的风浪，也要迎接下一周的波动。得失无语，弃风获雨，不以盈喜，不以损悲，淡定自若，从容应对！当阳光明媚，玫瑰还未枯萎，当时光零碎，信念未被摧毁，当行情远去，翻倍还未追随，生活，不会总如意，投资，不会都圆满，都要经受聚散离合，都是历经风雨吹打，路尽时，适时拐弯，总会豁然眼！投资，不是靠心情存在，而是靠心态活着！<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3048672_image3.png\\\" alt=\\\"rayvCVOcFzBLbK7Vk7aO8c2yGyuMwW4u2jgUl2x8.png\\\"><\\/strong><\\/p>\\n\\n<p><b>晚间要闻：<\\/b><\\/p>\\n\\n<p><b>1：<\\/b>据官方公告，Gate.io第五期LBank vs Ravencoin投票上币活动结束，胜出项目为LBank。Gate.io将于3月18日中午12:00开通LBK\\/USDT交易，并随后开通提现服务。<\\/p>\\n\\n<p><strong>2：<\\/strong>据Decrypt消息，韩国科学与信息通信技术部将向当地区块链创业公司提供310万美元的资助，以促进区块链技术的商业化。具体而言，该部门将与信息通信产业振兴院（NIPA）合作，通过免费招募的方式选择九个方向的最佳区块链应用，并授予各个项目36万美元的资助。<\\/p>\\n\\n<p><strong>3：<\\/strong>北京“监管沙盒”将出台监管细则，对于“入箱”机构来说，应用“出箱”后必须由持牌机构经营。<\\/p>\\n\\n<p><strong>4：<\\/strong>据证券时报消息，3月17日，中装建设区块链技术服务平台首次尝试应用并场景落地，通过平台上线并发放第一笔贷款，进行可用性验证，同步跟进技术环境测试，为后期系统大范围管理运行做好充分准备。<\\/p>\\n\\n<p><strong>5：<\\/strong>据LongHash 3月17日消息，所有数据都表明，比特币价格跌至3600美元到3800美元区间的最大原因是加密货币市场高度杠杆化的结构。有业内高管表示，加密货币市场支持下的“不良杠杆”使其极易陷入危机。而一些交易者认为，比特币这一次打破过去8年间市场趋势的短期回调应该归咎于 BitMEX清算引擎宕机，而不是市场本身。<\\/p>\\n\\n<p><strong>3.17晚间行情分析：<\\/strong><\\/p>\\n\\n<p><strong>BTC：<\\/strong>今日主要震荡横盘，从一小时分线横盘震荡为主，目前属于收线阶段，持续横盘一小时线MACD容易形成向下死叉，所以目前急需关注横盘震荡行情箱体利润，分钟线级别处于小基本头肩顶趋势，晚间5400属于重要压力位，破位压力5700，未能突破主要短空为主，下方主要支撑4900，上方5400一带重点压力位破位顺势，<\\/p>\\n\\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>晚间参考：5450-5500附近空，目标5300-5200，止损5600上方，回踩下方5150-5200附近多，目标5350-5500止损5000，<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069497_image3.png\\\" alt=\\\"Q7SW8732TZy9yu1FryD8KefWprvxHzSiyWSe9AdY.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>ETH:<\\/strong>白天顺着大盘走势，走势震荡运行，布林带收口压缩运行空间，走势在布林带中轨附近运行，MACD快慢线在零轴下方呈金叉上行，KDJ、RSI指标拐头上探，目前大盘回归平静，走势以震荡为主，在区间内高抛低吸即可，<\\/p>\\n\\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<strong>晚间参考：118附近空，稳健120空，目标114-109，止损115。下方109附近多，目标114 止损105，<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069508_image3.png\\\" alt=\\\"hNYqMyd4ZJD0sdFurHGaBaxdU9lTW8lX7hCmA9TQ.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>BCH：<\\/strong>BCH白天随着大盘走势窄幅震荡，晚间走势探底在177.6的位置后，走势止跌反弹最高涨至177.96的位置，随后走势震荡整理，4小时走势5日均线及10日均线胶着运行，走势在布林带中轨附近运行，布林带收口，MACD快慢线在零轴下方呈金叉上行，KDJ、RSI指标拐头上探，短期走势进入震荡状态，日内在区间内高势低吸为主，<\\/p>\\n\\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>晚间参考：上方建议183-188期间空 ，目标177-167 止损 190&nbsp; 下方167附近多 目标177 止损160<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069514_image3.png\\\" alt=\\\"PGJDFkqdCTWH6B8wUjYmTtS2r53fnCRK3QvSIUh5.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>LTC:<\\/strong>白天走势最低33.99一线后反弹最高触及34.51的位置后小幅回落震荡运行，目前报价34.23，4小时级别均线呈死叉状态，但MACD快慢线呈金叉上行，布林带收口，走势回到布林带中轨运行，各指标拐头上行，短期来看，走势在区间内震荡，所以操作以高抛低吸为主，短期压力位36-40，支撑位30-35，<\\/p>\\n\\n<p>&nbsp; &nbsp;&nbsp;<strong>晚间参考：上方35附近空 目标34-32 止损36&nbsp; 下方32附近多 目标34&nbsp; 止损30&nbsp;<\\/strong><\\/p>\\n\\n<p><strong><img src=\\\"https:\\/\\/img.jinse.com\\/3069519_image3.png\\\" alt=\\\"ncyd6F4TW7WvsYkhj8bFATHj1xpDZAAjciU7t177.png\\\"><\\/strong><\\/p>\\n\\n<p><strong>EOS：<\\/strong>柚子白天也是受整体趋势影响，大幅度下跌后，形成一个震荡趋势，1.96附近一直横盘整理，目前从价位上看的话，基本上已经处于底部状态，中长线可以以多单为主，短线操作根据形势，带好止损操作，<\\/p>\\n\\n<p><img src=\\\"https:\\/\\/img.jinse.com\\/3069523_image3.png\\\" alt=\\\"EvjBNKS2NF2yxfkPT3kEHNZJ5p9eZHPVQirRiwt4.png\\\"><\\/p>\\n\\n<p><strong>以上就是晚间我为大家的分析：本文出自笔者感觉不错可以关注一下，可以获得最新行情走势以便大家学习参考，转载请注明出处个人观点仅供参考，<\\/strong><\\/p>\",\"number\":0,\"create_time\":\"2020-03-18 03:56:44\",\"update_time\":\"2020-03-18 03:56:44\",\"coin_id\":0,\"tags\":[\"挖矿\"],\"good\":0,\"bad\":0,\"category_id\":2,\"video\":null,\"type\":\"1\",\"zan\":0,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_17\\/865478c1d5e41b30ffca510bf0f5b13b2184.png\",\"type_name\":\"文章\",\"video_src\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 04:02:10', '', 'http://127.0.0.1:8181/api/admin/articles/1', 'App\\Http\\Controllers\\ArticleController@update');
INSERT INTO `logs` VALUES (156, 'admin', '登录', 'POST', '{\"t\":1584535563019,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"909fe920-248b-4be5-8c79-15d4634a5d58\",\"captcha\":\"6531\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-18 13:16:03\",\"token\":\"hRZuYwwqw0n33q9QT2XVPDXFEr4edNkAep6zO9t9saRKasJiivzQQhWpZvIr6co44brjO2yEUi0uNCTm\",\"updateTime\":\"2020-03-18 12:46:03\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-18 20:46:03', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (157, 'admin', '登录', 'POST', '{\"t\":1584611448145,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"72921dbf-6377-4c8f-899f-67fef50fa5d7\",\"captcha\":\"7003\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-19 10:20:48\",\"token\":\"7eJylnY7HozqPELLJQDX9POpNoVrZAJHjEtfckZ2rYZBZx7UeHgbmwNr3o3dFwXiAjSn3S5e4Lc9oG8V\",\"updateTime\":\"2020-03-19 09:50:48\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:50:48', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (158, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/2c398dd5de1d64bdeb0e0b7caca7c0758302.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/2c398dd5de1d64bdeb0e0b7caca7c0758302.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:52:57', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (159, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/b139673a3e7c3469d08ec9bdd5562fd94122.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/b139673a3e7c3469d08ec9bdd5562fd94122.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:53:00', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (160, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/4d795f2e059d52d1c099d9227a1cd0988453.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/4d795f2e059d52d1c099d9227a1cd0988453.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:53:05', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (161, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/2586cba0aa355486d0df5916057a0ff11984.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/2586cba0aa355486d0df5916057a0ff11984.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:53:08', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (162, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/beb5d2ee4447a7945f17059e83c2a9535108.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/beb5d2ee4447a7945f17059e83c2a9535108.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:53:11', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (163, '', '上传图片', 'POST', '{\"type\":\"video\",\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:53:16', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (164, 'admin', '新增文章', 'POST', '{\"t\":1584611636609,\"id\":null,\"name\":\"比特币入选《财富》“现代百大最佳设计产品” 抄底的时刻到了\",\"type\":\"3\",\"img\":\"\\/storage\\/2020_03_19\\/beb5d2ee4447a7945f17059e83c2a9535108.png\",\"content\":\"<p><br><\\/p>\",\"tags\":[\"BTC\",\"产业\",\"挖矿\"],\"video\":\"\\/storage\\/2020_03_19\\/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4\",\"category_id\":1,\"user_id\":1}', '{\"result\":{\"name\":\"比特币入选《财富》“现代百大最佳设计产品” 抄底的时刻到了\",\"img\":\"\\/storage\\/2020_03_19\\/beb5d2ee4447a7945f17059e83c2a9535108.png\",\"type\":\"3\",\"content\":\"<p><br><\\/p>\",\"tags\":[\"BTC\",\"产业\",\"挖矿\"],\"video\":\"\\/storage\\/2020_03_19\\/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4\",\"category_id\":1,\"user_id\":1,\"id\":2,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/beb5d2ee4447a7945f17059e83c2a9535108.png\",\"type_name\":\"视频\",\"video_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/1c3837ea5a124d27bdd11bae8d2d47f98460.mp4\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 17:53:57', '', 'http://127.0.0.1:8181/api/admin/articles', 'App\\Http\\Controllers\\ArticleController@save');
INSERT INTO `logs` VALUES (165, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/6aea065eb22457fe825c671150e3ba764171.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/6aea065eb22457fe825c671150e3ba764171.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 18:13:34', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (166, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/a12e92bea881934dcde0b626f2438c423086.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/a12e92bea881934dcde0b626f2438c423086.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 18:16:08', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (167, 'admin', '新增会员', 'POST', '{\"t\":1584613425747,\"id\":null,\"username\":\"jinse\",\"nickname\":\"金色新闻\",\"avatar\":null,\"status\":1,\"password\":\"123456\",\"password2\":\"123456\",\"phone\":null}', '{\"msg\":\"注册成功\",\"code\":200}', '127.0.0.1', '2020-03-19 18:23:46', '', 'http://127.0.0.1:8181/api/admin/users', 'App\\Http\\Controllers\\UserController@save');
INSERT INTO `logs` VALUES (168, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/ab421a510e399c631c44bc66690c7bf19844.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/ab421a510e399c631c44bc66690c7bf19844.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 18:25:38', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (169, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 18:27:06', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (170, 'admin', '新增专题', 'POST', '{\"t\":1584613767024,\"id\":null,\"name\":\"比特币单日跌幅超20% BTC“减半行情”短期难现？\",\"content\":\"2020年3月，加密货币市场持续走低，特别是在3月12日，比特币单日下跌幅度超过25%，引发市场恐慌。2020年究竟是产量减半，还是币价减半？\",\"img\":\"\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\",\"user_id\":3}', '{\"result\":{\"name\":\"比特币单日跌幅超20% BTC“减半行情”短期难现？\",\"img\":\"\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\",\"content\":\"2020年3月，加密货币市场持续走低，特别是在3月12日，比特币单日下跌幅度超过25%，引发市场恐慌。2020年究竟是产量减半，还是币价减半？\",\"user_id\":3,\"id\":1,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 18:29:27', '', 'http://127.0.0.1:8181/api/admin/subjects', 'App\\Http\\Controllers\\SubjectController@save');
INSERT INTO `logs` VALUES (171, 'admin', '新增菜单', 'POST', '{\"t\":1584616821657,\"type\":1,\"name\":\"单页管理\",\"parent_id\":48,\"url\":\"web\\/page\",\"perms\":null,\"orders\":999,\"icon\":\"bianji\"}', '{\"result\":{\"parent_id\":48,\"name\":\"单页管理\",\"url\":\"web\\/page\",\"perms\":null,\"type\":1,\"icon\":\"bianji\",\"orders\":999,\"id\":56,\"parent_name\":\"网站信息\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 19:20:21', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (172, 'admin', '新增菜单', 'POST', '{\"t\":1584616846280,\"type\":1,\"name\":\"评论管理\",\"parent_id\":43,\"url\":\"web\\/comment\",\"perms\":null,\"orders\":999,\"icon\":\"pinglun\"}', '{\"result\":{\"parent_id\":43,\"name\":\"评论管理\",\"url\":\"web\\/comment\",\"perms\":null,\"type\":1,\"icon\":\"pinglun\",\"orders\":999,\"id\":57,\"parent_name\":\"内容管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 19:20:46', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (173, 'admin', '新增菜单', 'POST', '{\"t\":1584616896792,\"type\":1,\"name\":\"系统消息\",\"parent_id\":48,\"url\":\"web\\/notice\",\"perms\":null,\"orders\":999,\"icon\":\"log\"}', '{\"result\":{\"parent_id\":48,\"name\":\"系统消息\",\"url\":\"web\\/notice\",\"perms\":null,\"type\":1,\"icon\":\"log\",\"orders\":999,\"id\":58,\"parent_name\":\"网站信息\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 19:21:37', '', 'http://127.0.0.1:8181/api/admin/menus', 'App\\Http\\Controllers\\MenuController@save');
INSERT INTO `logs` VALUES (174, 'admin', '修改菜单', 'PUT', '{\"t\":1584616945608,\"id\":56,\"type\":1,\"name\":\"单页管理\",\"parent_id\":47,\"url\":\"web\\/page\",\"perms\":null,\"orders\":999,\"icon\":\"bianji\"}', '{\"result\":{\"id\":56,\"parent_id\":47,\"name\":\"单页管理\",\"url\":\"web\\/page\",\"perms\":null,\"type\":1,\"icon\":\"bianji\",\"orders\":999,\"parent_name\":\"网站管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 19:22:25', '', 'http://127.0.0.1:8181/api/admin/menus/56', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (175, 'admin', '修改菜单', 'PUT', '{\"t\":1584616958664,\"id\":58,\"type\":1,\"name\":\"系统消息\",\"parent_id\":47,\"url\":\"web\\/notice\",\"perms\":null,\"orders\":999,\"icon\":\"log\"}', '{\"result\":{\"id\":58,\"parent_id\":47,\"name\":\"系统消息\",\"url\":\"web\\/notice\",\"perms\":null,\"type\":1,\"icon\":\"log\",\"orders\":999,\"parent_name\":\"网站管理\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 19:22:38', '', 'http://127.0.0.1:8181/api/admin/menus/58', 'App\\Http\\Controllers\\MenuController@update');
INSERT INTO `logs` VALUES (176, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 20:48:29', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (177, 'admin', '新增文章', 'POST', '{\"t\":1584622160329,\"id\":null,\"name\":\"期货连环爆 矿工已蒙圈 3000美元是最后的关口？\",\"type\":\"1\",\"img\":\"\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"content\":\"<p>&lt;p&gt;“比特币跌幅超过20%，历史上只发生过几次。而上一次暴跌，还要追溯到2020年3月12日，我的记忆很深刻，那感觉，仿佛就在昨天。”&lt;\\/p&gt;&lt;p&gt;这是今天最火的段子之一。&lt;\\/p&gt;&lt;p&gt;好好的怎么就暴跌了？而且直接减半！很多人逐渐相信：一定是庄家在现货市场疯狂砸盘，然后在期货市场里以空单获利？完美收割。&lt;\\/p&gt;&lt;p&gt;真的如此吗？&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img&nbsp;src=\\\"https:\\/\\/img.jinse.com\\/3055947_image3.png\\\"&nbsp;title=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\"&nbsp;alt=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\"&gt;&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;span&nbsp;style=\\\"font-size:&nbsp;20px;\\\"&gt;&lt;strong&gt;比特币暴跌，这些原因你信吗？&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;Primitive&nbsp;Ventures&nbsp;创始合伙人Dovey（万卉）在微博发文，她总结了5个原因。&lt;\\/p&gt;&lt;blockquote&gt;1、早期巨鲸抛售，不少10-11年的硬核玩家为了预备大萧条卖币。&lt;p&gt;2、杠杆合约连环爆仓导致流动性危机，没有熔断，没有央妈，只能靠市场肉身做价格调节。&lt;\\/p&gt;&lt;p&gt;3、价格锚定物USDT无法弹性供给，法币出入金渠道堵塞，接下来还可能发生。&lt;\\/p&gt;&lt;p&gt;4、矿工质押盘强制平仓&nbsp;。&lt;\\/p&gt;&lt;p&gt;5、交易所系统性风险。&lt;\\/p&gt;&lt;\\/blockquote&gt;&lt;p&gt;我们一一来分析Dovey说的是什么意思。&lt;\\/p&gt;&lt;p&gt;合约连环爆仓，这是指由于短时间内暴跌，使得大部分做多账户被强制平仓，平仓抛售比特币，再次压低现货价格，进而再次造成更多多单爆仓。&lt;\\/p&gt;&lt;p&gt;入金渠道就像输送新鲜血液的渠道，一旦被掐断，市场里没有钱，就无法承接卖单。这两天很多人应该都有体会，以火币为例，短时间USDT价格暴涨至8美金，而且卖家稀少，你想抄底比特币也很难。很多人的多单接近强平价格，却无法快速筹集足够的USDT补仓增加保证金，进而眼睁睁看着被强制平仓。&lt;\\/p&gt;&lt;p&gt;BlockVC创始人徐英凯在微博贴了一张图，截图显示，某一时间，美元做出入金的Coinbase&nbsp;Pro的BTC价格为5598.98美元，而以USDT为出入金的火币全球站，BTC价格为4451.31美元，价差达到了1000美元。&lt;\\/p&gt;&lt;p&gt;“真的是活久见，法币所和币币所可以达到价差如此之巨大，市场的无效性如此之强，在这样的市场里面要不输钱又不输币太难了。”他说。&lt;\\/p&gt;&lt;p&gt;这很有可能就是因为USDT出入金渠道出了问题，流动性缺乏，使得价格疯狂下跌。但QKL123分析师刘庆认为，不排除是交易所系统卡顿或数据卡顿造成的。&lt;\\/p&gt;&lt;p&gt;第四个原因与矿工有关，2019年以来，矿业不仅进入了集中化、专业化阶段，矿业也进入大规模金融化阶段。比如，矿工将挖出的比特币质押给第三方机构，换取USDT或法币购买矿机或建设矿场，这种加杠杆在币价稳定时风险较低。然而，此轮暴跌，当质押的比特币价格低于其质押的价格，就可能被平台强制平仓。这也加强了砸盘的力量。&lt;\\/p&gt;&lt;p&gt;第五，交易所系统性风险。这一点万卉并没有具体指明是什么。&lt;\\/p&gt;&lt;p&gt;不过，微博大VTumbleBit有提到，很多抵押借贷，包括交易所在Bitmax做对冲仓。他认为交易所拿着用户的币进行了衍生品操作。&lt;\\/p&gt;&lt;p&gt;针对这个问题，FTX&nbsp;COO&nbsp;Constance&nbsp;Wang&nbsp;认为，从Bitmax最终爆仓的单子价值看，大部分是散户，当然这不能说里面完全没有机构。但不能因此就把连环爆仓的罪名加到机构身上。&lt;\\/p&gt;&lt;p&gt;徐英凯在微博进一步发文称，&lt;strong&gt;大家可能都明白这次的暴跌来自杠杆借贷和债务危机，但到底是谁的责任呢？从矿机产商、矿工矿场、交易所、投资人、借贷工具等等，所有人都是推动这一惨剧走到最后的一员，这是一场社会实验，这是一次集体的“合谋”。&lt;\\/strong&gt;&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img&nbsp;src=\\\"https:\\/\\/img.jinse.com\\/3055950_image3.png\\\"&nbsp;title=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\"&nbsp;alt=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\"&gt;万卉认为，12日晚，美联储15000亿美金的流动性支持才让市场回魂了10分钟，交易日内大盘跌了近10%，其实市场并不缺钱，缺的是信心。比特币的暴跌，也是流动性危机。&lt;\\/p&gt;&lt;p&gt;FTX&nbsp;COO&nbsp;Constance&nbsp;Wang&nbsp;在接受巴比特采访时分析，其实这次暴跌可以分两段，第一段大概是从9000-6500阶段，这很大原因是受大环境影响，包括美股熔断，新冠肺炎对宏观经济的影响和由此带来的恐慌情绪。第二段是6500-3800阶段，主要原因是连环爆仓。&lt;\\/p&gt;&lt;p&gt;Constance&nbsp;Wang&nbsp;认为，&lt;strong&gt;连环爆仓不是一个很新奇的现象，之前就出现过，但这次当各种因素杂糅在一起，才造成了非常大的影响和恐慌&lt;\\/strong&gt;。&lt;\\/p&gt;&lt;p&gt;目前，随着比特币在触及3800美元后强势反弹至5000美元左右，市场的恐慌已有所好转，然而事情就这么结束了吗？或许不是。&lt;\\/p&gt;&lt;p&gt;&lt;strong&gt;比特币此轮暴跌开启了一个潘多拉魔盒，它不仅反映出流动性不足，它还反映出，至少在加密货币世界，系统性风险或许真的存在。&lt;\\/strong&gt;&lt;\\/p&gt;&lt;p&gt;比如，DeFi就首当其冲，目前，假设ETH进一步下跌，对于Maker&nbsp;DAO来说，它们就要像当年BitShares一样，最通过治理代币的拍卖以偿还抵押不足的不良债务。据悉，MakerDAO&nbsp;在价格下跌前有超过&nbsp;50&nbsp;万美元的盈余，而目前是超过&nbsp;400&nbsp;万美元的债务。&lt;\\/p&gt;&lt;p&gt;这还是其中之一，相信因为此轮暴跌，可能还有一些连环反应将逐步暴露出来。而它们对市场又会带来什么影响，只能拭目以待。&lt;\\/p&gt;&lt;p&gt;&lt;span&nbsp;style=\\\"font-size:&nbsp;20px;\\\"&gt;&lt;strong&gt;矿工蒙圈了，但很多人还在抄底、等待&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;很显然，暴跌对于比特币矿业而言简直就是噩梦。币印官网显示，在0.38元一度电的情况下，除最新的蚂蚁矿机S19Pro，其它比特币矿机电费占比均超过50%。诸多主流矿机进入关机时间，其中，占据全网算力约40%的蚂蚁矿机S9已经宣告退休。&lt;\\/p&gt;&lt;p&gt;矿业大逃亡要来了吗？巴比特采访了几位矿业大咖。&lt;\\/p&gt;&lt;p&gt;矿业自媒体，比特币矿工区块链矿哥称，自己的机器除蚂蚁S9关机外，其余还没有关机。但矿场部分客户的机器已经关机了，客户要观望几天。&lt;\\/p&gt;&lt;p&gt;“&lt;strong&gt;我们会根据算力难度以及电价综合观察，到关机临界点了再看情况，走一步算一步，也在回笼资金，保证流动性。&lt;\\/strong&gt;”他说。&lt;\\/p&gt;&lt;p&gt;他认为，目前的大环境短期内对挖矿不是很有利，但如果全球疫情能在一个月内控制住，那还会大概率在减半前有一波（上涨）。“尽量扛过去吧，这也算是黎明前的黑暗了。”&lt;\\/p&gt;&lt;p&gt;杰捷矿业CEO刘款说，暂时还没有机器关机，其中包括部分已经到关机价格的机器。“跑几天试试，坚持10天，观望一下。其它现在没有任何措施可以实时。如果没有反弹，2-3个月会死掉一大部分的人，昨天晚上很多人失眠了。“&lt;\\/p&gt;&lt;p&gt;另外，她提到，作为矿机经销商，她感慨矿机根本卖不动了，而且，&lt;strong&gt;现在很多人都懵了，不知道矿机买卖该出多少价格&lt;\\/strong&gt;。但她说也有很多人在抄底，她就准备了一部分资金买矿机。&lt;\\/p&gt;&lt;p&gt;金山矿业创始人王栋文的情况与其他两位基本相似。他还比较担心这种暴跌会让影响到新参与者的认知或计划。而他也认为，在场内可以握好币，场外的择机参与，等未来大涨。&lt;\\/p&gt;&lt;p&gt;比特蓝鲸创始人陈雷介绍，他四个矿场约六万台矿机受到严重影响，高功耗机器已达到关机价，一些托管机器，他已按照客户要求进行了拉闸或临时调价处理，部分云算力平台客户产生客诉要处理，有一些未经历过这种大跌的客户表现得很焦虑。&lt;\\/p&gt;&lt;p&gt;“现在肯定还不是最难的时候，市场会加重担忧，比特币也有可能会进一步受到冲击，需要现金流的玩家都会比较辛苦，减半周期的叠加影响，可能会有很困难的局面，但这就是市场常态，玩家来来往往，行业在起起落落中逐步升级，风控手段丰富、现金流储备充裕、杠杆压力小的玩家会更安全一些，&lt;strong&gt;但换一个角度看，行业现金流紧张，要素交易萎靡的时候，可能也是危中有机的时候了。希望比特币能守住三千美元的关口。&lt;\\/strong&gt;”他说。&lt;\\/p&gt;<\\/p>\",\"tags\":[\"BTC\",\"行情\"],\"video\":null,\"category_id\":2,\"user_id\":3}', '{\"result\":{\"name\":\"期货连环爆 矿工已蒙圈 3000美元是最后的关口？\",\"img\":\"\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"type\":\"1\",\"content\":\"<p>&lt;p&gt;“比特币跌幅超过20%，历史上只发生过几次。而上一次暴跌，还要追溯到2020年3月12日，我的记忆很深刻，那感觉，仿佛就在昨天。”&lt;\\/p&gt;&lt;p&gt;这是今天最火的段子之一。&lt;\\/p&gt;&lt;p&gt;好好的怎么就暴跌了？而且直接减半！很多人逐渐相信：一定是庄家在现货市场疯狂砸盘，然后在期货市场里以空单获利？完美收割。&lt;\\/p&gt;&lt;p&gt;真的如此吗？&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img&nbsp;src=\\\"https:\\/\\/img.jinse.com\\/3055947_image3.png\\\"&nbsp;title=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\"&nbsp;alt=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\"&gt;&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;span&nbsp;style=\\\"font-size:&nbsp;20px;\\\"&gt;&lt;strong&gt;比特币暴跌，这些原因你信吗？&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;Primitive&nbsp;Ventures&nbsp;创始合伙人Dovey（万卉）在微博发文，她总结了5个原因。&lt;\\/p&gt;&lt;blockquote&gt;1、早期巨鲸抛售，不少10-11年的硬核玩家为了预备大萧条卖币。&lt;p&gt;2、杠杆合约连环爆仓导致流动性危机，没有熔断，没有央妈，只能靠市场肉身做价格调节。&lt;\\/p&gt;&lt;p&gt;3、价格锚定物USDT无法弹性供给，法币出入金渠道堵塞，接下来还可能发生。&lt;\\/p&gt;&lt;p&gt;4、矿工质押盘强制平仓&nbsp;。&lt;\\/p&gt;&lt;p&gt;5、交易所系统性风险。&lt;\\/p&gt;&lt;\\/blockquote&gt;&lt;p&gt;我们一一来分析Dovey说的是什么意思。&lt;\\/p&gt;&lt;p&gt;合约连环爆仓，这是指由于短时间内暴跌，使得大部分做多账户被强制平仓，平仓抛售比特币，再次压低现货价格，进而再次造成更多多单爆仓。&lt;\\/p&gt;&lt;p&gt;入金渠道就像输送新鲜血液的渠道，一旦被掐断，市场里没有钱，就无法承接卖单。这两天很多人应该都有体会，以火币为例，短时间USDT价格暴涨至8美金，而且卖家稀少，你想抄底比特币也很难。很多人的多单接近强平价格，却无法快速筹集足够的USDT补仓增加保证金，进而眼睁睁看着被强制平仓。&lt;\\/p&gt;&lt;p&gt;BlockVC创始人徐英凯在微博贴了一张图，截图显示，某一时间，美元做出入金的Coinbase&nbsp;Pro的BTC价格为5598.98美元，而以USDT为出入金的火币全球站，BTC价格为4451.31美元，价差达到了1000美元。&lt;\\/p&gt;&lt;p&gt;“真的是活久见，法币所和币币所可以达到价差如此之巨大，市场的无效性如此之强，在这样的市场里面要不输钱又不输币太难了。”他说。&lt;\\/p&gt;&lt;p&gt;这很有可能就是因为USDT出入金渠道出了问题，流动性缺乏，使得价格疯狂下跌。但QKL123分析师刘庆认为，不排除是交易所系统卡顿或数据卡顿造成的。&lt;\\/p&gt;&lt;p&gt;第四个原因与矿工有关，2019年以来，矿业不仅进入了集中化、专业化阶段，矿业也进入大规模金融化阶段。比如，矿工将挖出的比特币质押给第三方机构，换取USDT或法币购买矿机或建设矿场，这种加杠杆在币价稳定时风险较低。然而，此轮暴跌，当质押的比特币价格低于其质押的价格，就可能被平台强制平仓。这也加强了砸盘的力量。&lt;\\/p&gt;&lt;p&gt;第五，交易所系统性风险。这一点万卉并没有具体指明是什么。&lt;\\/p&gt;&lt;p&gt;不过，微博大VTumbleBit有提到，很多抵押借贷，包括交易所在Bitmax做对冲仓。他认为交易所拿着用户的币进行了衍生品操作。&lt;\\/p&gt;&lt;p&gt;针对这个问题，FTX&nbsp;COO&nbsp;Constance&nbsp;Wang&nbsp;认为，从Bitmax最终爆仓的单子价值看，大部分是散户，当然这不能说里面完全没有机构。但不能因此就把连环爆仓的罪名加到机构身上。&lt;\\/p&gt;&lt;p&gt;徐英凯在微博进一步发文称，&lt;strong&gt;大家可能都明白这次的暴跌来自杠杆借贷和债务危机，但到底是谁的责任呢？从矿机产商、矿工矿场、交易所、投资人、借贷工具等等，所有人都是推动这一惨剧走到最后的一员，这是一场社会实验，这是一次集体的“合谋”。&lt;\\/strong&gt;&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img&nbsp;src=\\\"https:\\/\\/img.jinse.com\\/3055950_image3.png\\\"&nbsp;title=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\"&nbsp;alt=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\"&gt;万卉认为，12日晚，美联储15000亿美金的流动性支持才让市场回魂了10分钟，交易日内大盘跌了近10%，其实市场并不缺钱，缺的是信心。比特币的暴跌，也是流动性危机。&lt;\\/p&gt;&lt;p&gt;FTX&nbsp;COO&nbsp;Constance&nbsp;Wang&nbsp;在接受巴比特采访时分析，其实这次暴跌可以分两段，第一段大概是从9000-6500阶段，这很大原因是受大环境影响，包括美股熔断，新冠肺炎对宏观经济的影响和由此带来的恐慌情绪。第二段是6500-3800阶段，主要原因是连环爆仓。&lt;\\/p&gt;&lt;p&gt;Constance&nbsp;Wang&nbsp;认为，&lt;strong&gt;连环爆仓不是一个很新奇的现象，之前就出现过，但这次当各种因素杂糅在一起，才造成了非常大的影响和恐慌&lt;\\/strong&gt;。&lt;\\/p&gt;&lt;p&gt;目前，随着比特币在触及3800美元后强势反弹至5000美元左右，市场的恐慌已有所好转，然而事情就这么结束了吗？或许不是。&lt;\\/p&gt;&lt;p&gt;&lt;strong&gt;比特币此轮暴跌开启了一个潘多拉魔盒，它不仅反映出流动性不足，它还反映出，至少在加密货币世界，系统性风险或许真的存在。&lt;\\/strong&gt;&lt;\\/p&gt;&lt;p&gt;比如，DeFi就首当其冲，目前，假设ETH进一步下跌，对于Maker&nbsp;DAO来说，它们就要像当年BitShares一样，最通过治理代币的拍卖以偿还抵押不足的不良债务。据悉，MakerDAO&nbsp;在价格下跌前有超过&nbsp;50&nbsp;万美元的盈余，而目前是超过&nbsp;400&nbsp;万美元的债务。&lt;\\/p&gt;&lt;p&gt;这还是其中之一，相信因为此轮暴跌，可能还有一些连环反应将逐步暴露出来。而它们对市场又会带来什么影响，只能拭目以待。&lt;\\/p&gt;&lt;p&gt;&lt;span&nbsp;style=\\\"font-size:&nbsp;20px;\\\"&gt;&lt;strong&gt;矿工蒙圈了，但很多人还在抄底、等待&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;很显然，暴跌对于比特币矿业而言简直就是噩梦。币印官网显示，在0.38元一度电的情况下，除最新的蚂蚁矿机S19Pro，其它比特币矿机电费占比均超过50%。诸多主流矿机进入关机时间，其中，占据全网算力约40%的蚂蚁矿机S9已经宣告退休。&lt;\\/p&gt;&lt;p&gt;矿业大逃亡要来了吗？巴比特采访了几位矿业大咖。&lt;\\/p&gt;&lt;p&gt;矿业自媒体，比特币矿工区块链矿哥称，自己的机器除蚂蚁S9关机外，其余还没有关机。但矿场部分客户的机器已经关机了，客户要观望几天。&lt;\\/p&gt;&lt;p&gt;“&lt;strong&gt;我们会根据算力难度以及电价综合观察，到关机临界点了再看情况，走一步算一步，也在回笼资金，保证流动性。&lt;\\/strong&gt;”他说。&lt;\\/p&gt;&lt;p&gt;他认为，目前的大环境短期内对挖矿不是很有利，但如果全球疫情能在一个月内控制住，那还会大概率在减半前有一波（上涨）。“尽量扛过去吧，这也算是黎明前的黑暗了。”&lt;\\/p&gt;&lt;p&gt;杰捷矿业CEO刘款说，暂时还没有机器关机，其中包括部分已经到关机价格的机器。“跑几天试试，坚持10天，观望一下。其它现在没有任何措施可以实时。如果没有反弹，2-3个月会死掉一大部分的人，昨天晚上很多人失眠了。“&lt;\\/p&gt;&lt;p&gt;另外，她提到，作为矿机经销商，她感慨矿机根本卖不动了，而且，&lt;strong&gt;现在很多人都懵了，不知道矿机买卖该出多少价格&lt;\\/strong&gt;。但她说也有很多人在抄底，她就准备了一部分资金买矿机。&lt;\\/p&gt;&lt;p&gt;金山矿业创始人王栋文的情况与其他两位基本相似。他还比较担心这种暴跌会让影响到新参与者的认知或计划。而他也认为，在场内可以握好币，场外的择机参与，等未来大涨。&lt;\\/p&gt;&lt;p&gt;比特蓝鲸创始人陈雷介绍，他四个矿场约六万台矿机受到严重影响，高功耗机器已达到关机价，一些托管机器，他已按照客户要求进行了拉闸或临时调价处理，部分云算力平台客户产生客诉要处理，有一些未经历过这种大跌的客户表现得很焦虑。&lt;\\/p&gt;&lt;p&gt;“现在肯定还不是最难的时候，市场会加重担忧，比特币也有可能会进一步受到冲击，需要现金流的玩家都会比较辛苦，减半周期的叠加影响，可能会有很困难的局面，但这就是市场常态，玩家来来往往，行业在起起落落中逐步升级，风控手段丰富、现金流储备充裕、杠杆压力小的玩家会更安全一些，&lt;strong&gt;但换一个角度看，行业现金流紧张，要素交易萎靡的时候，可能也是危中有机的时候了。希望比特币能守住三千美元的关口。&lt;\\/strong&gt;”他说。&lt;\\/p&gt;<\\/p>\",\"tags\":[\"BTC\",\"行情\"],\"video\":null,\"category_id\":2,\"user_id\":3,\"id\":4,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"type_name\":\"文章\",\"video_src\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 20:49:20', '', 'http://127.0.0.1:8181/api/admin/articles', 'App\\Http\\Controllers\\ArticleController@save');
INSERT INTO `logs` VALUES (178, 'admin', '修改文章', 'PUT', '{\"t\":1584622189185,\"id\":4,\"name\":\"期货连环爆 矿工已蒙圈 3000美元是最后的关口？\",\"type\":\"1\",\"img\":\"\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"content\":\"<p>“比特币跌幅超过20%，历史上只发生过几次。而上一次暴跌，还要追溯到2020年3月12日，我的记忆很深刻，那感觉，仿佛就在昨天。”<\\/p><p>这是今天最火的段子之一。<\\/p><p>好好的怎么就暴跌了？而且直接减半！很多人逐渐相信：一定是庄家在现货市场疯狂砸盘，然后在期货市场里以空单获利？完美收割。<\\/p><p>真的如此吗？<\\/p><p><\\/p><p><img src=\\\"https:\\/\\/img.jinse.com\\/3055947_image3.png\\\" title=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\" alt=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\"><\\/p><p><\\/p><p><span style=\\\"font-size: 20px;\\\"><strong>比特币暴跌，这些原因你信吗？<\\/strong><\\/span><\\/p><p>Primitive&nbsp;Ventures&nbsp;创始合伙人Dovey（万卉）在微博发文，她总结了5个原因。<\\/p><blockquote>1、早期巨鲸抛售，不少10-11年的硬核玩家为了预备大萧条卖币。<p>2、杠杆合约连环爆仓导致流动性危机，没有熔断，没有央妈，只能靠市场肉身做价格调节。<\\/p><p>3、价格锚定物USDT无法弹性供给，法币出入金渠道堵塞，接下来还可能发生。<\\/p><p>4、矿工质押盘强制平仓 。<\\/p><p>5、交易所系统性风险。<\\/p><\\/blockquote><p>我们一一来分析Dovey说的是什么意思。<\\/p><p>合约连环爆仓，这是指由于短时间内暴跌，使得大部分做多账户被强制平仓，平仓抛售比特币，再次压低现货价格，进而再次造成更多多单爆仓。<\\/p><p>入金渠道就像输送新鲜血液的渠道，一旦被掐断，市场里没有钱，就无法承接卖单。这两天很多人应该都有体会，以火币为例，短时间USDT价格暴涨至8美金，而且卖家稀少，你想抄底比特币也很难。很多人的多单接近强平价格，却无法快速筹集足够的USDT补仓增加保证金，进而眼睁睁看着被强制平仓。<\\/p><p>BlockVC创始人徐英凯在微博贴了一张图，截图显示，某一时间，美元做出入金的Coinbase Pro的BTC价格为5598.98美元，而以USDT为出入金的火币全球站，BTC价格为4451.31美元，价差达到了1000美元。<\\/p><p>“真的是活久见，法币所和币币所可以达到价差如此之巨大，市场的无效性如此之强，在这样的市场里面要不输钱又不输币太难了。”他说。<\\/p><p>这很有可能就是因为USDT出入金渠道出了问题，流动性缺乏，使得价格疯狂下跌。但QKL123分析师刘庆认为，不排除是交易所系统卡顿或数据卡顿造成的。<\\/p><p>第四个原因与矿工有关，2019年以来，矿业不仅进入了集中化、专业化阶段，矿业也进入大规模金融化阶段。比如，矿工将挖出的比特币质押给第三方机构，换取USDT或法币购买矿机或建设矿场，这种加杠杆在币价稳定时风险较低。然而，此轮暴跌，当质押的比特币价格低于其质押的价格，就可能被平台强制平仓。这也加强了砸盘的力量。<\\/p><p>第五，交易所系统性风险。这一点万卉并没有具体指明是什么。<\\/p><p>不过，微博大VTumbleBit有提到，很多抵押借贷，包括交易所在Bitmax做对冲仓。他认为交易所拿着用户的币进行了衍生品操作。<\\/p><p>针对这个问题，FTX COO&nbsp;Constance Wang 认为，从Bitmax最终爆仓的单子价值看，大部分是散户，当然这不能说里面完全没有机构。但不能因此就把连环爆仓的罪名加到机构身上。<\\/p><p>徐英凯在微博进一步发文称，<strong>大家可能都明白这次的暴跌来自杠杆借贷和债务危机，但到底是谁的责任呢？从矿机产商、矿工矿场、交易所、投资人、借贷工具等等，所有人都是推动这一惨剧走到最后的一员，这是一场社会实验，这是一次集体的“合谋”。<\\/strong><\\/p><p><\\/p><p><img src=\\\"https:\\/\\/img.jinse.com\\/3055950_image3.png\\\" title=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\" alt=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\">万卉认为，12日晚，美联储15000亿美金的流动性支持才让市场回魂了10分钟，交易日内大盘跌了近10%，其实市场并不缺钱，缺的是信心。比特币的暴跌，也是流动性危机。<\\/p><p>FTX COO&nbsp;Constance Wang 在接受巴比特采访时分析，其实这次暴跌可以分两段，第一段大概是从9000-6500阶段，这很大原因是受大环境影响，包括美股熔断，新冠肺炎对宏观经济的影响和由此带来的恐慌情绪。第二段是6500-3800阶段，主要原因是连环爆仓。<\\/p><p>Constance Wang 认为，<strong>连环爆仓不是一个很新奇的现象，之前就出现过，但这次当各种因素杂糅在一起，才造成了非常大的影响和恐慌<\\/strong>。<\\/p><p>目前，随着比特币在触及3800美元后强势反弹至5000美元左右，市场的恐慌已有所好转，然而事情就这么结束了吗？或许不是。<\\/p><p><strong>比特币此轮暴跌开启了一个潘多拉魔盒，它不仅反映出流动性不足，它还反映出，至少在加密货币世界，系统性风险或许真的存在。<\\/strong><\\/p><p>比如，DeFi就首当其冲，目前，假设ETH进一步下跌，对于Maker DAO来说，它们就要像当年BitShares一样，最通过治理代币的拍卖以偿还抵押不足的不良债务。据悉，MakerDAO 在价格下跌前有超过 50 万美元的盈余，而目前是超过 400 万美元的债务。<\\/p><p>这还是其中之一，相信因为此轮暴跌，可能还有一些连环反应将逐步暴露出来。而它们对市场又会带来什么影响，只能拭目以待。<\\/p><p><span style=\\\"font-size: 20px;\\\"><strong>矿工蒙圈了，但很多人还在抄底、等待<\\/strong><\\/span><\\/p><p>很显然，暴跌对于比特币矿业而言简直就是噩梦。币印官网显示，在0.38元一度电的情况下，除最新的蚂蚁矿机S19Pro，其它比特币矿机电费占比均超过50%。诸多主流矿机进入关机时间，其中，占据全网算力约40%的蚂蚁矿机S9已经宣告退休。<\\/p><p>矿业大逃亡要来了吗？巴比特采访了几位矿业大咖。<\\/p><p>矿业自媒体，比特币矿工区块链矿哥称，自己的机器除蚂蚁S9关机外，其余还没有关机。但矿场部分客户的机器已经关机了，客户要观望几天。<\\/p><p>“<strong>我们会根据算力难度以及电价综合观察，到关机临界点了再看情况，走一步算一步，也在回笼资金，保证流动性。<\\/strong>”他说。<\\/p><p>他认为，目前的大环境短期内对挖矿不是很有利，但如果全球疫情能在一个月内控制住，那还会大概率在减半前有一波（上涨）。“尽量扛过去吧，这也算是黎明前的黑暗了。”<\\/p><p>杰捷矿业CEO刘款说，暂时还没有机器关机，其中包括部分已经到关机价格的机器。“跑几天试试，坚持10天，观望一下。其它现在没有任何措施可以实时。如果没有反弹，2-3个月会死掉一大部分的人，昨天晚上很多人失眠了。“<\\/p><p>另外，她提到，作为矿机经销商，她感慨矿机根本卖不动了，而且，<strong>现在很多人都懵了，不知道矿机买卖该出多少价格<\\/strong>。但她说也有很多人在抄底，她就准备了一部分资金买矿机。<\\/p><p>金山矿业创始人王栋文的情况与其他两位基本相似。他还比较担心这种暴跌会让影响到新参与者的认知或计划。而他也认为，在场内可以握好币，场外的择机参与，等未来大涨。<\\/p><p>比特蓝鲸创始人陈雷介绍，他四个矿场约六万台矿机受到严重影响，高功耗机器已达到关机价，一些托管机器，他已按照客户要求进行了拉闸或临时调价处理，部分云算力平台客户产生客诉要处理，有一些未经历过这种大跌的客户表现得很焦虑。<\\/p><p>“现在肯定还不是最难的时候，市场会加重担忧，比特币也有可能会进一步受到冲击，需要现金流的玩家都会比较辛苦，减半周期的叠加影响，可能会有很困难的局面，但这就是市场常态，玩家来来往往，行业在起起落落中逐步升级，风控手段丰富、现金流储备充裕、杠杆压力小的玩家会更安全一些，<strong>但换一个角度看，行业现金流紧张，要素交易萎靡的时候，可能也是危中有机的时候了。希望比特币能守住三千美元的关口。<\\/strong>”他说。<\\/p>\",\"tags\":[\"BTC\",\"行情\"],\"video\":null,\"category_id\":2,\"user_id\":3}', '{\"result\":{\"id\":4,\"user_id\":3,\"name\":\"期货连环爆 矿工已蒙圈 3000美元是最后的关口？\",\"img\":\"\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"content\":\"<p>“比特币跌幅超过20%，历史上只发生过几次。而上一次暴跌，还要追溯到2020年3月12日，我的记忆很深刻，那感觉，仿佛就在昨天。”<\\/p><p>这是今天最火的段子之一。<\\/p><p>好好的怎么就暴跌了？而且直接减半！很多人逐渐相信：一定是庄家在现货市场疯狂砸盘，然后在期货市场里以空单获利？完美收割。<\\/p><p>真的如此吗？<\\/p><p><\\/p><p><img src=\\\"https:\\/\\/img.jinse.com\\/3055947_image3.png\\\" title=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\" alt=\\\"I8niNKNmpiXKjaKsBemFjt0U8q1L9eEeVqES2SaL.png\\\"><\\/p><p><\\/p><p><span style=\\\"font-size: 20px;\\\"><strong>比特币暴跌，这些原因你信吗？<\\/strong><\\/span><\\/p><p>Primitive&nbsp;Ventures&nbsp;创始合伙人Dovey（万卉）在微博发文，她总结了5个原因。<\\/p><blockquote>1、早期巨鲸抛售，不少10-11年的硬核玩家为了预备大萧条卖币。<p>2、杠杆合约连环爆仓导致流动性危机，没有熔断，没有央妈，只能靠市场肉身做价格调节。<\\/p><p>3、价格锚定物USDT无法弹性供给，法币出入金渠道堵塞，接下来还可能发生。<\\/p><p>4、矿工质押盘强制平仓 。<\\/p><p>5、交易所系统性风险。<\\/p><\\/blockquote><p>我们一一来分析Dovey说的是什么意思。<\\/p><p>合约连环爆仓，这是指由于短时间内暴跌，使得大部分做多账户被强制平仓，平仓抛售比特币，再次压低现货价格，进而再次造成更多多单爆仓。<\\/p><p>入金渠道就像输送新鲜血液的渠道，一旦被掐断，市场里没有钱，就无法承接卖单。这两天很多人应该都有体会，以火币为例，短时间USDT价格暴涨至8美金，而且卖家稀少，你想抄底比特币也很难。很多人的多单接近强平价格，却无法快速筹集足够的USDT补仓增加保证金，进而眼睁睁看着被强制平仓。<\\/p><p>BlockVC创始人徐英凯在微博贴了一张图，截图显示，某一时间，美元做出入金的Coinbase Pro的BTC价格为5598.98美元，而以USDT为出入金的火币全球站，BTC价格为4451.31美元，价差达到了1000美元。<\\/p><p>“真的是活久见，法币所和币币所可以达到价差如此之巨大，市场的无效性如此之强，在这样的市场里面要不输钱又不输币太难了。”他说。<\\/p><p>这很有可能就是因为USDT出入金渠道出了问题，流动性缺乏，使得价格疯狂下跌。但QKL123分析师刘庆认为，不排除是交易所系统卡顿或数据卡顿造成的。<\\/p><p>第四个原因与矿工有关，2019年以来，矿业不仅进入了集中化、专业化阶段，矿业也进入大规模金融化阶段。比如，矿工将挖出的比特币质押给第三方机构，换取USDT或法币购买矿机或建设矿场，这种加杠杆在币价稳定时风险较低。然而，此轮暴跌，当质押的比特币价格低于其质押的价格，就可能被平台强制平仓。这也加强了砸盘的力量。<\\/p><p>第五，交易所系统性风险。这一点万卉并没有具体指明是什么。<\\/p><p>不过，微博大VTumbleBit有提到，很多抵押借贷，包括交易所在Bitmax做对冲仓。他认为交易所拿着用户的币进行了衍生品操作。<\\/p><p>针对这个问题，FTX COO&nbsp;Constance Wang 认为，从Bitmax最终爆仓的单子价值看，大部分是散户，当然这不能说里面完全没有机构。但不能因此就把连环爆仓的罪名加到机构身上。<\\/p><p>徐英凯在微博进一步发文称，<strong>大家可能都明白这次的暴跌来自杠杆借贷和债务危机，但到底是谁的责任呢？从矿机产商、矿工矿场、交易所、投资人、借贷工具等等，所有人都是推动这一惨剧走到最后的一员，这是一场社会实验，这是一次集体的“合谋”。<\\/strong><\\/p><p><\\/p><p><img src=\\\"https:\\/\\/img.jinse.com\\/3055950_image3.png\\\" title=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\" alt=\\\"lAZdyKrnDcOL1VzM6PEsoWAUSRQVok5sPXC0z4ZP.png\\\">万卉认为，12日晚，美联储15000亿美金的流动性支持才让市场回魂了10分钟，交易日内大盘跌了近10%，其实市场并不缺钱，缺的是信心。比特币的暴跌，也是流动性危机。<\\/p><p>FTX COO&nbsp;Constance Wang 在接受巴比特采访时分析，其实这次暴跌可以分两段，第一段大概是从9000-6500阶段，这很大原因是受大环境影响，包括美股熔断，新冠肺炎对宏观经济的影响和由此带来的恐慌情绪。第二段是6500-3800阶段，主要原因是连环爆仓。<\\/p><p>Constance Wang 认为，<strong>连环爆仓不是一个很新奇的现象，之前就出现过，但这次当各种因素杂糅在一起，才造成了非常大的影响和恐慌<\\/strong>。<\\/p><p>目前，随着比特币在触及3800美元后强势反弹至5000美元左右，市场的恐慌已有所好转，然而事情就这么结束了吗？或许不是。<\\/p><p><strong>比特币此轮暴跌开启了一个潘多拉魔盒，它不仅反映出流动性不足，它还反映出，至少在加密货币世界，系统性风险或许真的存在。<\\/strong><\\/p><p>比如，DeFi就首当其冲，目前，假设ETH进一步下跌，对于Maker DAO来说，它们就要像当年BitShares一样，最通过治理代币的拍卖以偿还抵押不足的不良债务。据悉，MakerDAO 在价格下跌前有超过 50 万美元的盈余，而目前是超过 400 万美元的债务。<\\/p><p>这还是其中之一，相信因为此轮暴跌，可能还有一些连环反应将逐步暴露出来。而它们对市场又会带来什么影响，只能拭目以待。<\\/p><p><span style=\\\"font-size: 20px;\\\"><strong>矿工蒙圈了，但很多人还在抄底、等待<\\/strong><\\/span><\\/p><p>很显然，暴跌对于比特币矿业而言简直就是噩梦。币印官网显示，在0.38元一度电的情况下，除最新的蚂蚁矿机S19Pro，其它比特币矿机电费占比均超过50%。诸多主流矿机进入关机时间，其中，占据全网算力约40%的蚂蚁矿机S9已经宣告退休。<\\/p><p>矿业大逃亡要来了吗？巴比特采访了几位矿业大咖。<\\/p><p>矿业自媒体，比特币矿工区块链矿哥称，自己的机器除蚂蚁S9关机外，其余还没有关机。但矿场部分客户的机器已经关机了，客户要观望几天。<\\/p><p>“<strong>我们会根据算力难度以及电价综合观察，到关机临界点了再看情况，走一步算一步，也在回笼资金，保证流动性。<\\/strong>”他说。<\\/p><p>他认为，目前的大环境短期内对挖矿不是很有利，但如果全球疫情能在一个月内控制住，那还会大概率在减半前有一波（上涨）。“尽量扛过去吧，这也算是黎明前的黑暗了。”<\\/p><p>杰捷矿业CEO刘款说，暂时还没有机器关机，其中包括部分已经到关机价格的机器。“跑几天试试，坚持10天，观望一下。其它现在没有任何措施可以实时。如果没有反弹，2-3个月会死掉一大部分的人，昨天晚上很多人失眠了。“<\\/p><p>另外，她提到，作为矿机经销商，她感慨矿机根本卖不动了，而且，<strong>现在很多人都懵了，不知道矿机买卖该出多少价格<\\/strong>。但她说也有很多人在抄底，她就准备了一部分资金买矿机。<\\/p><p>金山矿业创始人王栋文的情况与其他两位基本相似。他还比较担心这种暴跌会让影响到新参与者的认知或计划。而他也认为，在场内可以握好币，场外的择机参与，等未来大涨。<\\/p><p>比特蓝鲸创始人陈雷介绍，他四个矿场约六万台矿机受到严重影响，高功耗机器已达到关机价，一些托管机器，他已按照客户要求进行了拉闸或临时调价处理，部分云算力平台客户产生客诉要处理，有一些未经历过这种大跌的客户表现得很焦虑。<\\/p><p>“现在肯定还不是最难的时候，市场会加重担忧，比特币也有可能会进一步受到冲击，需要现金流的玩家都会比较辛苦，减半周期的叠加影响，可能会有很困难的局面，但这就是市场常态，玩家来来往往，行业在起起落落中逐步升级，风控手段丰富、现金流储备充裕、杠杆压力小的玩家会更安全一些，<strong>但换一个角度看，行业现金流紧张，要素交易萎靡的时候，可能也是危中有机的时候了。希望比特币能守住三千美元的关口。<\\/strong>”他说。<\\/p>\",\"number\":0,\"create_time\":\"2020-03-19 20:49:20\",\"update_time\":\"2020-03-19 20:49:20\",\"coin_id\":0,\"tags\":[\"BTC\",\"行情\"],\"good\":0,\"bad\":0,\"category_id\":2,\"video\":null,\"type\":\"1\",\"zan\":0,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/126e57edf4611a66cc43dbefcf6f43a22514.png\",\"type_name\":\"文章\",\"video_src\":\"\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 20:49:49', '', 'http://127.0.0.1:8181/api/admin/articles/4', 'App\\Http\\Controllers\\ArticleController@update');
INSERT INTO `logs` VALUES (179, 'admin', '登录', 'POST', '{\"t\":1584633577768,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"18972b77-b29e-4542-8639-59fbd1a7bd85\",\"captcha\":\"8100\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-19 16:29:38\",\"token\":\"l6aYoKlB5AeSktNmNV99FBI3mT8WdBmmw5XvQxlObseXr5owwS0Cc9AOlqQj7H84ZzVOxNTv24YWgcYm\",\"updateTime\":\"2020-03-19 15:59:38\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-19 23:59:38', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (180, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_19\\/9eb5573529e6e80966ac9730536751a78983.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/9eb5573529e6e80966ac9730536751a78983.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:08:45', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (181, 'admin', '新增专题', 'POST', '{\"t\":1584641331206,\"id\":null,\"name\":\"金色周刊 | 暴跌行情下的加密货币_3月第2周\",\"content\":\"金色周刊第5期（3月第2周），带您回顾一周重要新闻、行情与合约数据、矿业信息、项目动态、技术进展等全行业资讯动态。\",\"img\":\"\\/storage\\/2020_03_19\\/9eb5573529e6e80966ac9730536751a78983.png\",\"user_id\":3}', '{\"result\":{\"name\":\"金色周刊 | 暴跌行情下的加密货币_3月第2周\",\"img\":\"\\/storage\\/2020_03_19\\/9eb5573529e6e80966ac9730536751a78983.png\",\"content\":\"金色周刊第5期（3月第2周），带您回顾一周重要新闻、行情与合约数据、矿业信息、项目动态、技术进展等全行业资讯动态。\",\"user_id\":3,\"id\":2,\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/9eb5573529e6e80966ac9730536751a78983.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:08:51', '', 'http://127.0.0.1:8181/api/admin/subjects', 'App\\Http\\Controllers\\SubjectController@save');
INSERT INTO `logs` VALUES (182, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"msg\":\"添加失败\",\"code\":404}', '127.0.0.1', '2020-03-20 02:24:53', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (183, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"msg\":\"添加失败\",\"code\":404}', '127.0.0.1', '2020-03-20 02:25:19', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (184, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:25:38', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (185, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:28:52', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (186, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:28:53', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (187, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:29:06', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (188, 'admin', '挂载专题文章', 'POST', '[1,2]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:29:12', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (189, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:29:21', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (190, 'admin', '挂载专题文章', 'POST', '[1]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:29:46', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (191, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 02:29:50', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (192, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"msg\":\"删除失败\",\"code\":404}', '127.0.0.1', '2020-03-20 03:51:08', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (193, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"result\":0,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:53:21', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (194, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"result\":0,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:54:00', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (195, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"msg\":\"删除失败\",\"code\":404}', '127.0.0.1', '2020-03-20 03:54:49', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (196, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"result\":0,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:55:07', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (197, 'admin', '删除专题文章', 'DELETE', '[18]', '{\"result\":\"select * from `subject_articles` where `article_id` in (?) and `subject_id` = ?\",\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:56:24', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (198, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"result\":\"select * from `subject_articles` where `id` in (?, ?) and `subject_id` = ?\",\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:58:56', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (199, 'admin', '删除专题文章', 'DELETE', '[18,21]', '{\"result\":2,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:59:27', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (200, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:59:36', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (201, 'admin', '删除专题文章', 'DELETE', '[23,24,25,26]', '{\"result\":4,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:59:47', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (202, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 03:59:54', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (203, 'admin', '删除专题文章', 'DELETE', '[29,30]', '{\"result\":2,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:01:02', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (204, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:01:21', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (205, 'admin', '修改专题', 'PUT', '{\"t\":1584648122649,\"id\":1,\"name\":\"比特币单日跌幅超20% BTC“减半行情”短期难现？\",\"content\":\"2020年3月，加密货币市场持续走低，特别是在3月12日，比特币单日下跌幅度超过25%，引发市场恐慌。2020年究竟是产量减半，还是币价减半？\",\"img\":\"\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\",\"user_id\":3}', '{\"result\":{\"id\":1,\"user_id\":3,\"name\":\"比特币单日跌幅超20% BTC“减半行情”短期难现？\",\"img\":\"\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\",\"content\":\"2020年3月，加密货币市场持续走低，特别是在3月12日，比特币单日下跌幅度超过25%，引发市场恐慌。2020年究竟是产量减半，还是币价减半？\",\"create_time\":\"2020-03-19 18:29:27\",\"update_time\":\"2020-03-19 18:29:27\",\"img_src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_19\\/4b25007410f70c09b410df8dd60641074903.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:02:02', '', 'http://127.0.0.1:8181/api/admin/subjects/1', 'App\\Http\\Controllers\\SubjectController@update');
INSERT INTO `logs` VALUES (206, 'admin', '删除专题文章', 'DELETE', '[31,32,33,34]', '{\"result\":4,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:03:07', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (207, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:03:11', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (208, 'admin', '删除专题文章', 'DELETE', '[35]', '{\"result\":1,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:03:44', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (209, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:03:50', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (210, 'admin', '删除专题文章', 'DELETE', '[39,40,41,42]', '{\"result\":4,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:03:57', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@del_article');
INSERT INTO `logs` VALUES (211, 'admin', '挂载专题文章', 'POST', '[1,2,3,4]', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 04:04:03', '', 'http://127.0.0.1:8181/api/admin/subjects/2/articles', 'App\\Http\\Controllers\\SubjectController@add_article');
INSERT INTO `logs` VALUES (212, 'admin', '登录', 'POST', '{\"t\":1584688651827,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"a36cff8b-5d66-4431-8206-c3fdfd1754b2\",\"captcha\":\"9588\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-20 07:47:32\",\"token\":\"XuM6vA2fXG9rYFi1hwwxbuht1NTszQ1kRBr53HMQuto0r87hzoXfCYvEJNL4ZdNDw1g4IXGjopfvAWTX\",\"updateTime\":\"2020-03-20 07:17:32\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-20 15:17:32', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (213, 'admin', '登录', 'POST', '{\"t\":1584881644254,\"name\":\"admin\",\"password\":\"admin\",\"uuid\":\"c8e3439f-d58d-4e6c-809f-7ae5a745406a\",\"captcha\":\"5439\"}', '{\"result\":{\"adminId\":1,\"expire\":1800,\"expireTime\":\"2020-03-22 13:24:05\",\"token\":\"I0izmP0vSKSm2q7EkEhkYr40jRa56lBhYxOPj5mG19ZV23lFx0N8lIK9NjDBhBSyJdQlhz9FKvdxI8nM\",\"updateTime\":\"2020-03-22 12:54:05\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-22 20:54:05', '', 'http://127.0.0.1:8181/api/admin/login', 'App\\Http\\Controllers\\Auth\\AdminLoginController@login');
INSERT INTO `logs` VALUES (214, 'admin', '新增单页', 'POST', '{\"t\":1584882773591,\"id\":null,\"name\":\"版权声明\",\"type\":\"banquan\",\"content\":\"<p>\\n1、本网站刊载的所有内容，包括但不限于文字报道、图片、视频、图表、标志标识、商标、版面设计、专栏目录与名称、内容分类标准等，均受《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国专利法》及适用之国际公约中有关著作权、商标权、专利权以及或其它财产所有权法律的保护，相应的版权或许可使用权均属本网站所有。<\\/p> <p>2、凡未经金色财经书面授权，任何媒体、网站及个人不得转载、复制、重制、改动、展示或使用界面网站的局部或全部的内容或服务，或在非金色财经网站所属服务器上建立镜像。如果已转载，请自行删除。同时，我们保留进一步追究相关行为主体的法律责任的权利。<\\/p> <p>3、我们希望与各媒体合作，签订著作权有偿使用许可合同。凡侵犯金色财经版权等知识产权的，金色财经必依法追究其法律责任。<\\/p> <p>4、已经本网站授权使用的，应按照授权合同所规定条款使用。<\\/p> <p>5、本网站摘录或转载的属于第三方的信息，目的在于传递更多信息，并不代表本网站赞同其观点和对其真实性负责，转载信息版权属于原媒体及作者。如其他媒体、网站或个人擅自转载使用，请自负版权等法律责任。<\\/p>\"}', '{\"result\":{\"name\":\"版权声明\",\"content\":\"<p>\\n1、本网站刊载的所有内容，包括但不限于文字报道、图片、视频、图表、标志标识、商标、版面设计、专栏目录与名称、内容分类标准等，均受《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国专利法》及适用之国际公约中有关著作权、商标权、专利权以及或其它财产所有权法律的保护，相应的版权或许可使用权均属本网站所有。<\\/p> <p>2、凡未经金色财经书面授权，任何媒体、网站及个人不得转载、复制、重制、改动、展示或使用界面网站的局部或全部的内容或服务，或在非金色财经网站所属服务器上建立镜像。如果已转载，请自行删除。同时，我们保留进一步追究相关行为主体的法律责任的权利。<\\/p> <p>3、我们希望与各媒体合作，签订著作权有偿使用许可合同。凡侵犯金色财经版权等知识产权的，金色财经必依法追究其法律责任。<\\/p> <p>4、已经本网站授权使用的，应按照授权合同所规定条款使用。<\\/p> <p>5、本网站摘录或转载的属于第三方的信息，目的在于传递更多信息，并不代表本网站赞同其观点和对其真实性负责，转载信息版权属于原媒体及作者。如其他媒体、网站或个人擅自转载使用，请自负版权等法律责任。<\\/p>\",\"type\":\"banquan\",\"id\":1},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-22 21:12:54', '', 'http://127.0.0.1:8181/api/admin/pages', 'App\\Http\\Controllers\\PageController@save');
INSERT INTO `logs` VALUES (215, 'admin', '新增单页', 'POST', '{\"t\":1584882972232,\"id\":null,\"name\":\"服务协议\",\"type\":\"xieyi\",\"content\":\"<p>服务协议<\\/p>\"}', '{\"result\":{\"name\":\"服务协议\",\"content\":\"<p>服务协议<\\/p>\",\"type\":\"xieyi\",\"id\":2},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-22 21:16:12', '', 'http://127.0.0.1:8181/api/admin/pages', 'App\\Http\\Controllers\\PageController@save');
INSERT INTO `logs` VALUES (216, 'admin', '新增单页', 'POST', '{\"t\":1584882996758,\"id\":null,\"name\":\"隐私政策\",\"type\":\"yinsi\",\"content\":\"<p>隐私政策<\\/p><p><br><\\/p>\"}', '{\"result\":{\"name\":\"隐私政策\",\"content\":\"<p>隐私政策<\\/p><p><br><\\/p>\",\"type\":\"yinsi\",\"id\":3},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-22 21:16:37', '', 'http://127.0.0.1:8181/api/admin/pages', 'App\\Http\\Controllers\\PageController@save');
INSERT INTO `logs` VALUES (217, 'admin', '新增公告消息', 'POST', '{\"t\":1584884617350,\"id\":null,\"name\":\"新版本更新啦！\",\"href\":null,\"content\":\"<p><b>新版本更新啦！<\\/b><\\/p><p><br><\\/p>\"}', '{\"result\":{\"name\":\"新版本更新啦！\",\"content\":\"<p><b>新版本更新啦！<\\/b><\\/p><p><br><\\/p>\",\"href\":null,\"id\":1},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-22 21:43:37', '', 'http://127.0.0.1:8181/api/admin/notices', 'App\\Http\\Controllers\\NoticeController@save');
INSERT INTO `logs` VALUES (218, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_22\\/01649517a218b8878221622d2a5856893885.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_22\\/01649517a218b8878221622d2a5856893885.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:13', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (219, 'admin', '修改会员', 'PUT', '{\"t\":1584893835387,\"id\":2,\"username\":\"ziye\",\"nickname\":\"紫夜\",\"avatar\":\"\\/storage\\/2020_03_22\\/01649517a218b8878221622d2a5856893885.png\",\"status\":1,\"password\":null,\"password2\":null,\"phone\":\"13996609880\"}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:15', '', 'http://127.0.0.1:8181/api/admin/users/2', 'App\\Http\\Controllers\\UserController@update');
INSERT INTO `logs` VALUES (220, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_22\\/7b27ca8843f9c451ef1c0e32c33e22cd8778.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_22\\/7b27ca8843f9c451ef1c0e32c33e22cd8778.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:28', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (221, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_22\\/ff2713dc42ae5becf7c694704c9da79f6592.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_22\\/ff2713dc42ae5becf7c694704c9da79f6592.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:31', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (222, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_22\\/86204360b823dc87147f41e913d70a2c2439.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_22\\/86204360b823dc87147f41e913d70a2c2439.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:37', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (223, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_22\\/4a37d4495d4b86b852d3e409a2d437f99466.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_22\\/4a37d4495d4b86b852d3e409a2d437f99466.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:40', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (224, '', '上传图片', 'POST', '{\"file\":{}}', '{\"result\":{\"path\":\"\\/storage\\/2020_03_22\\/eb158e173733c27795acd4591a4e80ad7403.png\",\"src\":\"http:\\/\\/127.0.0.1:8181\\/storage\\/2020_03_22\\/eb158e173733c27795acd4591a4e80ad7403.png\"},\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:46', '', 'http://127.0.0.1:8181/web/upload', 'App\\Http\\Controllers\\CommonController@upload');
INSERT INTO `logs` VALUES (225, 'admin', '修改会员', 'PUT', '{\"t\":1584893867793,\"id\":3,\"username\":\"jinse\",\"nickname\":\"金色新闻\",\"avatar\":\"\\/storage\\/2020_03_22\\/eb158e173733c27795acd4591a4e80ad7403.png\",\"status\":1,\"password\":null,\"password2\":null,\"phone\":null}', '{\"result\":true,\"msg\":\"success\",\"code\":200}', '127.0.0.1', '2020-03-23 00:17:48', '', 'http://127.0.0.1:8181/api/admin/users/3', 'App\\Http\\Controllers\\UserController@update');

-- ----------------------------
-- Table structure for manager_roles
-- ----------------------------
DROP TABLE IF EXISTS `manager_roles`;
CREATE TABLE `manager_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户与角色对应关系主键',
  `admin_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_roles
-- ----------------------------
INSERT INTO `manager_roles` VALUES (1, 1, 1);
INSERT INTO `manager_roles` VALUES (2, 1, 2);
INSERT INTO `manager_roles` VALUES (7, 9, 5);
INSERT INTO `manager_roles` VALUES (9, 2, 2);

-- ----------------------------
-- Table structure for managers
-- ----------------------------
DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '系统用户主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` tinyint(4) NULL DEFAULT 1 COMMENT '性别0女1男',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_admin_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `remake` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of managers
-- ----------------------------
INSERT INTO `managers` VALUES (1, 'admin', '$2y$10$0MJYFbSJFpeTIL2eeoslZOJ5RgQLg/YzBI3U4uCZkGJHOG9nLdf1G', 1, '123086461@qq.com', '18600231871', 1, 1, '2020-02-21 18:17:49', '2020-02-21 18:17:49', NULL);
INSERT INTO `managers` VALUES (2, 'test', '$2y$10$fjgn76nRpF9ZJVOhDpnfuOL2tr4d5UvjBUvijbRqiIJ0B708zqeoq', 1, '12@qq.com', '13996609880', 1, 1, '2020-02-22 09:13:36', '2020-02-22 09:45:00', NULL);
INSERT INTO `managers` VALUES (4, 'test2', '$2y$10$fjgn76nRpF9ZJVOhDpnfuOL2tr4d5UvjBUvijbRqiIJ0B708zqeoq', 1, '123456@qq.com', '13996609880', 1, 1, '2020-02-22 09:15:02', '2020-02-22 09:15:02', NULL);
INSERT INTO `managers` VALUES (7, 'test5', '$2y$10$fjgn76nRpF9ZJVOhDpnfuOL2tr4d5UvjBUvijbRqiIJ0B708zqeoq', 1, '123456@qq.com', '13996609880', 1, 1, '2020-02-22 09:15:02', '2020-02-22 09:15:02', NULL);
INSERT INTO `managers` VALUES (8, 'test6', '$2y$10$fjgn76nRpF9ZJVOhDpnfuOL2tr4d5UvjBUvijbRqiIJ0B708zqeoq', 1, '123456@qq.com', '13996609880', 1, 1, '2020-02-22 09:15:02', '2020-02-22 09:15:02', NULL);
INSERT INTO `managers` VALUES (9, 'test8', '$2y$10$UpurBs4rttMKoSobJ4W73Oi1io/w2Zk8gvtd9vf2YNiihtgtVUJ4i', 1, '54@qq.com', '13996609880', 1, 1, '2020-02-26 14:53:01', '2020-02-26 14:53:01', NULL);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `parent_id` bigint(22) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `orders` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'system', 0);
INSERT INTO `menus` VALUES (2, 1, '管理员列表', 'sys/user', NULL, 1, 'admin', 1);
INSERT INTO `menus` VALUES (3, 1, '角色管理', 'sys/role', NULL, 1, 'role', 2);
INSERT INTO `menus` VALUES (4, 1, '菜单管理', 'sys/menu', NULL, 1, 'menu', 3);
INSERT INTO `menus` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `menus` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `menus` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `menus` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `menus` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `menus` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:list', 2, NULL, 0);
INSERT INTO `menus` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:list', 2, NULL, 0);
INSERT INTO `menus` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `menus` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `menus` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `menus` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `menus` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `menus` VALUES (27, 1, '参数管理', 'sys/config', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, 'config', 6);
INSERT INTO `menus` VALUES (29, 1, '系统日志', 'sys/log', 'sys:log:list', 1, 'log', 8);
INSERT INTO `menus` VALUES (30, 1, '文件上传', 'oss/oss', 'sys:oss:all', 1, 'oss', 6);
INSERT INTO `menus` VALUES (32, 1, 'fdfs', 'fdfs/fdfs', 'sys:fdfs:all', 1, 'oss', 7);
INSERT INTO `menus` VALUES (33, 0, '业务管理', NULL, NULL, 0, 'zonghe', 2);
INSERT INTO `menus` VALUES (43, 33, '内容管理', NULL, NULL, 0, 'bianji', 3);
INSERT INTO `menus` VALUES (44, 43, '文章管理', 'web/article', 'web:article:list,web:article:info,web:article:save,web:article:update,web:article:delete', 1, 'log', 1);
INSERT INTO `menus` VALUES (45, 33, '用户管理', NULL, '', 0, 'admin', 2);
INSERT INTO `menus` VALUES (46, 45, '会员列表', 'web/user', 'web:user:list,web:user:info,web:user:save,web:user:update,web:user:delete', 1, 'admin', 1);
INSERT INTO `menus` VALUES (47, 33, '网站管理', NULL, '', 0, 'config', 1);
INSERT INTO `menus` VALUES (48, 47, '网站信息', 'web/info', 'web:info:list,web:info:info,web:info:save,web:info:update,web:info:delete', 1, 'shezhi', 1);
INSERT INTO `menus` VALUES (49, 47, 'Banner管理', 'web/banner', 'web:banner:list,web:banner:info,web:banner:save,web:banner:update,web:banner:delete', 1, 'zhedie', 999);
INSERT INTO `menus` VALUES (50, 43, '分类管理', 'web/category', 'web:category:list,web:category:info,web:category:save,web:category:update,web:category:delete', 1, 'menu', 999);
INSERT INTO `menus` VALUES (51, 43, '标签管理', 'web/tag', 'web:tag:list,web:tag:info,web:tag:save,web:tag:update,web:tag:delete', 1, 'zonghe', 999);
INSERT INTO `menus` VALUES (52, 47, '意见反馈', 'web/feedback', 'web:feedback:list,web:feedback:info,web:feedback:save,web:feedback:update,web:feedback:delete', 1, 'pinglun', 999);
INSERT INTO `menus` VALUES (53, 45, '实名认证', 'web/user_verify', 'web:user_verify:list,web:user_verify:info,web:user_verify:save,web:user_verify:update,web:user_verify:delete', 1, 'role', 999);
INSERT INTO `menus` VALUES (54, 43, '专题管理', 'web/subject', 'web:subject:list,web:subject:info,web:subject:save,web:subject:update,web:subject:delete,web:subject:article', 1, 'daohang', 999);
INSERT INTO `menus` VALUES (55, 43, '热词管理', 'web/hot_word', 'web:hot_word:list,web:hot_word:info,web:hot_word:save,web:hot_word:update,web:hot_word:delete', 1, 'sousuo', 999);
INSERT INTO `menus` VALUES (56, 47, '单页管理', 'web/page', 'web:page:list,web:page:info,web:page:save,web:page:update,web:page:delete', 1, 'bianji', 999);
INSERT INTO `menus` VALUES (57, 43, '评论管理', 'web/comment', 'web:comment:list,web:comment:info,web:comment:save,web:comment:update,web:comment:delete', 1, 'pinglun', 999);
INSERT INTO `menus` VALUES (58, 47, '系统消息', 'web/notice', 'web:notice:list,web:notice:info,web:notice:save,web:notice:update,web:notice:delete', 1, 'log', 999);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 'Lorem ipsum dolor sit amet', '请自行baidu,google22222', '2020-03-04 15:32:20', '2020-03-04 16:07:42');
INSERT INTO `messages` VALUES (2, 'Maecenas iaculis urna eget massa viverra', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:32:35', '2020-03-04 15:32:35');
INSERT INTO `messages` VALUES (3, 'Maecenas at urna rhoncus', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:33:29', '2020-03-04 15:33:29');
INSERT INTO `messages` VALUES (4, 'Phasellus non sapien', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:33:43', '2020-03-04 15:33:43');
INSERT INTO `messages` VALUES (5, 'Nam auctor velit molestie ante', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:33:58', '2020-03-04 15:33:58');
INSERT INTO `messages` VALUES (6, 'Suspendisse imperdiet', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:34:11', '2020-03-04 15:34:11');
INSERT INTO `messages` VALUES (7, 'Fusce at erat eu ante pulvinar egestas', 'Mauris mattis at erat placerat viverra. Proin euismod fermentum eros lobortis ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Donec et ullamcorper metus. Integer ut diam ac arcu vulputate ultricies. Sed finibus elit eget pulvinar pretium. Quisque nec lacus ex.', '2020-03-04 15:34:24', '2020-03-04 15:34:24');
INSERT INTO `messages` VALUES (1111, 'Vivamus sed odio fermentum', '请自行查找baidu,google11111', '2020-03-04 15:34:51', '2020-03-04 16:11:36');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_03_28_135417_create_withdraw_log_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_07_08_105204_create_balances_logs_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_07_08_110222_create_balances_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_01_09_085010_create_users_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_01_09_085056_create_assets_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_01_09_085111_create_assets_logs_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_01_09_085139_create_password_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_01_09_085151_create_settings_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_01_09_085205_create_transactions_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_01_09_090234_create_address_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_02_02_121722_create_boxes_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_02_02_152738_create_block_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_03_14_162800_create_address_table', 0);
INSERT INTO `migrations` VALUES (14, '2020_03_14_162800_create_articles_table', 0);
INSERT INTO `migrations` VALUES (15, '2020_03_14_162800_create_assets_table', 0);
INSERT INTO `migrations` VALUES (16, '2020_03_14_162800_create_assets_logs_table', 0);
INSERT INTO `migrations` VALUES (17, '2020_03_14_162800_create_balances_table', 0);
INSERT INTO `migrations` VALUES (18, '2020_03_14_162800_create_balances_logs_table', 0);
INSERT INTO `migrations` VALUES (19, '2020_03_14_162800_create_banners_table', 0);
INSERT INTO `migrations` VALUES (20, '2020_03_14_162800_create_block_table', 0);
INSERT INTO `migrations` VALUES (21, '2020_03_14_162800_create_boxes_table', 0);
INSERT INTO `migrations` VALUES (22, '2020_03_14_162800_create_calendars_table', 0);
INSERT INTO `migrations` VALUES (23, '2020_03_14_162800_create_categories_table', 0);
INSERT INTO `migrations` VALUES (24, '2020_03_14_162800_create_collections_table', 0);
INSERT INTO `migrations` VALUES (25, '2020_03_14_162800_create_feedbacks_table', 0);
INSERT INTO `migrations` VALUES (26, '2020_03_14_162800_create_follows_table', 0);
INSERT INTO `migrations` VALUES (27, '2020_03_14_162800_create_histories_table', 0);
INSERT INTO `migrations` VALUES (28, '2020_03_14_162800_create_hot_words_table', 0);
INSERT INTO `migrations` VALUES (29, '2020_03_14_162800_create_password_table', 0);
INSERT INTO `migrations` VALUES (30, '2020_03_14_162800_create_settings_table', 0);
INSERT INTO `migrations` VALUES (31, '2020_03_14_162800_create_subject_articles_table', 0);
INSERT INTO `migrations` VALUES (32, '2020_03_14_162800_create_subjects_table', 0);
INSERT INTO `migrations` VALUES (33, '2020_03_14_162800_create_tags_table', 0);
INSERT INTO `migrations` VALUES (34, '2020_03_14_162800_create_transactions_table', 0);
INSERT INTO `migrations` VALUES (35, '2020_03_14_162800_create_user_thirds_table', 0);
INSERT INTO `migrations` VALUES (36, '2020_03_14_162800_create_user_verifies_table', 0);
INSERT INTO `migrations` VALUES (37, '2020_03_14_162800_create_users_table', 0);
INSERT INTO `migrations` VALUES (38, '2020_03_14_162800_create_withdraw_log_table', 0);
INSERT INTO `migrations` VALUES (39, '2020_03_14_165122_create_address_table', 0);
INSERT INTO `migrations` VALUES (40, '2020_03_14_165122_create_articles_table', 0);
INSERT INTO `migrations` VALUES (41, '2020_03_14_165122_create_assets_table', 0);
INSERT INTO `migrations` VALUES (42, '2020_03_14_165122_create_assets_logs_table', 0);
INSERT INTO `migrations` VALUES (43, '2020_03_14_165122_create_balances_table', 0);
INSERT INTO `migrations` VALUES (44, '2020_03_14_165122_create_balances_logs_table', 0);
INSERT INTO `migrations` VALUES (45, '2020_03_14_165122_create_banners_table', 0);
INSERT INTO `migrations` VALUES (46, '2020_03_14_165122_create_block_table', 0);
INSERT INTO `migrations` VALUES (47, '2020_03_14_165122_create_boxes_table', 0);
INSERT INTO `migrations` VALUES (48, '2020_03_14_165122_create_calendars_table', 0);
INSERT INTO `migrations` VALUES (49, '2020_03_14_165122_create_categories_table', 0);
INSERT INTO `migrations` VALUES (50, '2020_03_14_165122_create_collections_table', 0);
INSERT INTO `migrations` VALUES (51, '2020_03_14_165122_create_feedbacks_table', 0);
INSERT INTO `migrations` VALUES (52, '2020_03_14_165122_create_follows_table', 0);
INSERT INTO `migrations` VALUES (53, '2020_03_14_165122_create_histories_table', 0);
INSERT INTO `migrations` VALUES (54, '2020_03_14_165122_create_hot_words_table', 0);
INSERT INTO `migrations` VALUES (55, '2020_03_14_165122_create_password_table', 0);
INSERT INTO `migrations` VALUES (56, '2020_03_14_165122_create_settings_table', 0);
INSERT INTO `migrations` VALUES (57, '2020_03_14_165122_create_subject_articles_table', 0);
INSERT INTO `migrations` VALUES (58, '2020_03_14_165122_create_subjects_table', 0);
INSERT INTO `migrations` VALUES (59, '2020_03_14_165122_create_tags_table', 0);
INSERT INTO `migrations` VALUES (60, '2020_03_14_165122_create_transactions_table', 0);
INSERT INTO `migrations` VALUES (61, '2020_03_14_165122_create_user_thirds_table', 0);
INSERT INTO `migrations` VALUES (62, '2020_03_14_165122_create_user_verifies_table', 0);
INSERT INTO `migrations` VALUES (63, '2020_03_14_165122_create_users_table', 0);
INSERT INTO `migrations` VALUES (64, '2020_03_14_165122_create_withdraw_log_table', 0);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `href` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统消息/公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES (1, '<p><b>新版本更新啦！</b></p><p><br></p>', '2020-03-22 21:43:37', '2020-03-22 21:43:37', '新版本更新啦！', NULL);

-- ----------------------------
-- Table structure for oss
-- ----------------------------
DROP TABLE IF EXISTS `oss`;
CREATE TABLE `oss`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文件上传主键',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `document_type` tinyint(3) NULL DEFAULT NULL COMMENT '文档类型',
  `type` tinyint(3) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '文件上传' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '单页类型(默认1)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '网站单页内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, '<p>\n1、本网站刊载的所有内容，包括但不限于文字报道、图片、视频、图表、标志标识、商标、版面设计、专栏目录与名称、内容分类标准等，均受《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国专利法》及适用之国际公约中有关著作权、商标权、专利权以及或其它财产所有权法律的保护，相应的版权或许可使用权均属本网站所有。</p> <p>2、凡未经金色财经书面授权，任何媒体、网站及个人不得转载、复制、重制、改动、展示或使用界面网站的局部或全部的内容或服务，或在非金色财经网站所属服务器上建立镜像。如果已转载，请自行删除。同时，我们保留进一步追究相关行为主体的法律责任的权利。</p> <p>3、我们希望与各媒体合作，签订著作权有偿使用许可合同。凡侵犯金色财经版权等知识产权的，金色财经必依法追究其法律责任。</p> <p>4、已经本网站授权使用的，应按照授权合同所规定条款使用。</p> <p>5、本网站摘录或转载的属于第三方的信息，目的在于传递更多信息，并不代表本网站赞同其观点和对其真实性负责，转载信息版权属于原媒体及作者。如其他媒体、网站或个人擅自转载使用，请自负版权等法律责任。</p>', '2020-03-22 21:12:54', '2020-03-22 21:12:54', '版权声明', 'banquan');
INSERT INTO `pages` VALUES (2, '<p>服务协议</p>', '2020-03-22 21:16:12', '2020-03-22 21:16:12', '服务协议', 'xieyi');
INSERT INTO `pages` VALUES (3, '<p>隐私政策</p><p><br></p>', '2020-03-22 21:16:37', '2020-03-22 21:16:37', '隐私政策', 'yinsi');

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `href` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '友链/合作伙伴' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO `partners` VALUES (1, 'CC', '/storage/2020_03_04/10db0f4f5a7e8cfed5439496fe55127c6867.png', 'http://www.baidu.com', '2020-03-04 14:02:06', '2020-03-04 14:03:06');
INSERT INTO `partners` VALUES (2, 'VV', '/storage/2020_03_04/a5d23c8fa741bd789c6cfca606483a166776.png', NULL, '2020-03-04 14:04:15', '2020-03-04 14:04:15');
INSERT INTO `partners` VALUES (4, 'SS', '/storage/2020_03_04/48f03c0cfa622e37e76879dec40100f68219.png', NULL, '2020-03-04 14:04:46', '2020-03-04 14:04:46');
INSERT INTO `partners` VALUES (12, 'SS', '/storage/2020_03_04/48f03c0cfa622e37e76879dec40100f68219.png', NULL, '2020-03-04 14:04:46', '2020-03-04 14:04:46');
INSERT INTO `partners` VALUES (13, 'dd', '/storage/2020_03_04/2a66c9c7ea43a79aff416967017c4396239.png', NULL, '2020-03-04 14:05:02', '2020-03-04 14:05:02');

-- ----------------------------
-- Table structure for password
-- ----------------------------
DROP TABLE IF EXISTS `password`;
CREATE TABLE `password`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password
-- ----------------------------
INSERT INTO `password` VALUES (1, 'b83e914a1d7deb1762748b0872f9e3efcf7c22368866a81976e7833d0f111c6e', '2020-03-08 05:44:56', '2020-03-08 05:44:56');
INSERT INTO `password` VALUES (8, '2cd2813c9ab605053d1827e93ea43e4e88b384aeb52f08b641856b5bfe25a397', '2020-03-16 11:29:56', '2020-03-16 11:29:56');
INSERT INTO `password` VALUES (9, '830d57478b435a1223d2d6e636e66f2b7c20f2cb6207a911de4c837ccea4fd23', '2020-03-16 11:57:50', '2020-03-16 11:57:50');
INSERT INTO `password` VALUES (10, '820cb98759e695c42212e46793ecb1050e0839014cfbd8f9754851eba524672a', '2020-03-16 12:14:37', '2020-03-16 12:14:37');
INSERT INTO `password` VALUES (11, 'b7f2f4acbb93b54b51f5e6319ef771cb27dbb7a445c7352988484a4af4bc91de', '2020-03-19 10:23:46', '2020-03-19 10:23:46');

-- ----------------------------
-- Table structure for role_menus
-- ----------------------------
DROP TABLE IF EXISTS `role_menus`;
CREATE TABLE `role_menus`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色与菜单对应关系主键',
  `role_id` bigint(22) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(22) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 223 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menus
-- ----------------------------
INSERT INTO `role_menus` VALUES (1, 1, 1);
INSERT INTO `role_menus` VALUES (4, 1, 2);
INSERT INTO `role_menus` VALUES (5, 1, 3);
INSERT INTO `role_menus` VALUES (6, 1, 15);
INSERT INTO `role_menus` VALUES (7, 1, 16);
INSERT INTO `role_menus` VALUES (8, 1, 17);
INSERT INTO `role_menus` VALUES (125, 3, -666666);
INSERT INTO `role_menus` VALUES (131, 4, -666666);
INSERT INTO `role_menus` VALUES (188, 2, 1);
INSERT INTO `role_menus` VALUES (189, 2, 2);
INSERT INTO `role_menus` VALUES (190, 2, 15);
INSERT INTO `role_menus` VALUES (191, 2, 16);
INSERT INTO `role_menus` VALUES (192, 2, 17);
INSERT INTO `role_menus` VALUES (193, 2, 18);
INSERT INTO `role_menus` VALUES (194, 2, 3);
INSERT INTO `role_menus` VALUES (195, 2, 19);
INSERT INTO `role_menus` VALUES (196, 2, 20);
INSERT INTO `role_menus` VALUES (197, 2, 21);
INSERT INTO `role_menus` VALUES (198, 2, 22);
INSERT INTO `role_menus` VALUES (199, 2, 4);
INSERT INTO `role_menus` VALUES (200, 2, 23);
INSERT INTO `role_menus` VALUES (201, 2, 24);
INSERT INTO `role_menus` VALUES (202, 2, 25);
INSERT INTO `role_menus` VALUES (203, 2, 26);
INSERT INTO `role_menus` VALUES (204, 2, 27);
INSERT INTO `role_menus` VALUES (205, 2, 30);
INSERT INTO `role_menus` VALUES (206, 2, 32);
INSERT INTO `role_menus` VALUES (207, 2, 29);
INSERT INTO `role_menus` VALUES (208, 2, 33);
INSERT INTO `role_menus` VALUES (209, 2, 47);
INSERT INTO `role_menus` VALUES (210, 2, 48);
INSERT INTO `role_menus` VALUES (211, 2, 49);
INSERT INTO `role_menus` VALUES (212, 2, 52);
INSERT INTO `role_menus` VALUES (213, 2, 45);
INSERT INTO `role_menus` VALUES (214, 2, 46);
INSERT INTO `role_menus` VALUES (215, 2, 53);
INSERT INTO `role_menus` VALUES (216, 2, 43);
INSERT INTO `role_menus` VALUES (217, 2, 44);
INSERT INTO `role_menus` VALUES (218, 2, 50);
INSERT INTO `role_menus` VALUES (219, 2, 51);
INSERT INTO `role_menus` VALUES (220, 2, 54);
INSERT INTO `role_menus` VALUES (221, 2, 55);
INSERT INTO `role_menus` VALUES (222, 2, -666666);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(22) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `create_admin_id` bigint(22) NULL DEFAULT NULL COMMENT '创建者ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_admin_id` bigint(22) NULL DEFAULT NULL COMMENT '更新人ID',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '超级管理员', NULL, 1, '2020-02-22 03:05:23', NULL, '2020-02-22 03:05:23');
INSERT INTO `roles` VALUES (2, '后台管理员', NULL, 1, '2020-02-22 13:49:52', 2, '2020-03-16 06:58:12');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for subject_articles
-- ----------------------------
DROP TABLE IF EXISTS `subject_articles`;
CREATE TABLE `subject_articles`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '专题ID',
  `article_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '专题文章关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject_articles
-- ----------------------------
INSERT INTO `subject_articles` VALUES (19, 1, 1, '2020-03-20 03:05:28', '2020-03-20 03:05:28');
INSERT INTO `subject_articles` VALUES (43, 2, 1, '2020-03-20 04:04:03', '2020-03-20 04:04:03');
INSERT INTO `subject_articles` VALUES (44, 2, 2, '2020-03-20 04:04:03', '2020-03-20 04:04:03');
INSERT INTO `subject_articles` VALUES (45, 2, 3, '2020-03-20 04:04:03', '2020-03-20 04:04:03');
INSERT INTO `subject_articles` VALUES (46, 2, 4, '2020-03-20 04:04:03', '2020-03-20 04:04:03');

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建者',
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '封面地址',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '导读内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '专题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES (1, 3, '比特币单日跌幅超20% BTC“减半行情”短期难现？', '/storage/2020_03_19/4b25007410f70c09b410df8dd60641074903.png', '2020年3月，加密货币市场持续走低，特别是在3月12日，比特币单日下跌幅度超过25%，引发市场恐慌。2020年究竟是产量减半，还是币价减半？', '2020-03-19 18:29:27', '2020-03-19 18:29:27');
INSERT INTO `subjects` VALUES (2, 3, '金色周刊 | 暴跌行情下的加密货币_3月第2周', '/storage/2020_03_19/9eb5573529e6e80966ac9730536751a78983.png', '金色周刊第5期（3月第2周），带您回顾一周重要新闻、行情与合约数据、矿业信息、项目动态、技术进展等全行业资讯动态。', '2020-03-20 02:08:51', '2020-03-20 02:08:51');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签',
  `number` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击次数(热门标签)',
  `weight` int(6) UNSIGNED NOT NULL DEFAULT 0 COMMENT '权重(desc倒叙,默认0)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, '物联网', 0, 0);
INSERT INTO `tags` VALUES (2, 'ETH', 0, 0);
INSERT INTO `tags` VALUES (3, '游戏', 0, 0);
INSERT INTO `tags` VALUES (4, '火币', 0, 0);
INSERT INTO `tags` VALUES (5, '挖矿', 0, 0);
INSERT INTO `tags` VALUES (6, 'NEO', 0, 0);
INSERT INTO `tags` VALUES (7, 'EOS', 0, 0);
INSERT INTO `tags` VALUES (8, 'BCH', 0, 0);
INSERT INTO `tags` VALUES (9, 'BM', 0, 0);
INSERT INTO `tags` VALUES (10, 'BCH', 0, 0);
INSERT INTO `tags` VALUES (11, 'USDT', 0, 0);
INSERT INTO `tags` VALUES (12, 'ADA', 0, 0);
INSERT INTO `tags` VALUES (13, 'ETC', 0, 0);
INSERT INTO `tags` VALUES (14, '平台币', 0, 0);

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '转出地址',
  `to` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '转入地址',
  `hash` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '转账hash',
  `block_hash` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '区块hash',
  `block_number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '区块高度',
  `gas_price` decimal(18, 9) UNSIGNED NOT NULL DEFAULT 0.000000000 COMMENT '矿工费',
  `amount` decimal(26, 18) NOT NULL DEFAULT 0.000000000000000000 COMMENT '数量',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态，1默认，2已处理',
  `tx_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '交易状态，1成功，0失败',
  `assets_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产类型',
  `token_id` int(11) NULL DEFAULT NULL COMMENT '通证类型id',
  `data_id` int(11) NULL DEFAULT NULL COMMENT '处理对应的数据id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '如果是管理员操作，则填写此字段',
  `payee` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '合约地址(通证)',
  `token_tx_amount` decimal(26, 18) NULL DEFAULT NULL COMMENT '通证交易数量',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `transactions_hash_unique`(`hash`) USING BTREE,
  INDEX `transactions_from_index`(`from`) USING BTREE,
  INDEX `transactions_to_index`(`to`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_thirds
-- ----------------------------
DROP TABLE IF EXISTS `user_thirds`;
CREATE TABLE `user_thirds`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `platform` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方应用',
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方唯一ID',
  `openname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方会员昵称',
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'AccessToken',
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RefreshToken',
  `expires_in` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '有效期',
  `avatar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '其他信息(array)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `platform`(`platform`, `openid`) USING BTREE,
  INDEX `user_id`(`user_id`, `platform`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '第三方登录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_verifies
-- ----------------------------
DROP TABLE IF EXISTS `user_verifies`;
CREATE TABLE `user_verifies`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '实名认证类型',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '认证资料(array)',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态默认0未审核1认证通过2认证失败',
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '回复内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户/作者实名认证表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `verify_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '认证ID,默认0未认证',
  `avatar` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '其他信息(array)',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `invite_uid` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '邀请人ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1启用 2禁用',
  `salt` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '盐',
  `reg_ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户/作者表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '保罗大帝', '13886609880', 0, '/storage/2020_03_16/d0db36c1b6c4672eda3f48a04a3f06b83520.png', NULL, 'bldd', 0, 2, 'Tug53p', '127.0.0.1', '2020-03-16 11:29:56', '2020-03-16 12:20:11');
INSERT INTO `users` VALUES (2, '紫夜', '13996609880', 0, '/storage/2020_03_22/01649517a218b8878221622d2a5856893885.png', NULL, 'ziye', 0, 1, 'P49Uzd', '127.0.0.1', '2020-03-16 12:14:37', '2020-03-22 16:17:15');
INSERT INTO `users` VALUES (3, '金色新闻', NULL, 0, '/storage/2020_03_22/eb158e173733c27795acd4591a4e80ad7403.png', NULL, 'jinse', 0, 1, '9PgLhI', '127.0.0.1', '2020-03-19 10:23:46', '2020-03-22 16:17:48');

-- ----------------------------
-- Table structure for withdraw_log
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_log`;
CREATE TABLE `withdraw_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `assets_type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产类型',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '提现到地址',
  `amount` decimal(18, 8) NOT NULL DEFAULT 0.00000000 COMMENT '数量',
  `fee` decimal(18, 8) NOT NULL DEFAULT 0.00000000 COMMENT '手续费',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态 1默认 2成功',
  `tx_hash` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '哈希',
  `ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '浏览器信息',
  `msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '转账错误信息',
  `code` int(11) NULL DEFAULT NULL COMMENT '转账错误码',
  `hour` bigint(20) NULL DEFAULT NULL COMMENT '提现时刻唯一标识',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '拒绝原因',
  `tx_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '转账状态，1默认，2成功，3失败',
  `net_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'qki' COMMENT '主网类型',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `withdraw_log_tx_hash_unique`(`tx_hash`) USING BTREE,
  UNIQUE INDEX `withdraw_log_hour_unique`(`hour`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
