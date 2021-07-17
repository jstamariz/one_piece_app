import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_piece_app/helpers/characters.dart';

class OnePieceCharacters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            children: [
              for (var character in characters)
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.white70,
                  child: Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 200,
                              width: 300,
                              child: FittedBox(
                                child: Image(
                                    image: AssetImage(character.photoUrl)),
                                fit: BoxFit.fill,
                              )),
                          ExpansionTile(
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            trailing: Icon(Icons.arrow_drop_down),
                            title: Text(character.name),
                            children: [
                              ListTile(title: Text(character.description))
                            ],
                          )
                        ],
                      )),
                )
            ],
          )),
    );
  }
}
