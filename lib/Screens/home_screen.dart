import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/rendering.dart';
import 'package:biken/Screens/screens_uploadBike/uploadBike_screen1.dart';
import 'package:biken/styles/biken_icons_icons.dart';
import 'package:biken/Screens/screens_home/start_Screen.dart';
import 'package:biken/Screens/profile_screen.dart';

const _maxSize = 35.0;
bool expanded = false;

class ScreenHome extends StatefulWidget {
  ScreenHome({
    Key key,
  }) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int pageActual = 1;
  List<Widget> pages = [
    ScreenUploadBike(),
    ScreenStart(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
          child: AppBar(
            leading: Text(
              'Biken',
              style: TextStyle(
                color: HexColor('#2059BD'),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
            foregroundColor: Colors.transparent,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: pages[pageActual],
      bottomNavigationBar: tabBarAnimated(),
    );
  }

  Widget tabBarAnimated() {
    return SizedBox(
      height: _maxSize,
      child: BottomNavigationBar(
        iconSize: 25.0,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: HexColor('#2059BD'),
        onTap: (index) {
          setState(() {
            pageActual = index;
          });
        },
        currentIndex: pageActual,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                BikenIcons.bike_fill,
                size: 30,
              ),
              label: 'Sube tu Bici'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(BikenIcons.question_fill), label: 'Quiénes somos?')
        ],
      ),
    );
  }
}
