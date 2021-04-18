import 'package:demo_web/widgets/call_to_action.dart';
import 'package:demo_web/widgets/content.dart';
import 'package:demo_web/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget mainBody;
  GlobalKey globalKey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainBody = buildContent();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 40,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              NavigationBar(),
              mainBody,
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildContent() {
    return Expanded(
      child: ScreenTypeLayout(
        mobile: Column(
          children: [
            CallToAction(),
            Content(),
          ],
        ),
        tablet: Column(
          children: [
            CallToAction(),
            Content(),
          ],
        ),
        desktop: Row(
          children: [
            Content(),
            CallToAction(),
          ],
        ),
      ),
    );
  }
}
