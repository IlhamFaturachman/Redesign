import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redesign/const/constants.dart';
import 'package:redesign/widgets/iteminside.dart';
import 'package:redesign/widgets/itemmembers.dart';

class Detail extends StatefulWidget {
  final avatar;
  final fullName;
  final email;

  const Detail({Key key, this.avatar, this.fullName, this.email, value})
      : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          // height: size.height / 4,
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(
                        290,
                        60,
                        20,
                        0,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.cancel),
                          iconSize: 40,
                          color: Colors.white,
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  20,
                  0,
                  0,
                ),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              margin: EdgeInsets.only(
                                left: 30,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      '${widget.avatar}'.toString(),
                                    ),
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
                              margin: EdgeInsets.fromLTRB(20, 30, 10, 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                    child: Text(
                                      '${widget.fullName}'.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            10,
                                            0,
                                            0,
                                            0,
                                          ),
                                          child: Text(
                                            '${widget.email}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: size.height * 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ItemInside(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Text(
                                "Members",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MembersInside(),
                      Container(
                        height: 60,
                        width: size.width * 0.8,
                        margin: EdgeInsets.only(top: 40),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orangeAccent,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orangeAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                //
                              },
                              child: Center(
                                child: Text(
                                  "BUY IT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
