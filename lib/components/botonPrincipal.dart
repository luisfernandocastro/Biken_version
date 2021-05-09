import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BotonPrincipal extends StatelessWidget {
  const BotonPrincipal({
    Key key,
    @required this.textBoton,
    @required this.ruta,
    @required this.tag,
  }) : super(key: key);

  final String textBoton;
  final String ruta;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: '$tag',
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('$ruta');
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            primary: HexColor('#2059BD'),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "$textBoton",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
