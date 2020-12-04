import 'package:delivery_app/lang/translation_strings.dart';
import 'package:flutter/material.dart';


class Tracker extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TrackerState();
  }

}

class _TrackerState  extends State<Tracker>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text(Translations.of(context).tracker),
        centerTitle: true,
      ),
      body: Text("Tracker"),
    );
  }
}