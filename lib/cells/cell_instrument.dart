import 'package:flutter/material.dart';
import 'package:pom/cells/cell_base.dart';

class InstrumentCell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InstrumentCellState();
}


class InstrumentCellState extends State<InstrumentCell> {
  @override
  Widget build(BuildContext context) {
    return BaseCell(
      width: 110.0, 
      child: Container(
        child: Center(
          child: Text("COW"),
        ) ,
      ),
    );
  }
}