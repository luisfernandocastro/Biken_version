import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ItemsCatalogo extends StatelessWidget {
  const ItemsCatalogo({
    Key key,
    @required this.imagen,
    @required this.texto,
    @required this.texto2,
    @required this.precio,
    @required this.activate,
  }) : super(key: key);

  final String imagen;
  final String texto;
  final String texto2;
  final String precio;
  final Color activate;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/login');
      },
      child: Container(
        height: 211,
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
        width: 145,
        child: Card(
          shadowColor: Colors.transparent,
          child: Column(
            children: [
              Container(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  shadowColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 15.0,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: FadeInImage(
                          image: NetworkImage('$imagen'),
                          placeholder: AssetImage('assets/images/loading.gif'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 6.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 17,
                              color: activate,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 5.0),
                child: Column(
                  children: [
                    Text(
                      '$texto',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      '$texto2',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 13.0,
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
  }

  final colorfavorite = Colors.grey;
  final colorfavoriteAct = Colors.red;
}
