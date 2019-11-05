import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pom/utils/chords.dart';
import 'package:pom/utils/gstring.dart';

class SoundSetLayout extends StatefulWidget {

  SoundSetLayout(this.fretNumber, this.gString);

  final int fretNumber;
  final GString gString;

  @override
  State<StatefulWidget> createState() => SoundSetLayoutState(fretNumber, gString);
}

class SoundSetLayoutState extends State<SoundSetLayout> {

  SoundSetLayoutState(this.fretNumber, this.gString);
  
  final int fretNumber;
  final GString gString;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: Chords.EStringFret0.map((item) {
            return ButtonTheme(
              minWidth: 10.0,
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.all(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(height: 5.0, color: Colors.brown,),
                      Text(item.item1)
                    ],
                  ),
                ),
              )
            );
          }).toList(),
        ),
      ),
    );
  }
}