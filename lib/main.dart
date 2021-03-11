import 'package:demo_web/pages/home.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => Home(),
};

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: '/home',
    );
  }
}
