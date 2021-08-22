import 'package:flutter/material.dart';
import 'package:ray_website/CAD/singleCAD.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Teacher/style.dart';

class PoemMain extends StatefulWidget {
  PoemMain({Key? key}) : super(key: key);

  @override
  _PoemMainState createState() => _PoemMainState();
}

class _PoemMainState extends State<PoemMain> {
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
      appBar: AppBar(
        title: title(content: "As a Poet", fontSize: _screenH / 12),
        backgroundColor: Colors.limeAccent,
      ),
      body: backGroundPic(
          child: Column(
            children: [
              SizedBox(
                height: _screenH / 12,
              ),
              title(
                  content: "Poem is a life attitude", fontSize: _screenH / 10),
              content(
                  contents: "         《南区北调》-霜樱居士", fontSize: _screenH / 16),
              SizedBox(
                height: _screenH / 20,
              ),
            ],
          ),
          pic: "assest/background/back5.png"),
    );
  }
}
