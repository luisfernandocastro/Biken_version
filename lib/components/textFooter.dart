import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TextoFooter extends StatelessWidget {
  //contructor de laclase
  const TextoFooter({
    Key key,
    @required this.ruta,
    @required this.frase, //variable del texto en la parte inferior
    @required this.wordclave,
  }) : super(key: key);

  final String frase;
  final String wordclave;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$frase',
          style: TextStyle(fontSize: 12.0),
        ),
        Hero(
          tag: 'btnRegistrarse',
          child: TextButton(
            key: Key('1'),
            style: TextButton.styleFrom(
              shape: StadiumBorder(),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('$ruta');
            },
            child: Text(
              '$wordclave',
              style: TextStyle(
                fontSize: 12.0,
                color: HexColor("#2059BD"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
