import 'dart:ui';

import 'package:biken/components/biken_icons_icons.dart';
import 'package:biken/components/botonPrincipal.dart';
import 'package:biken/components/cajasTexto.dart';
import 'package:biken/components/circuloIconoScreensPass.dart';
import 'package:biken/components/textFooter.dart';
import 'package:biken/components/transicionCirculares.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RecuperarPassword extends StatelessWidget {
  const RecuperarPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.0),
        child: AppBar(
          leading: Hero(
            tag: 'btnReturn',
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
          child: Center(
            child: Container(
              height: size.height * 0.90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CirculosNumericos(
                          numero: '1',
                          colorCirculo: Color.fromRGBO(32, 89, 189, 1),
                        ),
                        CirculosNumericos(
                          numero: '2',
                          colorCirculo: Color.fromRGBO(32, 89, 189, 0.5),
                        ),
                        CirculosNumericos(
                          numero: '3',
                          colorCirculo: Color.fromRGBO(32, 89, 189, .2),
                        ),
                      ],
                    ),
                    Spacer(),
                    CirculoIcono(
                      icono: BikenIcons.padlock_close,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '¿Tienes problemas para entrar?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13.8),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          width: 250.0,
                          child: Text(
                            'introduce tu correo electrónico y te enviaremos un codigo de cuatro digitos para que vuelvas a entrar en tu cuenta',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        children: [
                          TextBox(
                            name: 'Correo Electronico',
                            icono: null,
                            verContrasena: null,
                            verCaracteres: false,
                            tipoTexto: TextInputType.emailAddress,
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.04),
                          BotonPrincipal(
                            textBoton: 'Enviar Codigo',
                            ruta: '/recuperarPasswordScreen2',
                            tag: 'EnviarCodigo',
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text('o'),
                          TextoFooter(
                              ruta: '/Registro',
                              frase: '',
                              wordclave: 'crear cuenta nueva'),
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
}
