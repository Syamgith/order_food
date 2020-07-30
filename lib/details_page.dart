import 'package:flutter/material.dart';
import 'package:orderfood/food-data.dart';
import 'package:orderfood/my_cart.dart';
import 'package:orderfood/widgets/numbers_button.dart';

class DetailsPage extends StatelessWidget {
  String foodId;
//  String foodname;
//  String fooddescription;
//  String price;
//  String imageUrl;
  DetailsPage({this.foodId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: FutureBuilder<Map>(
          future: FoodData.findFoodDetails(foodId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Map foodDetails = snapshot.data;
              print(snapshot.data['foodName']);
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network('${foodDetails['foodImage']}'),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            '${foodDetails['foodName']}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w900,
                                fontSize: 17),
                          ),
                          Text(
                            '${foodDetails['foodOfferPrice']} Rs',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w900,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        'Product description',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 22),
                      ),
                    ),
                    Text('${foodDetails['foodDescription']}'),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        NumbersButton(
                          edge: EdgeInsets.all(6.0),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          child: Text(
                            'ADD TO CART',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else
              return Center(child: CircularProgressIndicator());
          }),
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
