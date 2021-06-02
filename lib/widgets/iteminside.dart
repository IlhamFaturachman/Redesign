import 'package:flutter/material.dart';
import 'package:redesign/widgets/detail.dart';
import 'package:redesign/widgets/detailinside.dart';

class ItemInside extends StatelessWidget {
  const ItemInside({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          InsideCard(
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
