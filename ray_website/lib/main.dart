import 'package:flutter/material.dart';
import 'welcome/welcome.dart';
import 'Album/city/cityAlbumMain.dart';

void main() => runApp(mainp());

class mainp extends StatelessWidget {
  const mainp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maintaince Mangament and Accessibility System',
      home: welcome(),
    );
  }
}
