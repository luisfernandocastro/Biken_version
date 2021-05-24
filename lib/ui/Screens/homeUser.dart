import 'package:biken/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class HomeUser extends ScreenHome {
  HomeUser({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luis castro'),
      ),
    );
  }
}
