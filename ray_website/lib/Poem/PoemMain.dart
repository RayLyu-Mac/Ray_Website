import 'package:flutter/material.dart';
import 'package:ray_website/BlackFilmUni.dart';
import 'package:ray_website/backgroundPic.dart';
import 'package:ray_website/Teacher/style.dart';
import 'SanWen.dart';

class PoemMain extends StatefulWidget {
  PoemMain({Key? key}) : super(key: key);

  @override
  _PoemMainState createState() => _PoemMainState();
}

class _PoemMainState extends State<PoemMain> {
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
        title: title(content: "As a Poet", fontSize: _screenH / 12),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: backGroundPic(
          child: Column(
            children: [
              SizedBox(
                height: _screenH / 12,
              ),
              title(content: "Poem is a life attitude", fontSize: _screenH / 7),
              content(
                contents: "         《南曲北调》-霜樱居士",
                fontSize: _screenH / 18,
                fontf: "yuan",
              ),
              SizedBox(
                height: _screenH / 20,
              ),
              Row(
                children: [
                  BlackFilm(
                    showPic: "assest/background/back7.png",
                    content: "又称现代诗，没有固定的诗体，那就追随着作者的诗情，感受其魅力",
                    title: "散文诗",
                    fontC: Colors.limeAccent,
                    pageTo: SanWen(),
                    fontf: "yuan",
                  ),
                  BlackFilm(
                    showPic: "assest/background/back7.png",
                    content: "又称现代诗，没有固定的诗体，那就追随着作者的诗情，感受其魅力",
                    title: "古体诗",
                    fontC: Colors.limeAccent,
                    pageTo: SanWen(),
                    fontf: "yuan",
                  )
                ],
              )
            ],
          ),
          pic: "assest/background/back5.png"),
    );
  }
}
