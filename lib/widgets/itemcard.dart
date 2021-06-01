import 'package:flutter/material.dart';

class CardBapak extends StatelessWidget {
  final String judul, gambar;
  final String price;
  const CardBapak({
    Key key,
    this.judul,
    this.gambar,
    this.price,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(
              top: 30,
              left: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(gambar),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0),
                    blurRadius: 20,
                    offset: Offset(0, 7),
                  )
                ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    judul,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    10,
                    5,
                    100,
                    5,
                  ),
                  child: Text(
                    price,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
