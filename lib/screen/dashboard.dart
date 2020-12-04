import 'package:delivery_app/lang/translation_strings.dart';
import 'package:delivery_app/tabscreen/dispatch.dart';
import 'package:delivery_app/tabscreen/profile.dart';
import 'package:delivery_app/tabscreen/qrscreen.dart';
import 'package:delivery_app/tabscreen/tracker.dart';
import 'package:delivery_app/tabscreen/notification.dart';
import 'package:flutter/material.dart';




class DashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DashBoardState();
  }

}

class _DashBoardState  extends State<DashBoard>{

  int selectedIndex = 0;
 /* final widgetOptions = [
    Text('Beer List'),
    Text('Add new beer'),
    Text('Favourites'),
  ];*/

  List<Widget> listScreens=[
    Dispatch(),
    Tracker(),
    QrScreen(),
    NotificationSceen(),
    Profile()
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: listScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/dispatch.png")), title: Text(Translations.of(context).dispatch)),
          BottomNavigationBarItem(
              icon:  ImageIcon(AssetImage("assets/images/map_icon.png")), title: Text(Translations.of(context).tracker)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/qr_icon.png")), title: Text(Translations.of(context).qrscan)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/notifications.png")), title: Text(Translations.of(context).notification)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/profile_icon.png")), title: Text(Translations.of(context).profile)),


        ],
        currentIndex: selectedIndex,
        fixedColor: Color(0xff1c586c),
        onTap: onItemTapped,
      ),
    );
  }
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}