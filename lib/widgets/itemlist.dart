import 'package:flutter/material.dart';
import 'package:redesign/widgets/itemcard.dart';

class Itemlist extends StatelessWidget {
  const Itemlist({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardBapak(
            gambar: 'assets/images/game2.png',
            judul: 'Mario Bros',
            price: r'$.15 each copy',
          ),
          CardBapak(
            gambar: 'assets/images/montor.png',
            judul: 'Car X',
            price: r'$.25 each copy',
          ),
          CardBapak(
            gambar: 'assets/images/sage.png',
            judul: 'Valorant',
            price: r'$.20 each copy',
          ),
        ],
      ),
    );
  }
}
