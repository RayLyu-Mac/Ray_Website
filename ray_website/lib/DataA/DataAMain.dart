import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
        title: Text(
          "Data Analyst",
          style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
              fontSize: _screenH / 16),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
      ),
      body: backGroundPic(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade100.withOpacity(0.9),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 10, color: Colors.grey.shade600)),
          margin: EdgeInsets.symmetric(
              horizontal: _screenWidth / 25, vertical: _screenH / 25),
          padding: EdgeInsets.symmetric(
              horizontal: _screenWidth / 35, vertical: _screenH / 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Dtitle("Bio"),
                Text(
                  "2020 Winter: Self-learnt machine learning and deep learning, Gain basic understanding and application on machine learning alogrithm such as: PCA and regression, and neural net work working knowledge\n\n2020 Summer: Research assistant in CCEM McMaster, Working directly with Professor: Dr Maureen Lagos for data extraction, analysis and visualization. Gain third author for Paper: Imaging Strongly Coupled Plasmon–Phonon Modes in Mid-Infrared Double Antennas.\n\n2021 Winter: Self-learnt MySQL Data Base, gained basic understanding on Data Base operations and gain working experience on design datga base structure",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: _screenH / 26),
                ),
                SizedBox(
                  height: _screenH / 15,
                ),
                Dtitle("Related Courses"),
                Text(
                    "ChE 2E04 (2020 Fall): Numerical Solution for Chemical Engineering\nGain working knowledge on MATLAB language and understanding on numeric solution. Furthermore, gain experience on chemical processing and design.\n\nIBEHS 4C03: Biostatistic (2021 Summer)\nGain Working knowledge on R language, developed skills on statistical analysis and design of experiment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: _screenH / 26)),
                SizedBox(
                  height: _screenH / 15,
                ),
                Dtitle("Language"),
                Text(
                    "Python: Machine learning, deep learning, image analysis, science calculation and matrix calculation\n\nMATLAB: Matrix calculation, numeric solution analysis and plotting\n\nR: Statistical analysis and plotting\n\nMySQL: Data base operation and creation",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: _screenH / 26)),
                SizedBox(
                  height: _screenH / 15,
                ),
              ],
            ),
          ),
        ),
        pic: "assest/background/back28.png",
        transp: 0.85,
      ),
    );
  }

  Dtitle(content) {
    return Text(
      content,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: _screenH / 11,
        fontFamily: "sw",
      ),
    );
  }
}
