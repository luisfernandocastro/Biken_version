import 'package:biken/components/customcards.dart';
import 'package:flutter/material.dart';
import 'package:biken/components/circle_avatarprofile.dart';
import 'package:biken/components/texto_divider.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

const _minPosition = 50.0;
const _maxPosition = 80.0;
bool expanded = false;
const _minSizeName = 30.0;
const _maxSizeName = 53.0;
bool moving = false;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const coveragePageImage = 'https://www.xtrafondos.com/thumbs/1_4709.jpg';
    const profileImage =
        'https://cdn.forbes.com.mx/2019/04/blackrrock-invertir-1-640x360.jpg';

    const feed = 'Maria_g25 | Estudiante | +57 3216785432 🚴‍😊';
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            children: [
              Positioned(
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
              ),
              Positioned(
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
                      onPressed: () {},
                      child: const Icon(
                        Icons.settings,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                bottom: 0,
                right: 0,
                left: 0,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (details) {
                    _onScrollDirection();
                    return true;
                  },
                  child: ListView(
                    controller: _scrollController,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 95, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
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
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: cardsGrid(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 600),
                right: 1,
                left: 1,
                top: expanded ? _minSizeName : _maxSizeName,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 147),
                      child: Text(
                        'Maria Gutierrez',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#2059BD'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      feed,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 600),
                right: 1,
                left: 1,
                top: expanded ? _minPosition : _maxPosition,
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
                imageCard: 'assets/images/bike1.jpg',
                sizeHeight: 190,
                sizeWidth: 190,
              ),
              Column(
                children: [
                  CustomCards(
                    imageCard: 'assets/images/bike1.jpg',
                    sizeHeight: 80,
                    sizeWidth: 80,
                  ),
                  CustomCards(
                    imageCard: 'assets/images/bike1.jpg',
                    sizeHeight: 80,
                    sizeWidth: 80,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              CustomCards(
                imageCard: 'assets/images/bike1.jpg',
                sizeHeight: 100,
                sizeWidth: 100,
              ),
              CustomCards(
                imageCard: 'assets/images/bike1.jpg',
                sizeHeight: 100,
                sizeWidth: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
