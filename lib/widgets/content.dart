import 'package:demo_web/utility/my_constant.dart';
import 'package:demo_web/utility/my_style.dart';
import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyStyle().showSizebox(8, 48),
          MyStyle().titleH2('Title Content'),
          MyStyle().showSizebox(8, 8),
          MyStyle().titleH3(MyConstant().lipsom),
        ],
      ),
    );
  }
}
