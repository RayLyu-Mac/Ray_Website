import 'package:flutter/material.dart';
import 'style.dart';

class teacherMain extends StatefulWidget {
  teacherMain({Key? key}) : super(key: key);

  @override
  _teacherMainState createState() => _teacherMainState();
}

class _teacherMainState extends State<teacherMain> {
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
        title: title(content: "As a teacher", fontSize: _screenH / 20),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.9), BlendMode.dstATop),
                image: AssetImage("assest/back4.png"),
                fit: BoxFit.fitWidth)),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: _screenWidth / 15),
          ),
        ),
      ),
    );
  }
}
