import 'package:flutter/cupertino.dart';
import 'package:one_piece_app/screens/about.dart';
import 'package:one_piece_app/screens/characters.dart';
import 'package:one_piece_app/screens/cover.dart';
import 'package:one_piece_app/screens/InMyLife.dart';
import 'package:one_piece_app/screens/moments.dart';

class Routes {
  static List<Widget> appRoutes = <Widget>[
    OnePieceCharacters(),
    Moments(),
    Cover(),
    About(),
    InMyLife()
  ];
}
