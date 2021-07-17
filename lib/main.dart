import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:one_piece_app/routes.dart';

void main() => runApp(RootApp());

class RootApp extends StatefulWidget {
  @override
  RootAppState createState() => RootAppState();
}

const primaryColor = Color(0xAA0D00);
const secondaryColor = Color(0x3E81C2);
const ternaryColor = Color(0xFF9800);

class RootAppState extends State<RootApp> {
  int _selectedScreenIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      if (index < Routes.appRoutes.length) _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "One Piece App",
      theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.blueAccent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: ternaryColor,
            unselectedItemColor: Color(0x3E81C2),
            selectedItemColor: Color(0xAA0D00),
          )),
      home: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.red,
            title: SvgPicture.asset(
              "assets/Strawhat_crew_jolly_roger.svg",
              semanticsLabel: "Straw hats jolly roger",
              height: 27,
              width: 35,
            ),
          ),
          body: Center(child: Routes.appRoutes.elementAt(_selectedScreenIndex)),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.lightBlue,
                primaryColor: Colors.red,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: TextStyle(color: Colors.yellowAccent))),
            child: BottomNavigationBar(items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Characters"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star_outline), label: "Moments"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Cover"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.question_answer), label: "Extra Info"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "In my life"),
            ], currentIndex: _selectedScreenIndex, onTap: _onItemTapped),
          )),
    );
  }
}
