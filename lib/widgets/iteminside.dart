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
            gambar: 'assets/images/calender.png',
            judul: 'Thursday, June 10',
            waktu: '09.30 - 11.00 PM',
          ),
          InsideCard(
            gambar: 'assets/images/map.png',
            judul: 'Washington, DC',
            waktu: '18.00 - 21.00',
          ),
        ],
      ),
    );
  }
}
