import 'package:biken/components/containerButton.dart';
import 'package:biken/components/customcards.dart';
import 'package:flutter/material.dart';
import 'package:biken/components/circle_avatarprofile.dart';
import 'package:biken/components/texto_divider.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

bool expanded = false;
const _endPosition = 50.0;
const _startPosition = 75.0;
const _endSizeName = 25.0;
const _startSizeName = 45.0;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    const profileImage =
        'https://cdn.forbes.com.mx/2019/04/blackrrock-invertir-1-640x360.jpg';

    const feed = 'Maria_g25 | Estudiante | +57 3216785432 🚴‍😊';
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            children: [
              ImagePortada(),
              ButtonSettings(),
              Positioned(
                top: 150,
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 105, right: 10.0, left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (details) {
                      _onScrollDirection();
                      return true;
                    },
                    child: ListView(
                      controller: _scrollController,
                      children: [
                        Column(
                          children: [
                            cardsGrid(),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ContainerButton(
                              title: 'Tus Estadisticas en Biken',
                              subtitle: 'Ganancias Mensuales',
                              iconLeading: Icons.query_stats,
                              colorIconLeading: Colors.black,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ContainerButton(
                              title: 'Compartir Biken App',
                              iconLeading: Icons.share,
                              colorIconLeading: Colors.black,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                right: 1,
                left: 1,
                top: expanded ? _endSizeName : _startSizeName,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 142),
                      child: Text(
                        'Maria Gutierrez',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#2059BD'),
                        ),
                      ),
                    ),
                    Text(
                      feed,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextoDivider(
                        textotitle: 'Mis Bicicletas',
                        iconOne: Icons.list,
                        iconTwo: Icons.grid_view,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 500),
                right: 1,
                left: 1,
                top: expanded ? _endPosition : _startPosition,
                child: Hero(
                  tag: profileImage,
                  child: AvatarIcon(
                    profileImage: profileImage,
                    child: SizedBox(),
                    height: 105.0,
                    width: 105.0,
                    marginColor: HexColor('#2059BD'),
                    marginWidth: 1.5,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

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
      setState(
        () {
          expanded = true;
        },
      );
    }
  }

  Widget cardsGrid() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CustomCards(
                imageCard:
                    'https://raw.githubusercontent.com/luisfernandocastro/API_Biken/gh-pages/images/bike4.jpg',
                sizeHeight: 200,
                sizeWidth: 230,
              ),
              Column(
                children: [
                  CustomCards(
                    imageCard:
                        'https://raw.githubusercontent.com/luisfernandocastro/API_Biken/gh-pages/images/bike1.jpg',
                    sizeHeight: 80,
                    sizeWidth: 92,
                  ),
                  CustomCards(
                    imageCard:
                        'https://raw.githubusercontent.com/luisfernandocastro/API_Biken/gh-pages/images/bike3.jpg',
                    sizeHeight: 80,
                    sizeWidth: 92,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCards(
                imageCard:
                    'https://raw.githubusercontent.com/luisfernandocastro/API_Biken/gh-pages/images/bike2.jpg',
                sizeHeight: 130,
                sizeWidth: 150,
              ),
              CustomCards(
                imageCard:
                    'https://raw.githubusercontent.com/luisfernandocastro/API_Biken/gh-pages/images/bike5.jpg',
                sizeHeight: 130,
                sizeWidth: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonSettings extends StatelessWidget {
  const ButtonSettings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 25,
      left: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            heroTag: null,
            mini: true,
            onPressed: () {
              Navigator.of(context).pushNamed('/ScreenEditProfile');
            },
            child: Icon(
              Icons.settings,
              color: HexColor('#2029BD'),
            ),
          ),
        ],
      ),
    );
  }
}

class ImagePortada extends StatelessWidget {
  const ImagePortada({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const coveragePageImage = 'https://www.xtrafondos.com/thumbs/1_4709.jpg';
    return Positioned(
      bottom: 380,
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(coveragePageImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
