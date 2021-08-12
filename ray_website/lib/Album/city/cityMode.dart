import 'package:flutter/material.dart';

class cityAlbumMode extends StatefulWidget {
  cityAlbumMode({Key? key}) : super(key: key);

  @override
  _cityAlbumModeState createState() => _cityAlbumModeState();
}

class _cityAlbumModeState extends State<cityAlbumMode> {
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
        body: Container(
            width: _screenWidth,
            height: _screenH * 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.6), BlendMode.dstATop),
                    image: AssetImage('assest/show.jpg'),
                    fit: BoxFit.cover)),
            child: Column(children: [
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
            ])));
  }
}
