import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ItemsRecientes extends StatefulWidget {
  ItemsRecientes({Key key}) : super(key: key);

  @override
  _ItemsRecientesState createState() => _ItemsRecientesState();
}

class _ItemsRecientesState extends State<ItemsRecientes> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _activate = false;
    return Container(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _listaNumeros.length,

        //items de listview
        itemBuilder: (context, index) {
          final imagen = _listaNumeros[index];
          final texto = _listaTextoPrin[index];
          final texto2 = _listaTextosec[index];
          final precio = _listaPrecio[index];

          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
            child: Container(
              height: size.height,
              margin: EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15.0,
                    offset: Offset(0, 10.0),
                  )
                ],
              ),
              width: 125,
              child: Card(
                shadowColor: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      height: 122,
                      child: Card(
                        margin: EdgeInsets.all(10.0),
                        shadowColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 15.0,
                        child: Stack(
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: FadeInImage(
                                  image: NetworkImage(
                                      'https://raw.githubusercontent.com/luisfernandocastro/API_Biken/gh-pages/images/bike$imagen.jpg'),
                                  placeholder:
                                      AssetImage('assets/images/loading.gif'),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 6.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _activate = !_activate;
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 17,
                                      color: _activate == false
                                          ? Colors.grey
                                          : Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 10.0),
                      child: Column(
                        children: [
                          Text(
                            '$texto',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            '$texto2',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$precio',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: HexColor('#2059BD'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<int> _listaNumeros = [1, 2, 3, 4, 5, 6, 7];

  List<String> _listaTextoPrin = [
    'Bicicleta de Montaña',
    'Bicicleta de Ruta',
    'Bicicleta de Montaña',
    'Bicicleta de carretera',
    'Bicicleta de Ruta',
    'Bicicleta de Montaña',
    'Bicicleta de Montaña'
  ];

  List<String> _listaTextosec = [
    '27.5" caspio',
    '29" Todo terreno',
    '26" Todo terreno',
    '28" BMX',
    '27" Adidas',
    '26.4" Caspio',
    '25" Todo Terreno'
  ];

  List<String> _listaPrecio = [
    '\$' + '12.000',
    '\$' + '13.000',
    '\$' + '15.000',
    '\$' + '22.000',
    '\$' + '20.000',
    '\$' + '18.000',
    '\$' + '10.000',
  ];
}
