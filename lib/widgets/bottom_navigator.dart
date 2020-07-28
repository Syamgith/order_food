import 'package:flutter/material.dart';
import 'package:orderfood/home.dart';
import 'package:orderfood/my_cart.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator(this.currentindex);
  final int currentindex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentindex,
      onTap: (int index) {
        if (index == 1 && currentindex == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyCart(),
            ),
          );
        } else if (index == 0 && currentindex == 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        }
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                //color: currentIndex == 1 ? Colors.red : Colors.grey,
              ),
              Positioned(
                top: -2,
                right: -3,
                child: Text(
                  '1',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white),
                ),
              )
            ],
          ),
          title: Text('MY CART'),
        ),
      ],
    );
  }
}
