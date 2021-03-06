# blockchainApplication
基于区块链的二手车交易系统
========================
链车APP是一个基于区块链的二手车市场交易平台（IOS平台），针对二手车销售者和消费者，聚合用户供求等信息，分类集中发布，方便用户交易的应用软件。通过利用区块链技术的特性能够最大程度上保证车况信息的真实性，能够为消费者提供真实有效的数据，解决二手车交易过程中的不公开、不透明、缺乏诚信度等问题缺陷。二手车在平台交易时买卖双方通过交易平台可以及时查看了解到车辆的信息,包括车辆里程,事故发生信息等数据信息，实现二手车交易市场透明化和可视化。
按照完整的区块链技术思路。首先需要建立一个基于区块链技术的系统，通过系统将汽车主机厂、4S店、车主、车管所、维修中心、交管部门以及二手车交易市场作为系统的各个节点串联起来，各方同时记录车辆的保养、维修、出险、缺陷召回、所有权变更次数等车辆状况主要信息，并实时将数据同步、记录、存储、传输，保障信息的真实性与不可更改性，使二手车交易信息透明化，从而解决二手车交易“信息不对称”现象。

目录
---

# 开发规划<br>
## 概述<br>
## 背景和现状<br>
### 背景<br>
近年来，随着全国二手车限迁政策的解除，我国二手车流通壁垒逐渐消除，二手车转籍比例逐渐提高，促进了二手车市场的快速发展。据中国汽车流通协会统计数据显示，2019年，全国转籍比例达27.87%。二手车交易市场仍然是我国二手车交易的主体，市场占有比例较高。在二手车交易市场，主要存在二手车经营企业、经纪公司以及大量的游散个人交易。除此之外，我国二手车的参与主体中，还包括二手车拍卖公司、二手车连锁经营公司以及新车生产及经销公司。<br>
尽管近几年中国二手车交易开始兴旺，但目前中国二手车的年销量目前还不到新车年销量的1/3。根据发达国家汽车市场中二手车与新车销量比例来看，中国二手车市场还有很大的发展空间;同时，随着经济的发展及新车技术的不断进步，车主换车的频率将会相应增大，这将给中国二手车市场带来发展机遇。<br>
随着互联网的快速发展，二手车电商平台越来越多，越来越多的消费者也逐渐在二手车电商平台上购买二手车。而消费者看重的二手车电商平台的功能大多数是专业评估，车况真实，信息获取，多方比价，代办手续，交易简便。由此可见，二手车电商平台在车源，价格，车况等方面比线下二手车交易市场更具市场竞争力。<br>
美国、日本、德国等二手车行业大国通过立法、重罚、诚信宣传等手段来杜绝二手车商售卖问题二手车。即便如此，每年依旧存在多种负面新闻。在德国，由于商家提供的信息不实而给消费者造成的经济损失每年可高达60亿欧元；前几日，由 “美国PIRG教育基金”（US PIRG Education Fund）和“汽车可靠性和安全消费者基金会”（Consumer For Auto Reliability And Safety Foundation）的一份新报告显示，美国最大汽车零售商、连续近20年盘踞全美百强汽车经销商榜首的AutoNation向客户出售了大量存在未修复缺陷的二手车。而在国内，由于二手车市场起步较晚，且以较快速度发展成庞大产业，各种配套设施不完善，这种情况更为甚之。根据《2017年全国消协组织受理汽车产品投诉统计分析》显示，二手车交易市场投诉主要集中于隐瞒车辆真实信息，如交通事故隐瞒、修改车辆里程、车辆来源不明、二手车车辆缺乏专业认可等消费陷阱。总的来说，这是消费者与商家、车主之间的信息不对称问题以及基于第三方信任机制的缺乏。<br>
### 现状<br>
二手车电商平台发展壮大的同时,都需要攻克一道难关,就是建立与用户之间的信任。为此,主流电商平台纷纷做出了包括对商户评级,增添“七天无理由”,优先向申请退货退款的消费者提供“极速退款”等服务。相对于传统的线下交易模式,二手车电商平台显然也需要获得买卖双方的充分信任,并未消费者提供一个能快速匹配需求,公开透明的交易平台。<br>
但从实际来看,许多二手车电商平台并未做到以上要求.早在2019年6月5日,人民日报就曾发文《二手车平台切莫弄虚作假》,提到宣称“没有中间商赚差价”,“深度检测有保障”的二手车平台,不仅仅没有给市场带来新气象,而在发展过程中受到利益驱动,在网上发布虚假车源信息,声称通过专业检测,事故车却屡见不鲜;篡改二手车数据,隐瞒车辆真实情况等套路层出不穷.然而由于市场缺少成熟的车况信息和完善的规则制度,评估机构不够专业客观,以及定价标准不够明确等因素,导致交易双方的信任度降低,而规范交易基础的薄弱最终也让用户的不信任影响了整个市场。
## 传统二手车交易市场<br>
### 传统交易方式<br>
- 二手车线下交易市场<br>
我国各地分布着二手车线下交易市场，买方可以在当地的二手车交易市场寻找合适的车辆交易。但大多数的卖家都是二手车商，其中二手车商的车源多，但不稳定，车辆信息和来源可能有所隐瞒或修改，并且车辆价格不一定符合市场价值，容易被欺骗。
- 熟人交易<br>
这种交易方式主要在二手车车主与朋友或亲戚之间进行，对车辆情况比较知根知底，而且在价格方面好交流商量。但是买卖双方发交易往往是口头之间，缺少必要的检测环节和具有法律效力的买卖合同。这就导致了在交易后车辆出现问题，购买者可能会无法诉求，不仅没有应有的法律保障和有效地解决问题，而且会将双方置于尴尬境地。
- 通过二手车商<br>
通常情况下，如果买方提出试驾、验车等要求，二手车商都会要求先缴纳一定的订金或保证金，因为二手车商流通的二手车质量没有统一的标准，车辆来源不一定正规，车辆的信息也可能会有所隐瞒、修改等。这时，我们只能通过进一步的专业检测才能确定这辆车的具体车况。
- 二手车电商平台<br>
目前二手车交易平台广泛地进入大众的生活，人们可以通过平台进行挑选、交易。二手车平台核心功能是买二手车，由于买家需求决定卖家活性，卖车功能可以保证车源和买家体验，卖二手车是第二核心功能。但是消费者所能了解到的信息大部分来源于平台，买卖双方的信息无法对称，车辆信息不一定真实可靠，会直接影响到车辆在交易后的使用。
- 官方认证（车企、汽车销售商等）<br>
近年来许多车企看中了二手车市场的巨大潜力，纷纷推出官方认证二手车平台。这类二手车的可信度高，一般不会出现事故车，在回收二手车时会确认车辆里程和车况，并且会和4S店和保险公司确认车辆信息。除此之外，官方认证二手车普遍是3-5年车龄的车，车辆回收来源相对正规，比其他渠道的二手车可信程度高。官方认证二手车质量上较靠谱稳定，但比其他渠道的二手车价格更高。<br>
### 传统二手车市场交易流程<br>
二手车车主委托二手车电商网站、二手车电商或汽车连锁店登记发布车辆信息。买方通过网站等方式了解到二手车信息，买卖双方看车，检测车况，买卖方若是达成一致交易意向，则双方签订交易意向协议，买方支付订金，在约定时间内成交，双方签订交易合同。签订合同后，买方结算车款，买卖双方办理过户转籍，变更《道路交通运输许可证》，变更保险，若是卖方车税完税，应该向原车主索要《车辆购置税完税证明》：处理车辆购置税免税手续的二手车，买方应该到税务机关重新申请报缴税或免税手续。<br>
![传统二手车市场交易流程][1]
![1](https://github.com/Joy-Huang-Dawn/blockchainApplication/blob/main/img/%E4%BC%A0%E7%BB%9F%E4%BA%A4%E6%98%93%E6%B5%81%E7%A8%8B.png)<br>
## 用户分析
二手车一般都是服务于本地买车客户，客户大多是新手司机，经济能力一般，只是用来代步，对车的要求不高。由此分析，二手车交易最优质的客户是新手司机，新手司机开二手车练车应该是最好的选择，在驾驶技术熟练后还可以直接卖掉。<br>
对于要卖车的人通常有四大需求：第一，高价：追求自己的利益最大化是每一个要卖车人的正常心态。第二，快速：无论是换新车、处理闲置或者是需要资金周转，对于卖二手车这件事，没有一个人愿意持续太长的时间，因为持续的时间太长不仅不会给自己带来更大的收益，甚至会造成更多贬值的损失。第三，安全：车辆是具有产权归属的高价值耐用品，所以交易过程中的安全性是许多车主考虑的重点事项。第四，便捷：便捷非二手车卖家的核心需求，但却严重影响用户体验，在繁忙的都市，卖一台车如果要折腾很多趟，走许多程序，浪费许多时间，没有几个车主可以心平气和的忍受。
## 区块链技术赋能二手车交易市场<br>
### 区块链技术概述<br>
区块链是分布式数据存储、点对点传输、共识机制、加密算法等计算机技术的新型应用模式，本质上是一个大型的去中心化的数据库。区块链通过分布式的数字账本记录了所有曾经发生并经过系统一致认可的交易，每一个区块就是一个账本，它不仅能记录交易信息，还有一些其他的功能。<br>
比如经过加密后信息无法篡改、网络中所有节点都可以轻松查询信息真实性，没有第三方介入等等。用一种更简单的说法来描述就是区块链技术可以通过各种技术来保障信息的真实有效，通过技术手段来建立、约束、形成人与人之间的信任感。<br>
在二手车行业中，通过利用区块链技术的特性能够最大程度上保证车况信息的真实性，能够为消费者提供真实有效的数据，解决二手车交易过程中的不公开、不透明、缺乏诚信度等问题缺陷。<br>
### 基于区块链的“链车”可以解决的问题<br>
- 解决“数据孤岛”问题<br>
- 保障车辆来源正规<br>
- 促进二手车电商行业的发展<br>
- 保障消费者权益<br>
- 为消费者提供便捷服务<br>
- 为二手车经销商提供平台销售，促进经济发展<br>
- 促进汽车行业的发展<br>
# 需求分析<br>
本系统主要围绕二手车的线上交易管理及售后管理，通过功能分析建立一套技术先进、性能可靠、功能齐全的系统，系统内的用户在各自权限内进行各自的工作，同时保证各模块之间的信息互通以及业务联动，避免出现信息孤岛。客户端采用手机端应用的方式，具有稳定性、良好的可扩展性和严格的权限控制，保障系统安全。<br>
## 系统部分功能设计<br>
<br>![image](https://github.com/Joy-Huang-Dawn/blockchainApplication/blob/main/img/%E4%B8%9A%E5%8A%A1%E5%88%86%E6%9E%90.png)<br>
- 买卖交易<br>
![image](https://github.com/Joy-Huang-Dawn/blockchainApplication/blob/main/img/%E4%B9%B0%E8%BD%A6%E6%B5%81%E7%A8%8B.png)<br>
<br>![image](https://github.com/Joy-Huang-Dawn/blockchainApplication/blob/main/img/%E5%8D%96%E8%BD%A6%E6%B5%81%E7%A8%8B.png)<br>
卖车人注册登录进入平台后，可以在平台上发布自己需要出售的车辆信息。买车人可以通过平台搜索、本地搜车或根据所需车辆属性进行查找。买方若是想查看心仪车辆信息，可电话或平台留言方式询问卖车人。买卖方商谈好后，卖方出示车辆相关证件：身份证、驾驶证、车辆登记证书、二手车专业鉴定评估书、车辆保险单、审车环保标志、汽车缴/完税证明、购车发票、车辆保养记录。其中，卖方在平台发布车辆信息后，若车辆没有经过二手车专业鉴定评估，则需要经过二手车专业鉴定评估机构鉴定评估车辆状况。买方与卖方商谈后可以预约看车，检查车况，若是买卖双方有一致的意向，则签订交易合同，支付订金。买卖方可以在平台上办理车辆过户转籍手续，办理时买卖双方需要使用账号私钥认证是否为本人操作后，方可进行办理。如果购买的二手车需要办理车辆购置税免税手续可以在平台上申请报缴税或免税手续。买方购买了营运性的二手车需要凭《机动车行驶证》、《机动车登记证书》在交通运管部门办理《道路交通运输许可证》的变更；凭借《机动车行驶证》、《机动车登记证书》《保险单》正本到保险公司办理车辆保险投保人的变更手续。完成以上过程买卖双方交车。<br>
- 产品溯源查询<br>
用户可以通过二手车车辆批号进行查询，用户可以清楚的知道交易的对象、时间、金额等信息，若用户在购车后遇到问题需要联系卖方即可通过交易记录查询到卖方用户地址，交易信息和记录，以此作为凭证。<br>
# 架构分析<br>
主要分为首页、车库、发布、消息、我的，下图为主要业务分类。<br>
![image](https://github.com/Joy-Huang-Dawn/blockchainApplication/blob/main/img/%E6%9E%B6%E6%9E%84.png)<br>
首页头屏：主要强化分类买车，其次卖车和估价等其他功能。定位城市和搜素在页面上方，广告处于屏幕底端显示信息，主要功能在屏幕中间显示一半条目信息，其他功能在第二屏，点击后会跳转到相应页面中。<br>
车辆详情页面包含车辆图片、车辆品牌名字型号、车辆价格及服务费用、分期购车额度测试、后期服务保障、车辆参数配置、车辆检测信息、收藏、咨询入口、对比入口、砍价入口、降价通知按钮、分享。头屏信息规整，重点信息突出。按钮状态层级清晰，砍价功能表现方式不一样。<br>
# 交互分析<br>
## 具体交互分析<br>
- 交易<br>
用户点击购买按钮，系统连接到Meta Mask钱包，买方账号向合约发送一笔交易，确认买方信息，确认无误后用户提交交易，买方可以与卖方进行交易。买方发起购买交易，支付一部分gas，交易成功后卖方账户收到一笔交易，卖方确认执行交易后即买卖双方的交易成功。<br>
- 查询<br>
用户可以复制车辆批号到查询框，点击查询按钮进行查询，可查看车辆的详细信息；用户复制自己的账户地址，输入密码，既可以查询历史订单信息，查看历史交易记录；用户复制交易合约地址，点击查询，可以查看交易记录和交易信息。<br>
### 用户完成主任务的流程<br>
用户登录/注册进入系统后，若没有账户地址平台会自动为用户新建一个账户地址，若已有则需要连接Meta Mask钱包，点击“Enable Ethereum”按钮，可以获得当前账户地址。用户如有需要卖二手车，则需要在添加二手车界面输入车辆添加者的地址，点击“提交”按钮即可获得该车辆的信息和添加者添加时的记录。其他用户可以在系统上查询二手车售卖信息，若有要购买的，则输入二手车批号，点击“购买”按钮，买方需要提交一笔交易确认买方购买，确认无误后会进行购买交易，买方支付费用后卖方账户会收到一笔交易，卖方确认执行交易后，买卖双方的交易即可完成。卖方交易完成后，可通过自身的账户地址查询到交易记录和交易信息，还可将购买交易地址复制查询，查询得到交易记录信息。<br>
# 总结<br>
系统主要共有三个程序，一是二手车车辆信息添加上传，二是二手车交易，三是信息查询，三者为递进关系层次。第一个程序是二手车信息添加上传，车主需要将二手车具体信息填写后提交一笔交易，交易成功后即添加上传成功，第二个程序是二手车交易，买方通过平台选择自己想要购买的车辆，与卖方取得联系后进行交易，买方首先提交一笔交易确认用户信息，确认无误后提交一笔确认交易，交易成功后卖方会收到一笔交易，卖方确定执行这笔交易即交买卖方易完成。第三个程序是信息查询，用户可以通过交易合约地址查询交易记录，查看交易信息，还可以通过二手车车辆批号查看车辆信息，用户还可以通过自己的账户地址查询历史交易记录，查看历史交易信息。<br>
<br>




