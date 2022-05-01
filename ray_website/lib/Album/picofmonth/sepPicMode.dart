import 'package:flutter/material.dart';

class sepPicMode extends StatefulWidget {
  String? decoImg, sectionTitle, sectionContaint;
  double? decoPicWidth,
      decoPicHeight,
      titleSize,
      contentSize,
      detPicHeight,
      detPicWidth;
  sepPicMode(
      {@required this.decoImg,
      @required this.decoPicHeight,
      @required this.decoPicWidth,
      @required this.contentSize,
      @required this.sectionContaint,
      @required this.sectionTitle,
      @required this.titleSize,
      @required this.detPicWidth,
      @required this.detPicHeight,
      Key? key})
      : super(key: key);

  @override
  State<sepPicMode> createState() => _sepPicModeState();
}

class _sepPicModeState extends State<sepPicMode> {
  bool _hovering = false;
  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }

  final nonHoverTransform = Matrix4.identity()..scale(0.001);

  final hoverTransform = Matrix4.identity()..scale(1);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.decoPicHeight,
      width: widget.decoPicWidth,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.decoImg!), fit: BoxFit.cover),
          border: Border.all(color: Colors.white, width: 12),
          borderRadius: BorderRadius.circular(8)),
      child: MouseRegion(
        onEnter: (event) => _mouseEnter(true),
        onExit: (event) => _mouseEnter(false),
        child: AnimatedContainer(
          color: Colors.grey.shade400.withOpacity(0.8),
          child: Column(
            children: [
              Text(
                "Snow and Life",
                style: TextStyle(
                    fontFamily: "growth",
                    fontSize: widget.titleSize,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: widget.titleSize,
              ),
              ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: const Duration(milliseconds: 300),
                        barrierDismissible: true,
                        barrierLabel: '',
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Container();
                        },
                        transitionBuilder: (context, a1, a2, widgets) {
                          return Transform.scale(
                              scale: a1.value,
                              child: Opacity(
                                  opacity: a1.value,
                                  child: SimpleDialog(
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Colors.grey.shade300
                                                .withOpacity(0.7),
                                            width: 10,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      children: [pmDetail()])));
                        });
                  },
                  child: Text("Dive In"))
            ],
          ),
          duration: Duration(milliseconds: 300),
          transform: _hovering ? hoverTransform : nonHoverTransform,
        ),
      ),
    );
  }

  pmDetail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.sectionTitle!,
          style: TextStyle(
              fontFamily: "growth",
              fontSize: widget.titleSize,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: widget.detPicWidth!,
          height: widget.detPicHeight,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(widget.decoImg!))),
          child: Container(
            height: widget.detPicHeight! / 2.6,
            width: widget.detPicWidth!,
            color: Colors.white.withOpacity(0.7),
            margin: EdgeInsets.fromLTRB(0, widget.detPicHeight! / 1.2, 0, 0),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                widget.sectionContaint!,
                style: TextStyle(
                    fontSize: widget.contentSize, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
