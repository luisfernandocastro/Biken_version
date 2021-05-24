import 'package:flutter/material.dart';

class CirculosNumericos extends StatelessWidget {
  const CirculosNumericos({
    Key key,
    @required this.colorCirculo,
    @required this.numero,
  }) : super(key: key);

  final String numero;
  final Color colorCirculo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: colorCirculo,
            child: Text(
              '$numero',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
