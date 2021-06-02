import 'package:flutter/material.dart';
import 'package:redesign/widgets/detail.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardDetail(
            gambar: 'assets/images/game2.png',
            judul: 'Zenith Tennis\nCentre',
            price: r'4.8',
          ),
          // CardDetail(
          //   gambar: 'assets/images/montor.png',
          //   judul: 'Car X',
          //   price: r'$.25 each copy',
          // ),
          // CardDetail(
          //   gambar: 'assets/images/sage.png',
          //   judul: 'Valorant',
          //   price: r'$.20 each copy',
          // ),
        ],
      ),
    );
  }
}
