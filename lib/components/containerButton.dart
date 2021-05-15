import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    Key key,
    @required this.title,
    @required this.iconLeading,
    this.subtitle = '',
    this.iconTrailing,
    this.colorIconLeading,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData iconLeading;
  final IconData iconTrailing;
  final Color colorIconLeading;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: HexColor('#2059BD'),
          primary: Colors.white,
          elevation: 20,
          padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  iconLeading,
                  color: colorIconLeading,
                ),
              ),
              Container(
                width: 233,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    Text(
                      '$subtitle',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                iconTrailing,
                color: Colors.grey,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
