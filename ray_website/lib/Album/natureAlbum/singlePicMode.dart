import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaterFallMode extends StatefulWidget {
  WaterFallMode({@required this.img, @required this.seas, Key? key})
      : super(key: key);
  final String? img;
  final String? seas;

  @override
  _WaterFallModeState createState() => _WaterFallModeState();
}

class _WaterFallModeState extends State<WaterFallMode> {
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
    return Container(
      margin: EdgeInsets.symmetric(vertical: _screenH / 35, horizontal: 5),
      width: _screenWidth / (_hovering ? 2 : 9),
      height: _screenH,
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: Container(
          child: Text(
            widget.seas!,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "coms",
                fontSize: _screenH / (_hovering ? 10 : 28),
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade200),
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 6, color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.9), BlendMode.dstATop),
                  image: AssetImage(widget.img!),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
