import 'package:flutter/cupertino.dart';
import 'package:one_piece_app/helpers/commentary.dart';

class InMyLife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image(
              image: AssetImage("assets/inMyLife/shanks_luffy.jpg"),
              height: 350,
              width: 350),
          borderRadius: BorderRadius.circular(400),
        ),
        Text(
          "What does One Piece mean to me?",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(commentary),
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
