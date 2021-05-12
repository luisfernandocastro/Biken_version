import 'package:animate_do/animate_do.dart';
import 'package:biken/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:biken/components/icono_biken.dart';
import 'package:biken/components/painter.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 7000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenHome(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: MypainterBiken(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Column(
              children: [
                Spacer(),
                Center(),
                IconoBiken(),
                Spacer(),
                FadeInLeftBig(
                  child: Container(
                    child: Image.asset('assets/images/bike.png',
                        height: 300.0, width: 300.0),
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Bienvenidos a nuestra app Biken,',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Text(
                      'que disfrute de su visita.',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Text(
                      '!Esperamos su pronto regreso¡',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 90.0),
                  child: LinearProgressIndicator(
                    minHeight: 2.0,
                    backgroundColor: Colors.white,
                    valueColor: new AlwaysStoppedAnimation(
                        Color.fromRGBO(32, 89, 189, 1)),
                  ),
                ),
                Spacer(),
                Text(
                  '© Biken 2021',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 10.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
