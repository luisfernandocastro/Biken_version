import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CardsUpload extends StatelessWidget {
  const CardsUpload({
    Key key,
    @required this.sizeHeight,
    @required this.sizeWidth,
    this.child,
  }) : super(key: key);

  final double sizeHeight;
  final double sizeWidth;
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
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.photo_camera_back,
                    size: 65,
                    color: HexColor('#2059BD'),
                  ),
                ),
                Container(
                  width: sizeWidth,
                  height: sizeHeight,
                  child: child,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
