import 'package:flutter/material.dart';
import 'package:redesign/page/detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redesign/widgets/itemcard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              // ignore: missing_required_param
              builder: (context) => Detail(),
            ),
          );
        },
        child: Icon(Icons.settings_input_component_rounded),
        backgroundColor: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.36,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.37 - 34,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/game2.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 30,
                    right: 30,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 2,
                              color: Colors.black26),
                        ],
                      ),
                      //adasdajsdasd
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 95, 10),
                    child: Text(
                      "Popular Games",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CardItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
