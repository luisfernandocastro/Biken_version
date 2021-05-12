import 'package:biken/components/biken_icons_icons.dart';
import 'package:biken/components/texto_divider.dart';
import 'package:flutter/material.dart';
import 'package:biken/components/gridViewTodos_principal.dart';
import 'package:biken/components/banner_principal.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

const _minSize = 0.0;
const _maxSize = 35.0;
bool expanded = false;
int selectedIndex = 0;

class ScreenHome extends StatefulWidget {
  ScreenHome({
    Key key,
  }) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool _activate = false;
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
          child: AppBar(
            leading: Text(
              'Biken',
              style: TextStyle(
                color: HexColor('#2059BD'),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
            foregroundColor: Colors.transparent,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (details) {
          _onScrollDirection();
          return true;
        },
        child: ListView(
          controller: _scrollController,
          children: [
            SafeArea(
              child: Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17.0, vertical: 5.0),
                    child: Column(
                      children: [
                        BannerPrincipal(),
                        SizedBox(height: 15.0),
                        TextoDivider(
                          textotitle: 'Recientes',
                          iconOne: null,
                          iconTwo: null,
                        ),
                        itemsRecientes(
                          context,
                        ),
                        TextoDivider(
                          textotitle: 'Todos',
                          iconOne: Icons.filter_alt_outlined,
                          iconTwo: Icons.grid_view,
                        ),
                        GridViewTodos(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: tabBarAnimated(),
    );
  }

  Widget itemsRecientes(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                                  image: AssetImage(
                                      'assets/images/bike$imagen.jpg'),
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

  Widget tabBarAnimated() {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      duration: Duration(milliseconds: 600),
      height: expanded ? _minSize : _maxSize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Icon(
              BikenIcons.bike_fill,
              color: (selectedIndex == 0)
                  ? HexColor('#2259BD')
                  : Theme.of(context).iconTheme.color,
              size: 30,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Icon(
              Icons.home_filled,
              color: (selectedIndex == 1)
                  ? HexColor('#2259BD')
                  : Theme.of(context).iconTheme.color,
              size: 25,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              setState(() {
                selectedIndex = 2;
                Navigator.of(context).pushNamed('/Screenprofile');
              });
            },
            child: Icon(
              BikenIcons.question_fill,
              color: (selectedIndex == 2)
                  ? HexColor('#2259BD')
                  : Theme.of(context).iconTheme.color,
              size: 22,
            ),
          ),
        ],
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

  void _onScrollDirection() {
    if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward &&
        expanded) {
      setState(() {
        expanded = false;
      });
    } else if (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse &&
        !expanded) {
      setState(() {
        expanded = true;
      });
    }
  }
}
