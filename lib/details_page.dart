import 'package:flutter/material.dart';
import 'package:orderfood/food-data.dart';
import 'package:orderfood/my_cart.dart';
import 'package:orderfood/widgets/numbers_button.dart';

class DetailsPage extends StatelessWidget {
  String foodId;
  String foodname;
  String fooddescription;
  String price;
  String imageUrl;
  DetailsPage({this.foodId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network('$imageUrl'),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '$foodname',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    '$price Rs',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w900,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            Text(
              'Product description',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
            ),
            Text('$fooddescription'),
            Row(
              children: <Widget>[
                NumbersButton(
                  edge: EdgeInsets.all(6.0),
                ),
                RaisedButton(
                  onPressed: () {
                    FoodData.findFoodDetails(foodId);
                  },
                  color: Colors.red,
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '2 ITEM  |  RS - 120',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyCart(),
                      ),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Text(
                        'VIEW CART',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
