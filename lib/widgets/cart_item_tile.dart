import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  String name;
  String quantity;
  String category;
  String price;
  String imageUrl;
  CartItemTile({this.name, this.price, this.category, this.quantity});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
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
        ),
        Positioned(
          top: 60,
          right: 7,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black12,
            child: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
                size: 25.0,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
