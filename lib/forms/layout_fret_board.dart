import 'package:flutter/material.dart';
import 'package:pom/utils/gstring.dart';
import 'package:pom/utils/view_circle.dart';

class FretBoardLayout extends StatefulWidget {

  FretBoardLayout(this.callback);

  Function(int fretNumber, GString gString) callback;

  @override
  State<StatefulWidget> createState() => _FretBoardLayoutState();
}

class _FretBoardLayoutState extends State<FretBoardLayout> {

  double _dialogHeight;
  double _dialogWidth;

  _chordItem(GString fret, {Function() callback, bool isDot = false}) {

    final Widget _child = (fret != null ? 
      MaterialButton(
          minWidth: 1.0,
          onPressed: callback,
          child: Container(child: (isDot ? CustomPaint(painter: DrawCircle(),) : null),),
        ) : 
        Center(child: (isDot ? CustomPaint(painter: DrawCircle(),) : null),)
    );

    return Container(
      height: _dialogHeight / 2.5,
      width: _dialogWidth / 15,
      margin: EdgeInsets.all(0.0),
      color: Colors.white,
      child: _child
    );
  }

  _fretColumn(int number, GString top, GString bottom, {bool isTopDot = false, bool isBottomDot = false,}) {
    return Column(
      children: <Widget>[
        Text("$number"),
        _chordItem(top, callback: () { this.widget.callback(number, top); }, isDot: isTopDot),
        _horizontalDivider(),
        _chordItem(bottom, callback: () { this.widget.callback(number, bottom); }, isDot: isBottomDot),
      ],
    );
  }

  _verticalDivider() => SizedBox(width: 3,);
  _horizontalDivider() => Container(height: 3,);

  @override
  Widget build(BuildContext context) {

    _dialogHeight = MediaQuery.of(context).size.height / 1.5;
    _dialogWidth = MediaQuery.of(context).size.width / 1.2;

    List<Widget> _chords = <Widget>[
      _fretColumn(0, null, GString.e),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("E"),
          Text("A"),
        ],
      ),
      _fretColumn(1, null, GString.e),
      _verticalDivider(),
      _fretColumn(2, null, GString.e),
      _verticalDivider(),
      _fretColumn(3, GString.a, GString.e, isTopDot: true),
      _verticalDivider(),
      _fretColumn(4, GString.a, GString.e),
      _verticalDivider(),
      _fretColumn(5, GString.a, GString.e, isTopDot: true),
      _verticalDivider(),
      _fretColumn(6, GString.a, GString.e),
      _verticalDivider(),
      _fretColumn(7, GString.a, GString.e, isTopDot: true),
      _verticalDivider(),
      _fretColumn(8, GString.a, null),
      _verticalDivider(),
      _fretColumn(9, GString.a, null, isTopDot: true),
      _verticalDivider(),
      _fretColumn(10, GString.a, null),
      _verticalDivider(),
      _fretColumn(11, GString.a, null),
      _verticalDivider(),
      _fretColumn(12, GString.a, null, isTopDot: true, isBottomDot: true),
      _verticalDivider(),
      _fretColumn(13, GString.a, GString.clearBox),
      _verticalDivider(),
      _fretColumn(14, GString.a, GString.rifStopper),
    ];
 
    return Wrap(
      children: <Widget>[
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: _chords,),
      ],
    );
  }
}