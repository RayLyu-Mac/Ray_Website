import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Button extends StatefulWidget {
  Button(
      {@required this.buttonIcon,
      @required this.pageTo,
      @required this.title,
      Key? key})
      : super(key: key);
  final Widget? pageTo;
  final String? title;
  final IconData? buttonIcon;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  bool _hovering = false;
  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: _screenH / 35, horizontal: _screenWidth / 45),
        decoration: BoxDecoration(
            color: _hovering ? Colors.grey.shade300 : Colors.transparent,
            border: _hovering
                ? Border(bottom: BorderSide(width: 7, color: Colors.white))
                : Border.all(width: 0, color: Colors.transparent)),
        child: FlatButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: widget.pageTo!,
                      type: PageTransitionType.rightToLeft));
            },
            icon: Icon(widget.buttonIcon!),
            label: Text(
              widget.title!,
              style: TextStyle(
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold,
                  fontSize: _screenH / 15,
                  fontFamily: "show"),
            )),
      ),
    );
  }
}
