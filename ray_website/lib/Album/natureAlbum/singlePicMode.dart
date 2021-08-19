import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class WaterFallMode extends StatefulWidget {
  WaterFallMode({@required this.img, Key? key}) : super(key: key);
  final String? img;

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
      width: _screenWidth / (_hovering ? 2 : 8),
      height: _screenH,
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: Container(
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
