import 'package:flutter/material.dart';
import 'sepPicMode.dart';

class pmMode extends StatefulWidget {
  pmMode({Key? key}) : super(key: key);

  @override
  State<pmMode> createState() => _pmModeState();
}

class _pmModeState extends State<pmMode> {
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
      backgroundColor: Colors.grey.shade700,
      body: Stack(children: [
        Positioned(
            top: 0,
            left: 0,
            child: sepPicMode(
              decoImg:
                  "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/PictureOfTheYear/202204/IMG_20220418_185910_986.jpg?raw=true",
              decoPicHeight: _screenH / 1.7,
              decoPicWidth: _screenWidth / 1.7,
            )),
        Positioned(
            top: 0,
            left: _screenWidth / 1.75,
            child: sepPicMode(
              decoImg:
                  "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/PictureOfTheYear/202204/IMG_20220418_185910_986.jpg?raw=true",
              decoPicHeight: _screenH / 1.7,
              decoPicWidth: _screenWidth / 2.1,
            )),
        Positioned(
            top: _screenH / 2.05,
            left: _screenWidth / 2.2,
            child: sepPicMode(
              decoImg:
                  "https://github.com/RayLyu-Mac/Ray_Website/blob/main/ray_website/assest/PictureOfTheYear/202204/IMG_20220418_185910_986.jpg?raw=true",
              decoPicHeight: _screenH / 1.95,
              decoPicWidth: _screenWidth / 1.8,
            )),
        Positioned(
            top: _screenH / 1.35,
            left: _screenWidth / 12,
            child: Container(
              child: Text(
                "Picture of the April",
                style: TextStyle(
                    fontFamily: "growth",
                    fontSize: _screenH / 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ))
      ]),
    );
  }
}
