import 'package:flutter/material.dart';
import 'package:pom/utils/view_circle.dart';

class GuitarChordForm extends StatelessWidget {

  double _dialogHeight;
  double _dialogWidth;

  _chordItem(double height, double width) {
    return Container(
      height: height / 2,
      width: width / 14,
      margin: EdgeInsets.all(0.0),
      child: MaterialButton(
        minWidth: 1.0,
        onPressed: () {},
        child: Container(
          child: CustomPaint(painter: DrawCircle(),),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    _dialogHeight = MediaQuery.of(context).size.height / 1.5;
    _dialogWidth = MediaQuery.of(context).size.width / 1.2;

    return Dialog(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.white,
      child: Container(
        height: _dialogHeight,
        width: _dialogWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3.0, color: Colors.blue,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
                Container(width: 3, color: Colors.red,),
                _chordItem(_dialogHeight, _dialogWidth),
              ],
            ),
            Container(height: 3, color: Colors.red,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
                _chordItem(_dialogHeight, _dialogWidth),
              ],
            ),
          ],
        ),
      ),
    );
  }
}