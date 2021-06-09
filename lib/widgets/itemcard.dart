import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:redesign/page/detail.dart';

class CardItem extends StatefulWidget {
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  List users = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      print(items);
      setState(() {
        users = items;
      });
    } else {
      setState(
        () {
          users = [];
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.54,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          var fullName =
              users[index]['first_name'] + " " + users[index]['last_name'];
          var email = users[index]['email'];
          var avatar = users[index]['avatar'];
          return Padding(
            padding: const EdgeInsets.only(
              top: 0,
            ),
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          avatar.toString(),
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0),
                          blurRadius: 20,
                          offset: Offset(0, 7),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 30, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(fullName.toString()),
                        SizedBox(height: 30),
                        Text(
                          email.toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => Detail(
                      avatar: '$avatar',
                      email: '$email',
                      fullName: '$fullName',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
