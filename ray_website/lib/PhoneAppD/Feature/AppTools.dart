import 'package:flutter/material.dart';

class AppTool extends StatefulWidget {
  AppTool({Key? key}) : super(key: key);

  @override
  _AppToolState createState() => _AppToolState();
}

class _AppToolState extends State<AppTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Tools"),
      ),
    );
  }
}
