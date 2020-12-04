import 'package:delivery_app/lang/translation_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateDispatch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CreateDispatchState();
  }
}

class _CreateDispatchState extends State<CreateDispatch> {
  TextEditingController originController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.of(context).createdispatch),
        backgroundColor: Color(0xff1c586c),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            inputDispatchDetail(Translations.of(context).origin, true, originController),
            space(),
            inputDispatchDetail(Translations.of(context).destination, true, originController),
            space(),
            inputDispatchDetail(Translations.of(context).dispatchdate, true, originController),
            space(),
            inputDispatchDetail(Translations.of(context).packageref, true, originController),
            space(),
            inputDispatchDetail(Translations.of(context).dispatcher, true, originController),
            space(),
            SizedBox(
              height: 15,
            ),
            detailDriver("assets/images/localship.png",  Translations.of(context).dirverdetail),
            inputDispatchDetail(Translations.of(context).trailertype, false, originController),
            space(),
            inputDispatchDetail(Translations.of(context).id, false, originController),
            space(),
            inputDispatchDetail(Translations.of(context).coninfo, false, originController),
            space(),
            inputDispatchDetail(Translations.of(context).trailernumber, false, originController),
            space(),
            SizedBox(
              height: 15,
            ),
            detailDriver("assets/images/cargo.png", Translations.of(context).cargo),
            space(),
            inputDispatchDetail(Translations.of(context).commodity, false, originController),
            space(),
            inputDispatchDetail(Translations.of(context).weight, false, originController),
            space(),
            inputDispatchDetail(Translations.of(context).packages, false, originController),
            space(),
            inputDispatchDetail(Translations.of(context).volumes, false, originController),
            space(),
            SizedBox(height: 15,),
            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () => {
             /*   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashBoard()),
                )*/
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
                 Translations.of(context).save,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }

  Widget inputDispatchDetail(
      String labelText, bool isArrow, TextEditingController editingController) {
    return Container(
      height: 60,
      child: TextField(
        controller: editingController,
        obscureText: true,
        style: TextStyle(fontSize: 16.0, height: 2, color: Color(0xff1c586c)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelStyle: TextStyle(fontSize: 14),
            suffixIcon: isArrow
                ? IconButton(
                    iconSize: 20,
                    disabledColor: Colors.black45,

                    onPressed: () => {},
                    icon: Icon(Icons.arrow_forward_ios,color: Colors.black26,size: 16 ),
                  )
                : null,
            labelText: labelText,
            contentPadding: EdgeInsets.only(left: 10, right: 10)),
      ),
    );
  }

  Widget space() {
    return Container(
      height: 1,
      color: Colors.black45,
    );
  }

  Widget detailDriver(String image, String labalText) {
    return Container(
      margin: EdgeInsets.only(right: 5,left: 5,bottom: 10),
      child: Row(
        children: <Widget>[
          Image(
            width: 24,
            height: 24,
            color: Color(0xff1c586c),
            image: AssetImage(image),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Text(
              labalText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff1c586c)),
            ),
          )
        ],
      ),
    );
  }
}
