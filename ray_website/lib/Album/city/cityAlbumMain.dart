import 'package:flutter/material.dart';
import 'cityMode.dart';

List<List> picsYN = [
  [
    [
      "assest/citypic/yunnan/1.png",
      "assest/citypic/yunnan/11.png"
          "assest/citypic/yunnan/12.png"
          "assest/citypic/yunnan/13.png"
          "assest/citypic/yunnan/14.png",
      "assest/citypic/yunnan/15.png"
    ],
    "云南•沐圣",
    "远处的大殿，静静的沐浴在漏下的阳光中"
  ],
  [
    ["assest/citypic/yunnan/2.png"],
    "云南•云楼",
    "黄瓦与青砖，于碧空之下"
  ],
  [
    [
      "assest/citypic/yunnan/3.png",
      "assest/citypic/yunnan/31.png",
      "assest/citypic/yunnan/32.png",
    ],
    "assest/citypic/yunnan/33.png",
    "assest/citypic/yunnan/34.png",
    "assest/citypic/yunnan/35.png",
    "assest/citypic/yunnan/36.png",
    "云南•云山",
    "匿身于重云中的远山，其真面目又是何样"
  ],
  [
    [
      "assest/citypic/yunnan/4.png",
      "assest/citypic/yunnan/41.png",
      "assest/citypic/yunnan/42.png",
      "assest/citypic/yunnan/43.png",
      "assest/citypic/yunnan/44.png",
      "assest/citypic/yunnan/45.png",
      "assest/citypic/yunnan/46.png",
    ],
    "云南•古街",
    "沧桑的青石板与远处的青山，映着街边木漆的招牌"
  ],
  [
    [
      "assest/citypic/yunnan/5.png",
      "assest/citypic/yunnan/51.png",
      "assest/citypic/yunnan/52.png",
      "assest/citypic/yunnan/53.png",
      "assest/citypic/yunnan/54.png",
    ],
    "云南•溪傍",
    "水平若境，灯笼似火"
  ],
  [
    [
      "assest/citypic/yunnan/6.png",
      "assest/citypic/yunnan/61.png",
      "assest/citypic/yunnan/62.png",
      "assest/citypic/yunnan/63.png",
      "assest/citypic/yunnan/64.png",
      "assest/citypic/yunnan/65.png",
    ],
    "云南•玉龙",
    "着一身玉铠，栖身于迷雾之中"
  ]
];
List<List> picsJH = [
  [
    [
      "assest/citypic/jinhua/1.png",
      "assest/citypic/jinhua/11.png",
      "assest/citypic/jinhua/12.png",
      "assest/citypic/jinhua/13.png",
      "assest/citypic/jinhua/14.png"
    ],
    "金华•华灯初上",
    "交织的霓虹，与清冷的夜"
  ],
  [
    ["assest/citypic/jinhua/2.png"],
    "金华•街市",
    "夜幕下，地摊的灯火与悠然的人群"
  ],
  [
    ["assest/citypic/jinhua/3.png"],
    "金华•河滩",
    "盛夏，河滩底的石头都出来晒太阳了"
  ],
  [
    ["assest/citypic/jinhua/4.png"],
    "金华•孤云",
    "远眺，只有矗立的高楼和孤悬的白云"
  ],
  [
    ["assest/citypic/jinhua/5.png"],
    "金华•黄昏",
    "享受夜幕来临前的悠然"
  ],
  [
    ["assest/citypic/jinhua/6.png"],
    "金华•桥梁",
    "他用坚毅的身躯托起了，两边的交流"
  ]
];
List<List> picsHT = [
  [
    ["assest/citypic/hamilton/1.png"],
    "Hamilton•Station",
    "The old station on downtown"
  ],
  [
    ["assest/citypic/hamilton/2.png"],
    "Hamilton•Church",
    "Old church and new tree"
  ],
  [
    ["assest/citypic/hamilton/3.png"],
    "Hamilton•Street Bird",
    "Free bird at busy street"
  ],
  [
    ["assest/citypic/hamilton/4.png"],
    "Hamilton•Street",
    "Uptown street"
  ],
  [
    ["assest/citypic/hamilton/5.png"],
    "Hamilton•Building",
    "Old and New, one street"
  ],
  [
    ["assest/citypic/hamilton/6.png"],
    "Hamilton•City Hall",
    "The city hall"
  ]
];

class cityAlblumMain extends StatefulWidget {
  cityAlblumMain({Key? key}) : super(key: key);

  @override
  _cityAlblumMainState createState() => _cityAlblumMainState();
}

class _cityAlblumMainState extends State<cityAlblumMain> {
  final PageController controller = PageController(initialPage: 0);
  List<Widget> cities = [
    cityAlbumMode(
      coverImg: "assest/citypic/yunnan/cover.png",
      showImg: picsYN,
      title: "彩云之南",
      subtitle: "西南之珠，古色古香",
      titleFont: "nan",
      subFont: "nan",
    ),
    cityAlbumMode(
      coverImg: "assest/citypic/jinhua/cover.png",
      showImg: picsJH,
      title: "灿金华都",
      subtitle: "浙中福地，火腿之乡",
      titleFont: "nan",
      subFont: "nan",
    ),
    cityAlbumMode(
      coverImg: "assest/citypic/hamilton/cover.png",
      showImg: picsHT,
      title: "Hamilton",
      subtitle: "繁华终将褪去，如今只剩沧桑",
      titleFont: "bank",
      subFont: "nan",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: cities,
    );
  }
}
