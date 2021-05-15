//Widget  que crea los campos de texto en el login
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox(
      {Key key,
      @required this.placeholder,
      this.icono,
      this.verContrasena,
      this.verCaracteres = false,
      @required this.tipoTexto})
      : super(key: key);

  final String placeholder;
  final IconData icono;
  final Widget verContrasena;
  final bool verCaracteres;
  final TextInputType tipoTexto;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 35.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 20.0, offset: Offset(0, 10))
          ]),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              keyboardType: tipoTexto,
              obscureText: verCaracteres,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "$placeholder",
                hintStyle: TextStyle(color: Colors.grey[400]),
                suffixIcon: verContrasena,
              ),
              //obscureText: verCaracteres,
            ),
          ),
        ],
      ),
    );
  }
}
