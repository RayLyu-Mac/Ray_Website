import 'package:flutter/material.dart';
import 'waterfall/singlePicMode.dart';
import 'waterfall/WordMode.dart';

class fourSeason extends StatefulWidget {
  fourSeason(
      {@required this.backImg,
      @required this.content,
      @required this.pics,
      @required this.title,
      Key? key})
      : super(key: key);
  final List<List>? pics;
  final String? title;
  final String? content;
  final String? backImg;

  @override
  _fourSeasonState createState() => _fourSeasonState();
}

class _fourSeasonState extends State<fourSeason> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage(widget.backImg!),
                fit: BoxFit.cover)),
        child: Row(
          children: [
            for (var i = 0; i < widget.pics!.length; i++)
              WaterFallMode(
                img: widget.pics![i][0],
                seas: widget.pics![i][1],
              ),
            wordMode(
              title: widget.title!,
              content: widget.content!,
            )
          ],
        ),
      ),
    );
  }
}
