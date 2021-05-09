import 'package:biken/components/biken_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

class Sociales extends StatefulWidget {
  Sociales({Key key}) : super(key: key);

  @override
  _SocialesState createState() => _SocialesState();
}

class _SocialesState extends State<Sociales> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('____________ o _____________'),
          Text('continúa con'),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botonRedes(BikenIcons.google),
              SizedBox(
                width: 10.0,
              ),
              botonRedes(BikenIcons.facebook),
            ],
          ),
        ],
      ),
    );
  }

  Widget botonRedes(IconData icono) {
    return FloatingActionButton(
      heroTag: null,
      highlightElevation: 0.0,
      mini: true,
      splashColor: Color.fromRGBO(32, 89, 189, .5),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      onPressed: () {},
      child: Icon(
        icono,
        size: 35.0,
        color: HexColor("#2059BD"),
      ),
    );
  }
}
