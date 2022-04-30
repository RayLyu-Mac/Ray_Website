import 'package:flutter/material.dart';

class sepPicMode extends StatefulWidget {
  String? decoImg;
  sepPicMode({@required this.decoImg, Key? key}) : super(key: key);

  @override
  State<sepPicMode> createState() => _sepPicModeState();
}

class _sepPicModeState extends State<sepPicMode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(widget.decoImg!)),
          border: Border.all(color: Colors.white, width: 5),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
