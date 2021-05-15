import 'package:biken/components/textFooter.dart';
import 'package:flutter/material.dart';
import 'package:biken/components/botonPrincipal.dart';
import 'package:biken/components/cajasTexto.dart';
import 'package:biken/components/contrasenaOlvidada.dart';
import 'package:biken/components/sociales.dart';
import 'package:biken/components/icono_biken.dart';
import 'package:biken/components/painter.dart';

class Login extends StatefulWidget {
  Login({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: MypainterBiken(),
        child: SingleChildScrollView(
          //importate widget al momento de aparecer el teclado
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
              .onDrag, //oculta el teclado al mover el Scroll
          child: SafeArea(
            child: Center(
              child: Container(
                height: size.height * 0.95,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Spacer(),
                      IconoBiken(),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                TextBox(
                                  placeholder: 'Correo',
                                  icono: null,
                                  tipoTexto: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                TextBox(
                                  placeholder: 'Contraseña',
                                  icono: Icons.remove_red_eye,
                                  verContrasena: verPassword(),
                                  verCaracteres: !this._showPassword,
                                  tipoTexto: TextInputType.text,
                                ),
                                RecordarPassword(),
                                BotonPrincipal(
                                    textBoton: 'Iniciar sesión',
                                    ruta: '/ScreenHome',
                                    tag: 'IniciaSesion'),
                              ],
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Sociales(),
                      Spacer(),
                      TextoFooter(
                        ruta: '/Registro',
                        frase: '¿Aún no estás en Biken?',
                        wordclave: 'Registrate',
                      ),
                      Spacer(),
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

  //Funcion para  mostrar contraseña en textField

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
