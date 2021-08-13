import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class cityAlbumMode extends StatefulWidget {
  final String? coverImg;
  final List<String>? showImg;
  final String? title;
  final String? subtitle;
  final String? titleFont;
  final String? subFont;
  cityAlbumMode(
      {@required this.coverImg,
      @required this.showImg,
      @required this.title,
      @required this.subtitle,
      this.subFont,
      this.titleFont,
      Key? key})
      : super(key: key);

  @override
  _cityAlbumModeState createState() => _cityAlbumModeState();
}

class _cityAlbumModeState extends State<cityAlbumMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  int x = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: _screenWidth,
        height: _screenH * 1.4,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage(widget.coverImg!),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: _screenH / 8,
            ),
            Text(
              widget.title!,
              style: TextStyle(
                  fontFamily: widget.titleFont!,
                  color: Colors.black87,
                  fontSize: _screenWidth / 10,
                  fontWeight: FontWeight.bold),
            ),
            Text(widget.subtitle!,
                style: TextStyle(
                    fontFamily: widget.subFont!,
                    fontSize: _screenWidth / 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: _screenH / 15,
            ),
            Row(
                children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 705),
              childAnimationBuilder: (widget) => SlideAnimation(
                child: FadeInAnimation(
                  child: widget,
                ),
                horizontalOffset: 220,
              ),
              children: [
                SizedBox(
                  width: _screenWidth / 15,
                ),
                for (var i = (x - 1) * 3; i < 3 * x; i++)
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        _screenWidth / 20, 0, _screenWidth / 20, 0),
                    height: _screenH / 3.5,
                    width: _screenWidth / 5,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.white60),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(widget.showImg![i]),
                            fit: BoxFit.cover)),
                  ),
              ],
            )),
            SizedBox(
              height: _screenH / 15,
            ),
            TextButton.icon(
                onPressed: () {
                  setState(() {
                    if (x < 2) {
                      x = x + 1;
                    } else {
                      x = 1;
                    }
                  });
                },
                icon: Icon(Icons.change_circle),
                label: Text("Change a set"))
          ],
        ),
      ),
    );
  }
}
