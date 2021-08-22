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
          color: Colors.grey.shade800,
          fontWeight: FontWeight.bold),
    );
  }
}

class content extends StatefulWidget {
  content(
      {@required this.contents,
      @required this.fontSize,
      @optionalTypeArgs this.fontf,
      Key? key})
      : super(key: key);
  final String? contents;
  final double? fontSize;
  final String? fontf;

  @override
  _contentState createState() => _contentState();
}

class _contentState extends State<content> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.contents!,
      style: TextStyle(
        fontFamily: widget.fontf,
        fontSize: widget.fontSize!,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade800,
      ),
    );
  }
}

class picture extends StatefulWidget {
  picture({@required this.img, Key? key}) : super(key: key);
  final String? img;

  @override
  _pictureState createState() => _pictureState();
}

class _pictureState extends State<picture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.9), BlendMode.dstATop),
              image: AssetImage(widget.img!),
              fit: BoxFit.fitWidth)),
    );
  }
}
