import 'package:flutter/material.dart';
import 'package:biken/Screens/completionsScreens/completionAllScreen.dart';
import 'package:biken/Screens/editProfileScreen.dart';
import 'package:biken/Screens/home_screen.dart';
import 'package:biken/Screens/profile_screen.dart';
import 'package:biken/Screens/login_screen.dart';
import 'package:biken/Screens/screens_uploadBike/uploadBike_screen2.dart';
import 'package:biken/Screens/splash_screen.dart';
import 'package:biken/Screens/RecuperarPassword/recPasswordScreen1.dart';
import 'package:biken/Screens/RecuperarPassword/recPasswordScreen2.dart';
import 'package:biken/Screens/RecuperarPassword/recPasswordScreen3.dart';
import 'package:biken/Screens/registro_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/splashScreen': (context) => SplashScreen(),
    '/login': (context) => Login(),
    '/Registro': (context) => Registro(),
    '/recuperarPasswordScreen1': (context) => RecuperarPassword(),
    '/recuperarPasswordScreen2': (context) => RecuperarPasswordScreen2(),
    '/recuperarPasswordScreen3': (context) => RecuperarPasswordScreen3(),
    '/ScreenHome': (context) => ScreenHome(),
    '/Screenprofile': (context) => ProfileScreen(),
    '/ScreenEditProfile': (context) => EditProfileScreen(),
    '/ScreenUploadBike2': (context) => ScreenUploadBike2(),
    '/completionScreenPassword': (context) => CompletionScreenPassword(),
    '/completionScreenUpload': (context) => CompletionScreenUpload(),
    '/completionScreenRegister': (context) => CompletionScreenRegister()
  };
}
