import 'package:flutter/material.dart';
import 'package:biken/styles/biken_icons_icons.dart';
import 'package:biken/components/widgets/botonPrincipal.dart';
import 'package:biken/components/widgets/cajasTexto.dart';
import 'package:biken/components/widgets/circuloIconoScreensPass.dart';
import 'package:biken/components/widgets/transicionCirculares.dart';
import 'package:hexcolor/hexcolor.dart';

class RecuperarPasswordScreen3 extends StatefulWidget {
  const RecuperarPasswordScreen3({Key key}) : super(key: key);

  @override
  _RecuperarPasswordScreen3State createState() =>
      _RecuperarPasswordScreen3State();
}

class _RecuperarPasswordScreen3State extends State<RecuperarPasswordScreen3> {
  var _showPassword = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(32.0),
          child: AppBar(
            leading: Hero(
              tag: 'btn5',
              child: IconButton(
                iconSize: 20.0,
                splashRadius: 15.0,
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: HexColor('#2059BD'),
                ),
              ),
            ),
            foregroundColor: Colors.transparent,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text(''),
          ),
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
              .onDrag, //oculta el teclado al mover el Scroll
          child: SafeArea(
            child: Container(
              height: size.height * 0.90,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CirculosNumericos(
                          numero: '1',
                          colorCirculo: Color.fromRGBO(32, 89, 189, 1),
                        ),
                        CirculosNumericos(
                          numero: '2',
                          colorCirculo: Color.fromRGBO(32, 89, 189, 1),
                        ),
                        CirculosNumericos(
                          numero: '3',
                          colorCirculo: Color.fromRGBO(32, 89, 189, 1),
                        ),
                      ],
                    ),
                    Spacer(),
                    CirculoIcono(
                      icono: BikenIcons.padlock_open_f,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                          TextBox(
                            placeholder: 'Nueva Contraseña',
                            icono: Icons.remove_red_eye,
                            verContrasena: verPassword(),
                            verCaracteres: !this._showPassword,
                            tipoTexto: TextInputType.text,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                          TextBox(
                            placeholder: 'Confirmar Contraseña',
                            icono: Icons.remove_red_eye,
                            verContrasena: verPassword(),
                            verCaracteres: !this._showPassword,
                            tipoTexto: TextInputType.text,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.10,
                          ),
                          BotonPrincipal(
                            textBoton: 'Aceptar',
                            ruta: '/recuperarPasswordScreen4',
                            tag: 'cambioPassswordExit',
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
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
