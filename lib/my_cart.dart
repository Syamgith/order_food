import 'package:flutter/material.dart';
import 'package:orderfood/models/item.dart';
import 'package:orderfood/models/item_data.dart';
import 'package:orderfood/widgets/bottom_navigator.dart';
import 'package:orderfood/widgets/cart_item_tile.dart';

class MyCart extends StatelessWidget {
  List<Item> cartList = ItemData().getCartList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY CART'),
      ),
      bottomNavigationBar: BottomNavigator(1),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return CartItemTile(
                name: cartList[0].itemName,
              );
            }),
          ),
          GestureDetector(
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
        ],
      ),
    );
  }
}
