import 'package:flutter/material.dart';
import 'package:ray_website/backgroundPic.dart';

class PhoneAppDeveloper extends StatefulWidget {
  PhoneAppDeveloper({Key? key}) : super(key: key);

  @override
  _PhoneAppDeveloperState createState() => _PhoneAppDeveloperState();
}

class _PhoneAppDeveloperState extends State<PhoneAppDeveloper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("As a phone developer"),
      ),
    );
  }
}
