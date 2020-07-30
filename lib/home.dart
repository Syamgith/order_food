import 'package:flutter/material.dart';
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
        //leading: FloatingActionButton(onPressed: findFood),
      ),
      bottomNavigationBar: BottomNavigator(0),
      body: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return CardTile(
                  foodName: '',
                );
              },
            );
          }),
    );
  }
}
