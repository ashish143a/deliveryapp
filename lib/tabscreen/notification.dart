import 'package:delivery_app/lang/translation_strings.dart';
import 'package:flutter/material.dart';




class NotificationSceen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationState();
  }

}

class _NotificationState  extends State<NotificationSceen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0Xfff7f8ff),
      appBar: AppBar(
        backgroundColor: Color(0xff1c586c),
        title:  Text(Translations.of(context).notification),
        centerTitle: true,
      ),

      body:  ListView.builder(
          itemCount: 5,
    itemBuilder: (BuildContext context,int index){

      return Card(
        elevation: 4,
          margin: EdgeInsets.only(left: 15,right: 15,top: 10),
      child:  Row(

        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Image(
              width: 48,
              height: 48,
              image: AssetImage("assets/images/profile_icon.png"),
            ),
          ),
          Expanded(child:
          Container(
              child: Text("delivery item is coming")
            ))

        ]
      ));




    })

    );
  }
}