import 'package:flutter/material.dart';
import 'welcome/welcome.dart';
import 'Album/picofmonth/monthMode.dart';

void main() => runApp(mainp());

class mainp extends StatelessWidget {
  const mainp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ray Personal Website',
      home: pmMode(),
    );
  }
}
