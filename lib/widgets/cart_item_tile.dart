import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  String name;
  String quantity;
  String category;
  String price;
  String imageUrl;
  CartItemTile(
      {this.name, this.price, this.category, this.quantity, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Image.network(
                '$imageUrl',
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$name',
                  style: TextStyle(
                      fontSize: 26,
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
    );
  }
}
