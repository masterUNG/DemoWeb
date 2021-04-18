import 'package:demo_web/utility/my_style.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // MyStyle().showSizebox(150, 80),
              MyStyle().showLogo(),
              MyStyle().showSizebox(16, 80),
              MyStyle().titleH1('App Name'),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    
                  });
                },
                child: Text('Menu1'),
              ),
              MyStyle().showSizebox(50, 80),
              TextButton(
                onPressed: () {},
                child: Text('Menu2'),
              ),
              // MyStyle().showSizebox(150, 80),
            ],
          ),
        ],
      ),
    );
  }
}
