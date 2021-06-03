import 'package:flutter/material.dart';

class CardMembers extends StatelessWidget {
  final String imageMembers;

  const CardMembers({Key key, this.imageMembers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(right: 5, left: 2),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(imageMembers), fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
