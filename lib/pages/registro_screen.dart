import 'package:flutter/material.dart';
import 'package:biken/components/botonPrincipal.dart';
import 'package:biken/components/cajasTexto.dart';
import 'package:biken/components/icono_biken.dart';
import 'package:biken/components/painter.dart';
import 'package:biken/components/sociales.dart';
import 'package:biken/components/textFooter.dart';

class Registro extends StatefulWidget {
  Registro({Key key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: MypainterBiken(),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
              .onDrag, //oculta el teclado al mover el Scroll
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  child: Column(
                    children: [
                      IconoBiken(),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 26.0),
                            child: Column(
                              children: [
                                TextBox(
                                  name: 'Nombre y Apellido',
                                  icono: null,
                                  verContrasena: null,
                                  verCaracteres: false,
                                  tipoTexto: TextInputType.text,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextBox(
                                  name: 'Correo Electronico',
                                  icono: null,
                                  verContrasena: null,
                                  verCaracteres: false,
                                  tipoTexto: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextBox(
                                  name: 'Contraseña',
                                  icono: Icons.remove_red_eye,
                                  verContrasena: verPassword(),
                                  verCaracteres: !this._showPassword,
                                  tipoTexto: TextInputType.text,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextBox(
                                  name: 'Repite tu contraseña',
                                  icono: Icons.remove_red_eye,
                                  verContrasena: verPassword(),
                                  verCaracteres: !this._showPassword,
                                  tipoTexto: TextInputType.text,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextBox(
                                  name: 'Número de Teléfono',
                                  icono: null,
                                  verContrasena: null,
                                  verCaracteres: false,
                                  tipoTexto: TextInputType.phone,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Container(
                                  height: 50,
                                  child: BotonPrincipal(
                                    textBoton: 'Continuar',
                                    ruta: 'null/sin definir',
                                    tag: 'botonRegistro',
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Sociales(),
                                TextoFooter(
                                  ruta: '/login',
                                  frase: '¿Ya eres miembro?',
                                  wordclave: 'Inicia Sesión',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget verPassword() {
    return IconButton(
      icon: Icon(
        Icons.remove_red_eye,
        color: this._showPassword ? Colors.blue[900] : Colors.grey[400],
      ),
      onPressed: () {
        setState(() => this._showPassword = !this._showPassword);
      },
    );
  }
}
