import 'package:flutter/material.dart';

///
/// des:虎牙弹幕样式
///
class HuyaBarrage {
  static Widget normal(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }

  static Widget level_1(String text) {
    return Text(
      text,
      style: TextStyle(color: Color(0xFFE9A33A), fontWeight: FontWeight.bold),
    );
  }

  static Widget level_2(String text) {
    return Center(
      child: Container(
        width: 150,
        padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(.8),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  static Widget level_3(String text, int count) {
    return Center(
      child: Container(
        width: 150,
        padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(.8),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
