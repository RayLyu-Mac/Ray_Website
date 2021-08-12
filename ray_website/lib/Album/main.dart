import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import 'mode.dart';
import 'city/cityMode.dart';
import 'city/cityAlbumMain.dart';

class album extends StatefulWidget {
  album({Key? key}) : super(key: key);

  @override
  _albumState createState() => _albumState();
}

class _albumState extends State<album> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: _screenWidth,
          height: _screenH * 1.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.6), BlendMode.dstATop),
                  image: AssetImage('assest/show.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "- Life is Art -",
                    style: TextStyle(
                        fontFamily: "coms",
                        color: Colors.black87,
                        fontSize: _screenWidth / 10,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "                                                            Ray's Photo Gallery",
                      style: TextStyle(
                          fontFamily: "coms", fontSize: _screenWidth / 25))
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: _screenWidth / 30,
                  ),
                  photoMode(
                    title: "Cloud",
                    pageTo: cityAlblumMain(),
                    img: "assest/cloud.jpg",
                    content: "闲云无形\n火云炙空\n纤云随风\n彤云绵绵",
                  ),
                  photoMode(
                    title: "City",
                    pageTo: cityAlblumMain(),
                    img: "assest/city.jpg",
                    content: "在这被泪水\n淹没的城市中\n那里是我的归宿\n",
                  ),
                  photoMode(
                    title: "Nature",
                    pageTo: cityAlblumMain(),
                    img: "assest/nature.jpg",
                    content: "徐风盛夏行古道\n树影日光映微尘\n\n\n",
                  )
                ],
              ),
            ],
          )),
    ));
  }
}
