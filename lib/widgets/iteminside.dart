import 'package:flutter/material.dart';
import 'package:redesign/widgets/insidecard.dart';

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
            judul: 'Zenith Tennis Centre',
            waktu: '18.00 - 21.00',
          ),
        ],
      ),
    );
  }
}
