import 'package:flutter/material.dart';

class BannerPrincipal extends StatelessWidget {
  const BannerPrincipal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      elevation: 15.0,
      child: Column(
        children: [
          Container(
            width: size.width,
            height: 220,
            child: Column(
              children: [
                Stack(
                  children: [
                    FadeInImage(
                      image: NetworkImage(
                          'https://http2.mlstatic.com/D_NQ_NP_643744-MCO43869915018_102020-O.webp'),
                      placeholder: AssetImage(
                        'assets/images/loading.gif',
                      ),
                      fadeInDuration: Duration(milliseconds: 200),
                      width: size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    barUser(),
                  ],
                ),
                starts(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget starts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        children: [
          Icon(
            Icons.star,
            size: 16,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star,
            size: 16,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star,
            size: 16,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_half_outlined,
            size: 16,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star_outline_outlined,
            size: 16,
            color: Colors.yellow[700],
          ),
        ],
      ),
    );
  }
}

Widget barUser() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          minRadius: 16,
          backgroundImage: NetworkImage(
            'https://www.seoptimer.com/es/blog/wp-content/uploads/2016/05/foto-en-blanco-y-negro.png',
          ),
        ),
        Container(
          child: Row(
            children: [
              Icon(
                Icons.favorite_border,
                size: 18,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  '1.2K',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
