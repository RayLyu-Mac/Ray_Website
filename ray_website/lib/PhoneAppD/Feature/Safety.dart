import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Button.dart';
import 'package:ray_website/CAD/CADDetail.dart';

class AppSafety extends StatefulWidget {
  AppSafety({Key? key}) : super(key: key);

  @override
  _AppSafetyState createState() => _AppSafetyState();
}

class _AppSafetyState extends State<AppSafety> {
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
    List<List> con = [
      [
        "assest/App/s1.png",
        "MSDS Chemical Sheet",
        "Quick check for Avaiable chemical in MSE department, knowing their dangerous level and locaiton",
        FontAwesomeIcons.flask,
        Colors.blueGrey.shade300,
      ],
      [
        "assest/App/s2.png",
        "Emergency Chemical Wash",
        "Quick check for when should you use either of safety equipment and their location in MSE department",
        FontAwesomeIcons.shower,
        Colors.orange.shade200
      ],
      [
        "assest/App/s3.png",
        "Fire Safety",
        "Qucik check for McMaster/ MSE department fire protocol, location of fire extinguisher and instruction for fire extinguisher",
        FontAwesomeIcons.fireExtinguisher,
        Colors.red
      ],
      [
        "assest/App/s4.png",
        "Acid Safety",
        "Check the acid may used in experiment, including their chemical/physical properties, harm to human body and PPE need to wear when perform the experiment",
        FontAwesomeIcons.skullCrossbones,
        Colors.yellow.shade500
      ],
      [
        "assest/App/s5.png",
        "WHIMS symbol",
        "Quick check for meaning of each symbol and required PPE need to wear when perform chemical with that label",
        FontAwesomeIcons.sign,
        Colors.lightBlue.shade300
      ],
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("App Safety Guidence"),
      ),
      body: SingleChildScrollView(
        child: backGroundPic(
            transp: 0.6,
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 15,
                ),
                Text(
                  "Matls Eng Safety Guidence",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _screenH / 12,
                      fontFamily: "bank"),
                ),
                SizedBox(
                  height: _screenH / 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: _screenH / 1.15,
                      width: _screenWidth / 3.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assest/App/s6.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 7, color: Colors.grey.shade300)),
                    ),
                    SizedBox(
                      width: _screenWidth / 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: _screenWidth / 25,
                          vertical: _screenH / 25),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200
                            .withOpacity(0.6)
                            .withAlpha(145),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Items",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: _screenH / 15),
                          ),
                          for (var i = 0; i < con.length; i++)
                            Button(
                                buttonIcon: con[i][3],
                                titleColor: con[i][4],
                                fontSize: _screenH / 17,
                                pageTo: cadMode(
                                    fit: true,
                                    content: con[i][2],
                                    date: "2021 Summer",
                                    showImg: con[i][0],
                                    title: con[i][1]),
                                title: con[i][1])
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            pic: "assest/background/back23.png"),
      ),
    );
  }
}
