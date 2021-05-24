import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  const CustomCards({
    Key key,
    @required this.sizeHeight,
    @required this.sizeWidth,
    @required this.imageCard,
    this.child,
  }) : super(key: key);

  final double sizeHeight;
  final double sizeWidth;
  final String imageCard;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      elevation: 15.0,
      child: Column(
        children: [
          Container(
            width: sizeWidth,
            height: sizeHeight,
            child: Column(
              children: [
                Stack(
                  children: [
                    FadeInImage(
                      image: NetworkImage('$imageCard'),
                      placeholder: AssetImage(
                        'assets/images/loading.gif',
                      ),
                      fadeInDuration: Duration(milliseconds: 200),
                      width: sizeWidth,
                      height: sizeHeight,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      child: child,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
