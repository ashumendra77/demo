import 'package:demo/screens/fruit.dart';
import 'package:demo/screens/pdf_view.dart';
import 'package:demo/screens/vegetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIOverlays([]);
  //   super.dispose();
  // }

  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIOverlays([]);
  //   super.initState();
  // }
  int index = 0;

  final List<Widget> _children = [
    FruitScreen(),
    VegtableScreen(),
    BookScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Fruits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Vegtables',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Book',
          ),
        ],
      ),
    );
  }
}
