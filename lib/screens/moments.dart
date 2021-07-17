import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Moments extends StatelessWidget {
  final List<String> urls = [
    'https://media.giphy.com/media/rCdzKS756yiGs/giphy.gif',
    'https://media.giphy.com/media/x6YddX6Gln82c/giphy.gif',
    'https://media.giphy.com/media/qPzZQtsv21zjy/giphy.gif',
    'https://media.giphy.com/media/Yl4eDi5Vg1NO8/giphy.gif',
    'https://media.giphy.com/media/KgWr0uHlJy2JO/giphy.gif',
    'https://media.giphy.com/media/glsqUjcu4vzig/giphy.gif',
    'https://media.giphy.com/media/uSczV8io3XROU/giphy.gif',
    'https://media.giphy.com/media/xLzOrO1e19V3q/giphy.gif'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        children: [
          for (var url in urls)
            Image.network(
              url,
              height: 125,
              width: 125,
            )
        ],
      ),
    );
  }
}
