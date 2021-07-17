import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_piece_app/helpers/arcs.dart';

class About extends StatefulWidget {
  @override
  AboutState createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
        heightFactor: 2,
        child: Text(
          "Eichiiro Oda - One Piece Arcs",
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.deepOrange,
          ),
        ),
      ),
      Image(image: AssetImage("assets/eiichiro-oda.jpg")),
      for (var arc in arcs)
        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.end,
          trailing: Icon(Icons.arrow_drop_down),
          title: Text(arc.title),
          children: [
            ListTile(title: Text(arc.plot)),
            Image(image: AssetImage(arc.imageLink))
          ],
        )
    ]);
  }
}
