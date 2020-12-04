import 'package:delivery_app/lang/translation_strings.dart';
import 'package:delivery_app/screen/dashboard.dart';
import 'package:delivery_app/screen/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  bool _validate = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0Xff1c586c),
          centerTitle: true,
          title: Text(
            Translations.of(context).login,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              inputWidget(Translations.of(context).email, emailController, false),
              SizedBox(height: 15),
              inputWidget(Translations.of(context).password, passwordController, true),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height * 5 / 100,
                child: Text(
                  Translations.of(context).forgot,
                  style: TextStyle(
                      color: Color(0xff0080e2),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoard()),
                  )
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  height: MediaQuery.of(context).size.height * 8 / 100,
                  decoration: BoxDecoration(
                      color: Color(0xff0080e2),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    Translations.of(context).login,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: MediaQuery.of(context).size.height * 5 / 100,
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () => {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              )
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  height: MediaQuery.of(context).size.height * 8 / 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/google_icon.png"),
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 5),
                      Text(
                        Translations.of(context).withgoogle,
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black12,
                  height: 50,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: Translations.of(context).havenotaccount,
                            style: TextStyle(color: Colors.black45)),
                        TextSpan(
                            text: Translations.of(context).signup,
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }

  Widget inputWidget(String labelText, TextEditingController editingController,
      bool isPassword) {
    return Container(
      child: TextField(
        controller: editingController,
        obscureText: true,
        decoration: InputDecoration(
            labelStyle: TextStyle(fontSize: 14),
            suffixIcon: isPassword
                ? IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.remove_red_eye),
                  )
                : null,
            labelText: labelText,
            errorText: _validate ? 'Value Can\'t Be Empty' : null,
            contentPadding: EdgeInsets.only(left: 10,right: 10)),
      ),
    );
  }
}
