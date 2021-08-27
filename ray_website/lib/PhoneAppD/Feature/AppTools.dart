import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Button.dart';

class AppTool extends StatefulWidget {
  AppTool({Key? key}) : super(key: key);

  @override
  _AppToolState createState() => _AppToolState();
}

class _AppToolState extends State<AppTool> {
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
        title: Text("App Tools"),
      ),
      body: backGroundPic(
          child: Column(
            children: [
              SizedBox(
                height: _screenH / 15,
              ),
              Text(
                "Matls Eng Tool Box",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _screenH / 12,
                    fontFamily: "bank"),
              ),
              SizedBox(
                height: _screenH / 20,
              ),
              Row(
                children: [
                  Container(
                    height: _screenH / 1.6,
                    width: _screenWidth / 4.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/App/t1.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 7, color: Colors.grey.shade300)),
                  ),
                ],
              )
            ],
          ),
          pic: "assest/background/back19.png"),
    );
  }
}
