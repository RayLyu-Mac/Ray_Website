import 'MyJourneyMode.dart';
import 'package:flutter/material.dart';

class MyJourny extends StatefulWidget {
  MyJourny({Key? key}) : super(key: key);

  @override
  _MyJournyState createState() => _MyJournyState();
}

class _MyJournyState extends State<MyJourny> {
  List<String> showI = [
    "assest/Personal Pic/1.01.png",
    "assest/Personal Pic/1.png",
    "assest/Personal Pic/1.03.png",
    "assest/Personal Pic/1.02.png",
    "assest/Personal Pic/2.png",
    "assest/Personal Pic/3.png",
    "assest/Personal Pic/4.png",
    "assest/Personal Pic/5.png",
    "assest/Personal Pic/6.png",
    "assest/Personal Pic/7.png",
    "assest/Personal Pic/8.png",
    "assest/Personal Pic/9.png",
    "assest/Personal Pic/10.png",
    "assest/Personal Pic/11.png",
    "assest/Personal Pic/12.png",
    "assest/Personal Pic/13.png",
    "assest/Personal Pic/14.png",
    "assest/Personal Pic/16.png",
    "assest/Personal Pic/17.png",
    "assest/Personal Pic/18.png",
    "assest/Personal Pic/19.png",
    "assest/Personal Pic/20.png",
  ];
  List<String> dates = [
    "Mar 2018",
    "May 2018",
    "Jun 2018",
    "Aug 2018",
    "Sept 2018",
    "Sept 2018",
    "Oct 2018",
    "Dec 2018",
    "Dec 2018",
    "Apr 2019",
    "Jun 2019",
    "Jul 2019",
    "Jul 2019",
    "Aug 2019",
    "Aug 2019",
    "Aug 2019",
    "Sept 2019",
    "Sept 2019",
    "Sept 2019",
    "Oct 2019",
    "Dec 2019",
    "Dec 2019"
  ];
  List<String> titles = [
    "生活•登峰",
    "高中•戏剧",
    "高中•毕业",
    "生活•石林",
    "大学•初来",
    "大学•大褂",
    "大学•访问",
    "大学•项目展示",
    "生活•溜冰",
    "大学•大一结束",
    "生活•多伦多之行",
    "生活•回国啦",
    "工作•工作的烦恼",
    "工作•结束啦！",
    "工作•同事",
    "生活•离别",
    "生活•他乡遇故知",
    "大学•活动",
    "大学•招聘会",
    "生活•生日",
    "大学•材料设计",
    "大学•生化演讲"
  ];
  List<String> content = [
    "尖峰山，已不知被我征服了几回，无论山道是否完善。\n山腰买卖玉米的老妪，山顶买水的老翁，音容笑貌仿若眼前\n不过能和老父亲一起却是不常，不知今后还有多少机会呢。",
    "黑色的幻影，醒目的白十字，凌冽的刀光\n战争的怒吼在空旷的大厅回荡，旷野上只剩断剑与残旗\n王者的骄傲在这战斗中悄然陨落，新生的力量在这废墟之间冉冉升起",
    "就算穿上那庄严的学士服，依然遮不住那满脸的稚气。\n是时候往前迈这一步了，尽管他可能并不知道这意味这什么",
    "还记得七月份刚刚结束完暑假的工作，就急不可耐的前往云南。\n置身于石林千峰之中，仿佛淡去去了一切",
    "才来到这陌生的大学几天，他就在图书馆找到了自己的位子\n虽然生活的不适应让他有些消瘦，但双眼里依然包含着对未来的期望",
    "匆忙的化学实验终于结束了，可以到食堂放松一下了\n偶然在镜子里看到自己穿白大褂的样子，他觉得这小伙挺帅！",
    "想当时，这所大学也是他所向往的，于是乘着放假的空隙，特地跑来参观\n虽然有些遗憾，但至少还不是很远 : )",
    "这是他第一次穿上这西服，虽然有些紧巴巴，但人还是挺精神\n害，该减肥了",
    "这是他第一次体验溜冰，不过说实话他之前溜过旱冰，所以他显得有些自信\n可惜这光溜溜的冰面告诉他这完全不一样。\n‘多摔几次就会了么’，他揉着肿着的膝盖说",
    "他之前还不知道这边的学校会举办庆祝活动给学期结束\n,看着盛大的游园会，他便放下书本加入进人群之中",
    "暑假回国之前，他跑到了隔壁的大都市去玩了一圈，毕竟受够了哈麻屯的冷清，也是时候感受一下繁华。\n’大城市也非徒有虚名啊’他勉强的在镜头前摆出姿势,’也有几十公里走下了吧hhh’",
    "终于能回家喘口气了，可时间也不能浪费啊！于是他就开始积极的找起了工作",
    "哎，工作哪有你想象的那么轻松，面对这些还不懂事的高中生来说，你得再努力一些！",
    "终于不会有人追着我听写了，我的世界也算清净些了",
    "虽然刚来的时候还是笨手笨脚的，但有这热心的小伙伴，总算学会如歌管理这些孩子了。",
    "能留在家里的清闲日子过得可真快，一转眼又得回加了，希望母亲能老的慢些吧。 ",
    "在温哥华机场，他碰到了他高中时的老朋友，两个人的笑容还是像从前那样，只不过已经各奔东西.",
    "这是他第一次参加新家庭，材料系，的活动，那一天与整一个系的人在厂子里翻飞大闹，好不快活",
    "着急的他穿上了久违的西装，为了接下来的招聘会，他紧张的看着镜子里的自己，确保把自己给收拾整齐了",
    "这是他20岁的生日，其实也没什么特别，也就是特意给自己在图书馆挑了个靠窗的位子\n这样可能采光会好一些？",
    "在这个项目里面他设计了一个knee implant，为了把数据调到最佳也不知花了多少个日夜\n最后的结果还不错，也就拿了一个满分。",
    "在这个项目里面，他碰到了迄今为止最好的团队，所有人齐心协力，氛围融洽。\n他也碰到了迄今为止最敬业的教授，虽然刚做完肿瘤摘除手术却仍战斗在第一线。"
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          for (var i = 0; i < content.length; i++)
            JourneyMode(
                content: content[i],
                date: dates[i],
                showImg: showI[i],
                title: titles[i])
        ],
      ),
    );
  }
}
