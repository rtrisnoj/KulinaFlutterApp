import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFF9423A),
        title: new Text('MENU'),
      ),
      body:
      new Center( 
        child: new Text('ORDER NOW'),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pink,
        currentIndex : index,
        onTap: (int index){ setState((){this.index = index;});

        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_shopping_cart),
            title: new Text('Order Now'),
            )
        ],
      ),
    );
  }
}