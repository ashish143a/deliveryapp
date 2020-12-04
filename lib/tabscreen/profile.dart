import 'package:delivery_app/lang/translation_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c586c),
        title: Text(Translations.of(context).profile),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          imageEdit(),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          Translations.of(context).orginfo,
                          style: TextStyle(
                              color: Color(0xff1c586c),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => {},
                          icon: ImageIcon(
                            AssetImage("assets/images/edit_icon.png"),
                            color: Color(0xff1c586c),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  //Companay Name
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        //company nam
                        Container(
                      width: MediaQuery.of(context).size.width*100,
                          child: Text(Translations.of(context).companyname,style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5),

                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text("Freash Foods(Demo)",style: TextStyle(
                              color: Color(0xff1c586c),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(height:10,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text(Translations.of(context).orgrole,style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text("Shipper",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  Container(

                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(height:10,),

                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text(Translations.of(context).industry,style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text("Foods and Beverage",style: TextStyle(
                              color: Color(0xff1c586c),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  Container(

                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(height:10,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text(Translations.of(context).contacts,style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text("+9648425455454",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  Container(

                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(height:10,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text(Translations.of(context).website,style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text("www.freshfood.demo.com",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.black26,
                    height: 1,
                  ),
                  SizedBox(height:10,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text(Translations.of(context).overview,style: TextStyle(
                              color: Colors.black26,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width*100,
                          child: Text("text text text",style: TextStyle(
                              color: Color(0xff1c586c),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height:10,),

                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget imageEdit() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://i.imgur.com/BoN9kdC.png")))),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 180,
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Jhon",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1c586c)),
                    ),
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "+725454548664664",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: ImageIcon(
                AssetImage("assets/images/edit_icon.png"),
                color: Color(0xff1c586c),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
