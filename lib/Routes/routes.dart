import 'package:flutter/material.dart';
import 'package:biken/pages/RecuperarPassword/recPasswordScreen1.dart';
import 'package:biken/pages/RecuperarPassword/recPasswordScreen2.dart';
import 'package:biken/pages/RecuperarPassword/recPasswordScreen3.dart';
import 'package:biken/pages/RecuperarPassword/recPasswordScreen4.dart';
import 'package:biken/pages/login.dart';
import 'package:biken/pages/home.dart';
import 'package:biken/pages/registro.dart';
import 'package:biken/pages/splash_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/splashScreen': (context) => SplashScreen(),
    '/login': (context) => Login(),
    '/Registro': (context) => Registro(),
    '/recuperarPasswordScreen1': (context) => RecuperarPassword(),
    '/recuperarPasswordScreen2': (context) => RecuperarPasswordScreen2(),
    '/recuperarPasswordScreen3': (context) => RecuperarPasswordScreen3(),
    '/recuperarPasswordScreen4': (context) => RecuperarPasswordScreen4(),
    '/ScreenHome': (context) => ScreenHome(),
  };
}
