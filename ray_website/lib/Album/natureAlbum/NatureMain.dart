import 'package:flutter/material.dart';
import 'lake/lakeMain.dart';
import 'waterfall/waterFall.dart';
import 'JHE/JHEMain.dart';

class NatureAlb extends StatefulWidget {
  NatureAlb({Key? key}) : super(key: key);

  @override
  _NatureAlbState createState() => _NatureAlbState();
}

class _NatureAlbState extends State<NatureAlb> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [lakeMain(), tiffiny(), JHEMain()],
    );
  }
}
