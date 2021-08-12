import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class cityAlbumMode extends StatefulWidget {
  cityAlbumMode({Key? key}) : super(key: key);

  @override
  _cityAlbumModeState createState() => _cityAlbumModeState();
}

class _cityAlbumModeState extends State<cityAlbumMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<String> pics = [
    "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/citypic/yunnan/IMG_20180807_081943.jpg?raw=true",
    "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/citypic/yunnan/IMG_20180807_162019.jpg?raw=true",
    "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/citypic/yunnan/IMG_20180807_164511.jpg?raw=true",
    "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/citypic/yunnan/IMG_20180808_100850.jpg?raw=true"
  ];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: _screenWidth,
      height: _screenH * 1.2,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.4), BlendMode.dstATop),
              image: AssetImage('assest/citypic/yunnan/cover.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(
            height: _screenH / 4,
          ),
          Text(
            "- 彩云之南 -",
            style: TextStyle(
                fontFamily: "nan",
                color: Colors.black87,
                fontSize: _screenWidth / 10,
                fontWeight: FontWeight.bold),
          ),
          Text("西南明珠，古色古香",
              style: TextStyle(
                  fontFamily: "yuan",
                  fontSize: _screenWidth / 25,
                  fontWeight: FontWeight.bold)),
          Row(
            children: [
              for (var i = 0; i < pics.length; i++)
                Container(
                  margin: EdgeInsets.fromLTRB(
                      _screenWidth / 20, 0, _screenWidth / 20, 0),
                  height: _screenH / 6,
                  width: _screenWidth / 5,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white60),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage(pics[i]))),
                )
            ],
          )
        ],
      ),
    ));
  }
}
