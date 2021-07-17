import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: (Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
          Image(image: AssetImage('assets/cover/Luffys-flag-icon.png')),
          Text(
            "One Piece App",
            style: TextStyle(
                fontFamily: "Helvetica",
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Text(
            "Jorge Tamariz - 20197436",
            style: TextStyle(
                fontFamily: "Helvetica",
                color: Colors.red,
                fontWeight: FontWeight.bold),
          )
        ]))));
  }
}
