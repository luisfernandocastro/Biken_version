import 'package:flutter/material.dart';

class IconoBiken extends StatelessWidget {
  const IconoBiken({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12, blurRadius: 15.0, offset: Offset(0, 15.0))
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        width: 110.0,
        height: 110.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('assets/images/icono.png'),
          ),
        ),
      ),
    );
  }
}
