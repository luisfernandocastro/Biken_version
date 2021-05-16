import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

bool changeColor = false;

class TextoDivider extends StatefulWidget {
  const TextoDivider({
    Key key,
    @required this.textotitle,
    this.iconOne,
    this.iconTwo,
  }) : super(key: key);

  final String textotitle;
  final IconData iconOne;
  final IconData iconTwo;

  @override
  _TextoDividerState createState() => _TextoDividerState();
}

class _TextoDividerState extends State<TextoDivider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${widget.textotitle}',
          style: TextStyle(
            color: HexColor('#2059BD'),
          ),
        ),
        Container(
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    changeColor = !changeColor;
                  });
                },
                child: Icon(
                  //Icons.filter_alt_outlined,
                  widget.iconOne,
                  color: changeColor == true
                      ? HexColor('#2059BD')
                      : Colors.grey[400],
                  size: 20,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    changeColor = !changeColor;
                  });
                },
                child: Icon(
                  //Icons.grid_view,
                  widget.iconTwo,
                  color: changeColor == false
                      ? HexColor('#2059BD')
                      : Colors.grey[400],
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
