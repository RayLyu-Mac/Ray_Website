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

class cityAlblumMain extends StatefulWidget {
  cityAlblumMain({Key? key}) : super(key: key);

  @override
  _cityAlblumMainState createState() => _cityAlblumMainState();
}

class _cityAlblumMainState extends State<cityAlblumMain> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        cityAlbumMode(
          coverImg: "assest/citypic/yunnan/cover.jpg",
          showImg: picsYN,
          title: "彩云之南",
          subtitle: "西南之珠，古色古香",
          titleFont: "sw",
          subFont: "yuan",
        )
      ],
    );
  }
}
