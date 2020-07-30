import 'package:flutter/material.dart';
import 'package:orderfood/food-data.dart';
import 'package:orderfood/widgets/bottom_navigator.dart';
import 'package:orderfood/widgets/card_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: BottomNavigator(0),
      body: FutureBuilder<List>(
          future: FoodData.findFood(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(child: CircularProgressIndicator());
            } else {
              List foodList = snapshot.data;
              return ListView.builder(
                itemCount: foodList.length,
                itemBuilder: (context, index) {
                  return CardTile(
                    imagUrl: foodList[index]['foodThumb'],
                    foodName: foodList[index]['foodName'],
                    type: foodList[index]['foodCategory'],
                    price: foodList[index]['foodOfferPrice'],
                  );
                },
              );
            }
          }),
    );
  }
}
