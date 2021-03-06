import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'xiangkuang.dart';

class cityAlbumMode extends StatefulWidget {
  final String? coverImg;
  final List<List>? showImg;
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
        height: _screenH * 1.3,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage(widget.coverImg!),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: _screenH / 8.8,
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
                verticalOffset: 220,
              ),
              children: [
                SizedBox(
                  width: _screenWidth / 15,
                ),
                for (var i = (x - 1) * 3; i < 3 * x; i++)
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: xiangKuang(
                                title: widget.showImg![i][1],
                                content: widget.showImg![i][2],
                                showPic: widget.showImg![i][0],
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          _screenWidth / 20, 0, _screenWidth / 20, 0),
                      height: _screenH / 3.5,
                      width: _screenWidth / 5,
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.white60),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(widget.showImg![i][0][0]),
                              fit: BoxFit.cover)),
                    ),
                  )
              ],
            )),
            SizedBox(
              height: _screenH / 15,
            ),
            FlatButton.icon(
                padding: EdgeInsets.symmetric(
                    vertical: _screenH / 40, horizontal: _screenWidth / 20),
                color: Colors.grey[600]?.withAlpha(80),
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
                label: Text(
                  "Change a set",
                  style: TextStyle(
                      fontSize: _screenH / 25,
                      color: Colors.white,
                      fontFamily: "show"),
                ))
          ],
        ),
      ),
    );
  }
}
