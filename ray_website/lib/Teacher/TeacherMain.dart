import 'package:flutter/material.dart';
import 'style.dart';

class teacherMain extends StatefulWidget {
  teacherMain({Key? key}) : super(key: key);

  @override
  _teacherMainState createState() => _teacherMainState();
}

class _teacherMainState extends State<teacherMain> {
  List<String> bio = [
    "• 2018.5-2018.7: XinXin Education, Teacher/Class Manager",
    "• 2018.5-2018.7: Path Education, Class Manager",
    "• 2019.7-2019.8: Path Education, Class Manager/Organizer",
    "• 2018.9-2020.1: Let's Talk Science Volunteer",
    "• 2020.9-2021.4: McMaster, Teaching Assistant Phy 1D/E03"
  ];
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
        title: title(content: "As a teacher", fontSize: _screenH / 17),
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
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.grey.shade100),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title(content: "Teaching Profile", fontSize: _screenH / 15),
                SizedBox(
                  height: _screenH / 20,
                ),
                for (var j = 0; j < bio.length; j++)
                  content(contents: bio[j], fontSize: _screenH / 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
