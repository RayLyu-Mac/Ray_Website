import 'package:flutter/material.dart';
import 'mode.dart';
import 'city/cityAlbumMain.dart';
import 'natureAlbum/NatureMain.dart';
import 'picofmonth/monthMode.dart';

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
                    title: "City",
                    pageTo: cityAlblumMain(),
                    img: "assest/city.png",
                    content: "???????????????\n??????????????????\n?????????????????????\n",
                  ),
                  photoMode(
                    title: "Nature",
                    pageTo: NatureAlb(),
                    img: "assest/nature.png",
                    content: "?????????????????????\n?????????????????????\n\n\n",
                  ),
                  photoMode(
                    pageTo: pmMode(),
                    title: "Picture of the Month",
                    img: "assest/nature.png",
                    content: "Best Pic of the month",
                  ),
                ],
              ),
            ],
          )),
    ));
  }
}
