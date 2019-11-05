import 'package:flutter/material.dart';
import 'package:pom/forms/layout_fret_board.dart';
import 'package:pom/forms/layout_sound_set.dart';
import 'package:pom/utils/gstring.dart';

class GuitarChordForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GuitarChordFormState();
}

class _GuitarChordFormState extends State<GuitarChordForm> {

  FretBoardLayout _fretBoardLayout;
  SoundSetLayout _soundSetLayout;

  bool _isShowSoundSet = false;

  @override
  void initState() {
    super.initState();

    _fretBoardLayout = FretBoardLayout(this.callback);
  }

  callback(int fretNumber, GString gString) {
    setState(() {
      this._isShowSoundSet = true;
      this._soundSetLayout = SoundSetLayout(fretNumber, gString);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Dialog(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      backgroundColor: Colors.blue,
      child: Stack(
        children: (this._isShowSoundSet ? <Widget>[_fretBoardLayout, _soundSetLayout] : <Widget>[_fretBoardLayout,]),
      ),
    );
  }
}