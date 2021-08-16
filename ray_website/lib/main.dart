import 'package:flutter/material.dart';
import 'welcome/welcome.dart';
import 'MyJorney/MyJorneyMain.dart';

void main() => runApp(mainp());

class mainp extends StatelessWidget {
  const mainp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ray Personal Website',
      home: MyJourny(),
    );
  }
}
