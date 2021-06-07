import 'package:flutter/material.dart';

class Func extends StatefulWidget {
  @override
  _FuncState createState() => _FuncState();
}

Widget getCard(index) {
  var fullName = index['first_name'] + " " + index['last_name'];
  var email = index['email'];
  var avatar = index['avatar'];

  return SingleChildScrollView(
    padding: const EdgeInsets.all(5.0),
    child: Card(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      avatar.toString(),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Column(
                children: <Widget>[
                  Center(
                    child: Text(fullName.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(email.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _FuncState extends State<Func> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
