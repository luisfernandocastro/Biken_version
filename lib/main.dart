import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:biken/Routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(
      routes: getApplicationRoutes(),
      initialRoute: '/splashScreen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ABeeZee'),
      title: 'Biken',
      //home: SplashScreen(),
    );
  }
}
