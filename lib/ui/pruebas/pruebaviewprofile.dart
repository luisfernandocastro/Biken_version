import 'package:biken/components/widgets/botonPrincipal.dart';
import 'package:flutter/material.dart';

class PruebaViewProfile extends StatelessWidget {
  const PruebaViewProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            child: Column(
              children: [
                Spacer(),
                Text(
                  'view Profile Biken',
                ),
                Spacer(),
                BotonPrincipal(
                  marginHorizontal: 30,
                  textBoton: 'Ir a esa vista',
                  ruta: '/Screenprofile',
                  tag: 'pviewprofile',
                ),
                Spacer(),
              ],
            )),
      ),
    );
  }
}
