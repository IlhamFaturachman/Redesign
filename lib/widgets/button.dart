import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(left: 270),
          child: Material(
            borderRadius: BorderRadius.circular(40.0),
            color: Colors.yellow,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onPressed: () {},
                child: Center(
                  child: Icon(
                    Icons.settings_input_component_rounded,
                    color: Colors.white,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
