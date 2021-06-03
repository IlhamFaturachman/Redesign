import 'package:flutter/material.dart';
import 'package:redesign/widgets/members.dart';

class MembersInside extends StatelessWidget {
  const MembersInside({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          CardMembers(
            imageMembers: "assets/images/poki.jpg",
          ),
          CardMembers(
            imageMembers: "assets/images/hannah.png",
          ),
          CardMembers(
            imageMembers: "assets/images/tenz.jpg",
          ),
          CardMembers(
            imageMembers: "assets/images/tenz2.jpg",
          ),
          CardMembers(
            imageMembers: "assets/images/shroud.jpg",
          ),
        ],
      ),
    );
  }
}
