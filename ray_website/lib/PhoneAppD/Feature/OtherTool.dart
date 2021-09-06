import 'Mode.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtherTool extends StatefulWidget {
  OtherTool({Key? key}) : super(key: key);

  @override
  _OtherToolState createState() => _OtherToolState();
}

class _OtherToolState extends State<OtherTool> {
  List<List> con = [
    [
      "assest/App/O1.png",
      "Tech Elective",
      "Qucik checnk for technical elective you can take in MSE, clicking each stream to find out more (Updated for 2021)",
      FontAwesomeIcons.chalkboardTeacher,
      Colors.blue.shade300,
    ],
    [
      "assest/App/O2.png",
      "MSE scoiety page",
      "Quick check for MSE activity by visiting the MSE page on instagram",
      FontAwesomeIcons.candyCane,
      Colors.redAccent.shade400,
    ],
    [
      "assest/App/O3.png",
      "MSE Contact",
      "Quick check for MSE contact for both stuff member and professor, by entering their name you can find their contact information",
      Icons.email_outlined,
      Colors.amber.shade400,
    ],
    [
      "assest/App/O4.png",
      "MSE scoiety page",
      "Quick check for MSE activity by visiting the MSE page on instagram",
      FontAwesomeIcons.candyCane,
      Colors.redAccent.shade400,
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
