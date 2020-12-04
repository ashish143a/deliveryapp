import 'package:delivery_app/lang/translation_strings.dart';
import 'package:delivery_app/tabscreen/create_disptach.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dispatch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DispatchState();
  }
}

class _DispatchState extends State<Dispatch> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c586c),
        title: Text(Translations.of(context).dispatch),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          createDispatch(),
          SizedBox(height: 20),
          listDispatch(),
          SizedBox(height: 20),
        ],
      )),
    );
  }

  Widget createDispatch() {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateDispatch()),
        )
      },
      child: Center(
        child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 90 / 100,
            height: MediaQuery.of(context).size.height * 8 / 100,
            decoration: BoxDecoration(
                color: Color(0xff0080e2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              Translations.of(context).createdispatch,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ),
    );
  }

  Widget listDispatch() {
    return Container(
        color: Colors.black12,
        height: MediaQuery.of(context).size.height * 65 / 100,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "No.12345",
                            style: TextStyle(fontSize: 16),
                          ),
                          Image(
                            width: 24,
                            height: 24,
                            image: AssetImage("assets/images/map_icon.png"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Aug 10 2020",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          ImageIcon(
                            AssetImage("assets/images/location_gre.png"),
                            color: Colors.deepPurpleAccent,
                          ),
                          Container(
                            color: Colors.black26,
                            height: 1,
                            width: 120,
                          ),
                          ImageIcon(
                            AssetImage("assets/images/location_blue.png"),
                            color: Colors.green,
                          ),
                          Text(
                            "Aug 27 2020",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Dubais",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Amman",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    deliveryButton(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            Translations.of(context).status,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 30 / 100,
                            height:
                                MediaQuery.of(context).size.height * 5 / 100,
                            decoration: BoxDecoration(
                                color: Color(0xff0080e2),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              "Active",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }

  deliveryButton() {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              Translations.of(context).delivery,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
