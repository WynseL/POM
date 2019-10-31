import 'package:flutter/material.dart';
import 'package:pom/cells/cell_base.dart';
import 'package:pom/forms/form_guitar_chords.dart';
import 'package:pom/utils/type_instrument.dart';

class ChordCell extends StatefulWidget {

  ChordCell(this.type);

  final InstrumentType type;

  @override
  State<StatefulWidget> createState() => _ChordCellState(type);
}

class _ChordCellState extends State<ChordCell> {
  _ChordCellState(this.type);

  final InstrumentType type;

  @override
  Widget build(BuildContext context) {
    return BaseCell(
      width: 50.0, 
      child: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.grey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 3, child: Container(color: Colors.grey,),),
            Container(height: 40, child: Center(child: Text("1"),),)
          ],
        ),
      ),
      onClick: () {
        // if (type == InstrumentType.guitar1 || type == InstrumentType.guitar2) {
          showDialog(
            context: context,
            builder: (context) => GuitarChordForm(),
          );
        // }
      },
    );
  }
}