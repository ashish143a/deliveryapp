import 'package:delivery_app/screen/login.dart';
import 'package:delivery_app/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';

import 'lang/scope_model_wrapper.dart';
import 'lang/translation_strings.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c586c),
      body: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 18 / 100),
          Container(
            margin: EdgeInsets.all(25),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 5 / 100,
              child: Text(
                Translations.of(context).content,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              )),
          SizedBox(
            height: 150,
          ),
          InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              )
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 7 / 100,
              decoration: BoxDecoration(
                  color: Color(0xffffa600),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/localship.png"),
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 5),
                  Text(
                    Translations.of(context).driver,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    )
                  },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 90 / 100,
                height: MediaQuery.of(context).size.height * 7 / 100,
                decoration: BoxDecoration(
                    color: Color(0xff0080e2),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/person.png"),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 5),
                    Text(
                      Translations.of(context).user,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              )),
         /* ScopedModelDescendant<AppModel>(
              builder: (context, child, model) => MaterialButton(
                    onPressed: () {
                      model.changeDirection();
                    },
                    height: 60.0,
                    color: const Color.fromRGBO(119, 31, 17, 1.0),
                    child: new Text(
                      Translations.of(context).language,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ))*/
        ],
      ),
    );
  }
}
