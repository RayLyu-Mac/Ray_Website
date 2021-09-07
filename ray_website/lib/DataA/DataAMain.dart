import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ray_website/Teacher/style.dart';
import 'package:ray_website/backgroundPic.dart';

class DataAnalysis extends StatefulWidget {
  DataAnalysis({Key? key}) : super(key: key);

  @override
  _DataAnalysisState createState() => _DataAnalysisState();
}

class _DataAnalysisState extends State<DataAnalysis> {
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
        title: Text("Data Analyst"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
      ),
      body: backGroundPic(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: _screenWidth / 25, vertical: _screenH / 25),
          padding: EdgeInsets.symmetric(
              horizontal: _screenWidth / 35, vertical: _screenH / 30),
          child: SingleChildScrollView(
            child: Column(),
          ),
        ),
        pic: "assest/background/back28.png",
        transp: 0.85,
      ),
    );
  }

  title(content) {
    return Text(
      content,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: _screenH / 16,
        fontFamily: "sw",
      ),
    );
  }
}
