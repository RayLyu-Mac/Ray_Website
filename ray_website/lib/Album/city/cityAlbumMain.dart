import 'package:flutter/material.dart';
import 'cityMode.dart';

List<String> picsYN = [
  "assest/citypic/yunnan/1.png",
  "assest/citypic/yunnan/2.png",
  "assest/citypic/yunnan/3.png",
  "assest/citypic/yunnan/4.png",
  "assest/citypic/yunnan/5.png",
  "assest/citypic/yunnan/6.png"
];
List<String> picsJH = [
  "assest/citypic/jinhua/1.png",
  "assest/citypic/jinhua/2.png",
  "assest/citypic/jinhua/3.png",
  "assest/citypic/jinhua/4.png",
  "assest/citypic/jinhua/5.png",
  "assest/citypic/jinhua/6.png"
];
List<String> picsHT = [
  "assest/citypic/hamilton/1.png",
  "assest/citypic/hamilton/2.png",
  "assest/citypic/hamilton/3.png",
  "assest/citypic/hamilton/4.png",
  "assest/citypic/hamilton/5.png",
  "assest/citypic/hamilton/6.png"
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
      subtitle: "繁华终将褪去，旧城黯等重生",
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
