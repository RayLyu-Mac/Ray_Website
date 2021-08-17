import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Tiffiny extends StatefulWidget {
  Tiffiny({Key? key}) : super(key: key);

  @override
  _TiffinyState createState() => _TiffinyState();
}

class _TiffinyState extends State<Tiffiny> {
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
    List<String> imgs = [
      "assest/nature/waterFall/spring.png",
      "assest/nature/waterFall/summer.png",
      "assest/nature/waterFall/fall.png",
      "assest/nature/waterFall/winter.png"
    ];
    double leng = 15;
    return Scaffold(
      body: Row(
        children: [
          for (var i = 0; i < imgs.length; i++)
            InkWell(
              onTap: () {
                //You can leave it empty, like that.
              },
              onHover: (isHover) {
                if (isHover) {
                  print("A");
                  setState(() {
                    leng = 8;
                  });
                } else {
                  leng = 15;
                }
              },
              child: Container(
                width: _screenWidth / leng,
                height: _screenH,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.9), BlendMode.dstATop),
                        image: AssetImage(imgs[i]),
                        fit: BoxFit.cover)),
              ),
            ),
        ],
      ),
    );
  }
}
