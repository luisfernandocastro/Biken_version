import 'package:animate_do/animate_do.dart';
import 'package:biken/components/widgets/botonPrincipal.dart';
import 'package:biken/styles/painter.dart';
import 'package:flutter/material.dart';

class RecuperarPasswordScreen4 extends StatelessWidget {
  const RecuperarPasswordScreen4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomPaint(
        painter: MypainterBiken(),
        child: SafeArea(
          child: Center(
            child: Container(
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      height: 250,
                      width: 250,
                      child: ZoomIn(
                        child: Image.asset(
                          'assets/images/check.png',
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 180,
                      child: Column(
                        children: [
                          Text(
                            'Genial!',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '¡su contraseña se ha restablecido correctamente! ahora  inicie sesión con su nueva contraseña.',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: BotonPrincipal(
                          textBoton: 'Iniciar sesión',
                          ruta: '/login',
                          tag: 'botonreglogin'),
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
