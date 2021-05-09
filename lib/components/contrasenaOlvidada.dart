import 'package:flutter/material.dart';

class RecordarPassword extends StatefulWidget {
  RecordarPassword({Key key}) : super(key: key);

  @override
  _RecordarPasswordState createState() => _RecordarPasswordState();
}

class _RecordarPasswordState extends State<RecordarPassword> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'btnPassword',
          child: new TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/recuperarPasswordScreen1');
            },
            child: Text(
              "¿Olvidaste tu Contraseña?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
