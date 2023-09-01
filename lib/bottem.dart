import 'package:childrean/page1.dart';
import 'package:childrean/page2.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selectindex = 0;

  List screen = [Page1(), Page2(), Center(child: Text("Personal Details"))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectindex = value;
            });
          },
          unselectedIconTheme: IconThemeData(color: Colors.black12),
          selectedIconTheme: IconThemeData(color: Colors.black),
          elevation: 50,
          currentIndex: selectindex,
          backgroundColor: Colors.white,
          fixedColor: Colors.black,
          iconSize: 25,
          selectedLabelStyle:
              TextStyle(fontSize: 13, fontWeight: FontWeight.bold, height: 1.5),
          items: [
            BottomNavigationBarItem(
              icon: (Icon(Icons.home_outlined)),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: (Icon(Icons.book)),
              label: "Borrow",
            ),
            BottomNavigationBarItem(
              icon: (Icon(Icons.person_outline)),
              label: "Parsonal",
            ),
          ]),
    );
  }
}
