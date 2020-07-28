import 'package:flutter/material.dart';
import 'package:orderfood/widgets/bottom_navigator.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY CART'),
      ),
      bottomNavigationBar: BottomNavigator(1),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.network(
                      'http://foodoyes.com/test/uploads/foods/22021561d4c1a5101981e0ac5704b1ff.jpg',
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Plain Nan',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: Colors.red),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Quantity - 5'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Category'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('North Indian Food'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '125 RS',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.black12,
                    child: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 35.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(12),
                  color: Colors.red,
                  child: Text(
                    'PROCEED TO CHECKOUT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
