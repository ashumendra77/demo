import 'package:demo/model/fruit_model.dart';
import 'package:demo/screens/fruit.dart';
import 'package:demo/screens/help.dart';
import 'package:demo/screens/vegetable.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  TextEditingController _fruitController = TextEditingController();

  final List<Widget> _children = [
    FruitScreen(),
    VegtableScreen(),
    BookScreen(),
    ProfileScreen(),
    CartViewScreen(),
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
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   title: Text('Vegtables'),
          // ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('profile'),
    );
  }
}

class CartViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('cart'),
    );
  }
}
