import 'package:flutter/material.dart';
import 'package:pom/cells/cell_base.dart';
import 'package:pom/utils/type_instrument.dart';

class ChordCell extends StatefulWidget {

  ChordCell(this.type);

  final InstrumentType type;

  @override
  State<StatefulWidget> createState() => ChordCellState(type);
}

class ChordCellState extends State<ChordCell> {

  ChordCellState(this.type);

  final InstrumentType type;

  @override
  Widget build(BuildContext context) {
    return BaseCell(
      width: 50.0, 
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(width: 5,),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
        ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Text(" "),
          ),
        )
      ),
      onClick: () {

      },
    );
  }
}