import 'package:flutter/material.dart';
import 'cityMode.dart';

double _screenWidth = 0;
double _screenH = 0;
List<String> picsYN = [
  "assest/citypic/yunnan/1.jpg",
  "assest/citypic/yunnan/2.jpg",
  "assest/citypic/yunnan/3.jpg",
  "assest/citypic/yunnan/4.jpg",
  "assest/citypic/yunnan/5.jpg",
  "assest/citypic/yunnan/6.jpg"
];
List<String> picsJH = [
  "assest/citypic/jinhua/1.jpg",
  "assest/citypic/jinhua/2.jpg",
  "assest/citypic/jinhua/3.jpg",
  "assest/citypic/jinhua/4.jpg",
  "assest/citypic/jinhua/5.jpg",
  "assest/citypic/jinhua/6.jpg"
];
List<String> picsHT = [
  "assest/citypic/hamilton/1.jpg",
  "assest/citypic/hamilton/2.jpg",
  "assest/citypic/hamilton/3.jpg",
  "assest/citypic/hamilton/4.jpg",
  "assest/citypic/hamilton/5.jpg",
  "assest/citypic/hamilton/6.jpg"
];

class cityAlblumMain extends StatefulWidget {
  cityAlblumMain({Key? key}) : super(key: key);

  @override
  _cityAlblumMainState createState() => _cityAlblumMainState();
}

class _cityAlblumMainState extends State<cityAlblumMain> {
  final PageController controller = PageController(initialPage: 0);
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        cityAlbumMode(
          coverImg: "assest/citypic/yunnan/cover.jpg",
          showImg: picsYN,
          title: "彩云之南",
          subtitle: "西南之珠，古色古香",
          titleFont: "sw",
          subFont: "yuan",
        ),
        cityAlbumMode(
          coverImg: "assest/citypic/jinhua/cover.jpg",
          showImg: picsJH,
          title: "灿金华都",
          subtitle: "浙中福地，火腿之乡",
          titleFont: "yuan",
          subFont: "nan",
        ),
        cityAlbumMode(
          coverImg: "assest/citypic/hamilton/cover.jpg",
          showImg: picsHT,
          title: "Hamilton",
          subtitle: "繁华终将褪去，旧城黯等重生",
          titleFont: "bank",
          subFont: "nan",
        )
      ],
    );
  }
}
