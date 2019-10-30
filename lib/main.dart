import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pom/instrument_row.dart';
import 'package:pom/utils/type_instrument.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'POM'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InstrumentRow(InstrumentType.GUITAR_1),
            InstrumentRow(InstrumentType.GUITAR_2),
            InstrumentRow(InstrumentType.BASS),
            InstrumentRow(InstrumentType.DRUMS),
          ],
        ),
      ),
    );
  }
}
