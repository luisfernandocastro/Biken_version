import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class ContainerButton extends StatefulWidget {
  ContainerButton({
    Key key,
    @required this.title,
    @required this.iconLeading,
    this.subtitle = '',
    this.iconTrailing,
    this.colorIconLeading,
    this.activateSubtitle,
    this.actionOnTap,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData iconLeading;
  final IconData iconTrailing;
  final Color colorIconLeading;
  bool activateSubtitle = true;
  final Function() actionOnTap;

  @override
  _ContainerButtonState createState() => _ContainerButtonState();
}

class _ContainerButtonState extends State<ContainerButton> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: HexColor('#2059BD'),
          primary: Colors.white,
          elevation: 20,
          padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
        ),
        onPressed: () {
          widget.actionOnTap();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  widget.iconLeading,
                  color: widget.colorIconLeading,
                ),
              ),
              Container(
                width: 233,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      '${widget.title}',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    _viewSubtitlefinal(),
                  ],
                ),
              ),
              Icon(
                widget.iconTrailing,
                color: Colors.grey,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _viewSubtitlefinal() {
    if (widget.activateSubtitle == false) {
      return SizedBox(
        height: .0,
      );
    }
    return Text(
      '${widget.subtitle}',
      style: TextStyle(
        fontSize: 10,
        color: Colors.grey,
      ),
    );
  }
}
