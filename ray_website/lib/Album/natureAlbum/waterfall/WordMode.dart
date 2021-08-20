import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wordMode extends StatefulWidget {
  wordMode({Key? key}) : super(key: key);

  @override
  _wordModeState createState() => _wordModeState();
}

class _wordModeState extends State<wordMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  bool _hovering = true;
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
          decoration: BoxDecoration(
            border: Border.all(width: 6, color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tiffany Fall - Hamilton",
                style: TextStyle(
                    fontFamily: "coms",
                    fontSize: _screenH / (_hovering ? 12 : 35),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: _screenH / 20,
              ),
              Text(
                "Four Seasons, Four Scenes - Ray",
                style: TextStyle(
                    fontSize: _screenH / (_hovering ? 20 : 45),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
