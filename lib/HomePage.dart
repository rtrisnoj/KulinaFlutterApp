import 'package:flutter/material.dart';
import 'package:startup_namer/OrderPage.dart';
import 'package:startup_namer/FoodPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

//navigation for the bottom navigation bar
class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  FoodLogin one;
  OrderLogin two;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState(){
    one = FoodLogin();
    two = OrderLogin();

    pages = [one, two];
    currentPage = one;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFF9423A),
        title: new Text('MENU'),
      ),
      body: currentPage,
   
        /*
      new Stack(
        children: <Widget>[
        new Offstage(
          offstage: index != 0,
          child: new TickerMode(
            enabled: index == 0,
            child: new MaterialApp(home: new HomeScreen()),
          ),
        ),
        new Offstage(
          offstage: index != 1,
          child: new TickerMode(
            enabled: index == 1,
            child: new MaterialApp(home: new OrderLogin()),
          ),
        ),
      ],
      ),
   */
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pink,
        currentIndex : index,
        onTap: (int index){
          setState((){
            this.index = index;
            currentPage = pages[index];
            });
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
