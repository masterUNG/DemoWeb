import 'package:flutter/material.dart';

class MyStyle {
  Widget showLogo() => Image(image: AssetImage('images/logo.png'));

  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      );

      Widget titleH2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      );

      Widget titleH3(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      );

  Widget showSizebox(double x, double y) => SizedBox(
        width: x,
        height: y,
      );

  MyStyle();
}
