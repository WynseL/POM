import 'package:flutter/material.dart';
import 'package:pom/cells/cell_chord.dart';
import 'package:pom/cells/cell_instrument.dart';
import 'package:pom/utils/type_instrument.dart';

class InstrumentRow extends StatefulWidget {

  InstrumentRow(this.type);

  final InstrumentType type;

  @override
  State<StatefulWidget> createState() => InstrumentRowState();
}

class InstrumentRowState extends State<InstrumentRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InstrumentCell(),
          ChordCell(this.widget.type),
          ChordCell(this.widget.type),
          ChordCell(this.widget.type),
          ChordCell(this.widget.type),
        ],
      ),
    );
  }
}