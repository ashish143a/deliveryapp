import 'package:delivery_app/lang/translation_strings.dart';
import 'package:flutter/material.dart';



class QrScreen  extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _QrScreenState();
  }



}

class _QrScreenState extends State<QrScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text(Translations.of(context).qrscan),
        centerTitle: true,
      ),

      body: Text("Qr screen"),
    );
  }
}