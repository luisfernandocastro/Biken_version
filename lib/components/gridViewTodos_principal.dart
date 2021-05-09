import 'package:biken/components/itemsCatalogo_principal.dart';
import 'package:flutter/material.dart';

class GridViewTodos extends StatelessWidget {
  const GridViewTodos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCatalogo(
                imagen: 'assets/images/bike7.jpg',
                precio: '\$20.000',
                texto: 'Bicicleta de Montaña',
                texto2: '28.5" Adidas',
                activate: colorfavoriteAct,
              ),
              ItemsCatalogo(
                imagen: 'assets/images/bike6.jpg',
                precio: '\$10.000',
                texto: 'Bicicleta de Ruta',
                texto2: '25.5" bmx',
                activate: colorfavorite,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCatalogo(
                imagen: 'assets/images/bike5.jpg',
                precio: '\$15.000',
                texto: 'Bicicleta de Carretera',
                texto2: '29" Scorpio',
                activate: colorfavoriteAct,
              ),
              ItemsCatalogo(
                imagen: 'assets/images/bike4.jpg',
                precio: '\$12.000',
                texto: 'Bicicleta de Montaña',
                texto2: '26" Spider',
                activate: colorfavoriteAct,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCatalogo(
                imagen: 'assets/images/bike3.jpg',
                precio: '\$16.000',
                texto: 'Bicicleta de Montaña',
                texto2: '27" Hokka',
                activate: colorfavorite,
              ),
              ItemsCatalogo(
                imagen: 'assets/images/bike2.jpg',
                precio: '\$18.000',
                texto: 'Bicicleta de Ruta',
                texto2: '29" Bianchi',
                activate: colorfavoriteAct,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemsCatalogo(
                imagen: 'assets/images/bike7.jpg',
                precio: '\$15.000',
                texto: 'Bicicleta de Ruta',
                texto2: '26.5" Jeep',
                activate: colorfavorite,
              ),
              ItemsCatalogo(
                imagen: 'assets/images/bike1.jpg',
                precio: '\$17.000',
                texto: 'Bicicleta de Carretera',
                texto2: '27.5" bmx',
                activate: colorfavoriteAct,
              ),
            ],
          ),
        ],
      ),
    );
  }

  final colorfavorite = Colors.grey;
  final colorfavoriteAct = Colors.red;
}
