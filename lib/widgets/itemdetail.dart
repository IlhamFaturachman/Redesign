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
            judul: 'Super Mario\nBros',
            price: r'4.8',
          ),
        ],
      ),
    );
  }
}
