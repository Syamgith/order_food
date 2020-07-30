import 'package:flutter/material.dart';
import 'package:orderfood/models/item.dart';
import 'package:orderfood/models/item_data.dart';
import 'package:orderfood/widgets/bottom_navigator.dart';
import 'package:orderfood/widgets/cart_item_tile.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Item> cartList = Provider.of<ItemData>(context).getCartList();
    return Scaffold(
      appBar: AppBar(
        title: Text('MY CART'),
      ),
      bottomNavigationBar: BottomNavigator(1),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (context, index) {
                  return CartItemTile(
                    name: cartList[index].itemName,
                    quantity: cartList[index].quantity,
                    price: cartList[index].price,
                    category: cartList[index].category,
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
