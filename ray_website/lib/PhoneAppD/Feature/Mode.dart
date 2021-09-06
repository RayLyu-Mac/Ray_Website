import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Button.dart';
import 'package:ray_website/CAD/CADDetail.dart';

class AppMode extends StatefulWidget {
  AppMode(
      {@required this.appTitle,
      @required this.backImg,
      @required this.con,
      @required this.title,
      @required this.themePic,
      Key? key})
      : super(key: key);

  final String? backImg;
  final List<List>? con;
  final String? appTitle;
  final String? title;
  final String? themePic;

  @override
  _AppModeState createState() => _AppModeState();
}

class _AppModeState extends State<AppMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle!),
      ),
      body: SingleChildScrollView(
        child: backGroundPic(
            transp: 0.6,
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 20,
                ),
                Text(
                  widget.title!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _screenH / 10,
                      fontFamily: "bank"),
                ),
                SizedBox(
                  height: _screenH / 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: _screenH / 1.15,
                      width: _screenWidth / 3.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.themePic!),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 7, color: Colors.grey.shade300)),
                    ),
                    SizedBox(
                      width: _screenWidth / 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: _screenWidth / 40,
                          vertical: _screenH / 25),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200
                            .withOpacity(0.6)
                            .withAlpha(145),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.black87,
                              width: 6,
                            ))),
                            child: Text(
                              "Items",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "bank",
                                  fontSize: _screenH / 14),
                            ),
                          ),
                          SizedBox(
                            height: _screenH / 25,
                          ),
                          for (var i = 0; i < widget.con!.length; i++)
                            Button(
                                buttonIcon: widget.con![i][3],
                                titleColor: widget.con![i][4],
                                fontSize: _screenH / 22,
                                pageTo: cadMode(
                                    fit: true,
                                    content: widget.con![i][2],
                                    date: "2021 Summer",
                                    showImg: widget.con![i][0],
                                    title: widget.con![i][1]),
                                title: widget.con![i][1]),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            pic: widget.backImg!),
      ),
    );
  }
}
