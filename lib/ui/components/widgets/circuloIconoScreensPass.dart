import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CirculoIcono extends StatelessWidget {
  const CirculoIcono({
    Key key,
    @required this.icono,
  }) : super(key: key);

  final IconData icono;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey[350],
              blurRadius: 50.0,
              offset: Offset(0, 20.0))
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        width: 140.0,
        height: 140.0,
        child: Container(
          child: Icon(
            icono,
            size: 120.0,
            color: HexColor('#2059BD'),
          ),
        ),
      ),
    );
  }
}
