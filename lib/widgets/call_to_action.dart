import 'package:demo_web/utility/my_style.dart';
import 'package:flutter/material.dart';

class CallToAction extends StatefulWidget {
  @override
  _CallToActionState createState() => _CallToActionState();
}

class _CallToActionState extends State<CallToAction> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: 600,
      // color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyStyle().showSizebox(8, 48),
                  MyStyle().titleH2('For Member'),
                  MyStyle().showSizebox(8, 16),
                  buildUser(),
                  MyStyle().showSizebox(8, 16),
                  buildPassword(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextField buildUser() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'User :',
        prefixIcon: Icon(Icons.perm_identity),
      ),
    );
  }

  TextField buildPassword() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password :',
        prefixIcon: Icon(Icons.lock_outline),
      ),
    );
  }
}
