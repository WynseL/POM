import 'package:flutter/material.dart';

class BaseCell extends StatelessWidget {

  BaseCell({this.width, this.child, this.onClick});

  final double width;
  final Widget child;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: width,
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: onClick,
        child: child,
      ),
    );
  }
}