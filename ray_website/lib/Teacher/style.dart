import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class title extends StatefulWidget {
  title({@required this.content, @required this.fontSize, Key? key})
      : super(key: key);
  final String? content;
  final double? fontSize;

  @override
  _titleState createState() => _titleState();
}

class _titleState extends State<title> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.content!,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: widget.fontSize!,
          fontFamily: "coms",
          fontWeight: FontWeight.bold),
    );
  }
}

class content extends StatefulWidget {
  content({@required this.contents, @required this.fontSize, Key? key})
      : super(key: key);
  final String? contents;
  final double? fontSize;

  @override
  _contentState createState() => _contentState();
}

class _contentState extends State<content> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.contents!,
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: widget.fontSize!, fontWeight: FontWeight.bold),
    );
  }
}
