import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class GuTi extends StatefulWidget {
  GuTi({Key? key}) : super(key: key);

  @override
  _GuTiState createState() => _GuTiState();
}

class _GuTiState extends State<GuTi> {
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
    return Container(
      child: null,
    );
  }
}
