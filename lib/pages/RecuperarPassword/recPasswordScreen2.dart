import 'package:biken/components/biken_icons_icons.dart';
import 'package:biken/components/textFooter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:biken/components/botonPrincipal.dart';
import 'package:biken/components/circuloIconoScreensPass.dart';
import 'package:biken/components/transicionCirculares.dart';

class RecuperarPasswordScreen2 extends StatelessWidget {
  const RecuperarPasswordScreen2({Key key}) : super(key: key);

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
              tag: 'btn4',
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
                          colorCirculo: Color.fromRGBO(32, 89, 189, 0.5),
                        ),
                      ],
                    ),
                    Spacer(),
                    CirculoIcono(
                      icono: BikenIcons.hashtag_line,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 250.0,
                          child: Text(
                            'Ingrese el código enviado a su correo',
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
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.2,
                          ),
                          BotonPrincipal(
                              textBoton: 'Aceptar',
                              ruta: '/recuperarPasswordScreen3',
                              tag: 'aceptarCodigo'),
                          TextoFooter(
                              ruta: '/Registro',
                              frase: '',
                              wordclave: 'Enviar el código nuevamente'),
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
