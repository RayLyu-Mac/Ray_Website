import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sprung/sprung.dart';

class hoverTextMode extends StatefulWidget {
  hoverTextMode(
      {@required this.pageTo,
      @required this.font,
      @required this.fontsize,
      @required this.title,
      @required this.fontC,
      Key? key})
      : super(key: key);

  final Widget? pageTo;
  final String? title;
  final String? font;
  final Color? fontC;
  final double? fontsize;
  @override
  _hoverTextModeState createState() => _hoverTextModeState();
}

class _hoverTextModeState extends State<hoverTextMode> {
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

  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()
    ..translate(-4, -4, 0)
    ..scale(1.15);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            PageTransition(
                duration: const Duration(milliseconds: 500),
                child: widget.pageTo!,
                type: PageTransitionType.rightToLeft));
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Sprung.overDamped,
          transform: _hovering ? hoverTransform : nonHoverTransform,
          child: Text(
            widget.title!,
            style: TextStyle(
                fontFamily: widget.font!,
                color: _hovering ? Colors.orangeAccent : widget.fontC,
                fontSize: _screenH / widget.fontsize!,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
