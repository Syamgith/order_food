import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  final String name;
  final int quantity;
  final String category;
  final String price;
  CartItemTile({this.name, this.price, this.category, this.quantity});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: 70.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$name',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Quantity - $quantity'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Category - \n$category'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$price RS',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
