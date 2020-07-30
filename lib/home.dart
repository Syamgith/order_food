import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:orderfood/widgets/bottom_navigator.dart';
import 'package:orderfood/widgets/card_tile.dart';

class Home extends StatelessWidget {
  findFood() async {
    http.Response response =
        await http.get('http://foodoyes.com/test/api/foodList');
    if (response.statusCode == 200) {
      print('Sucess ${response.statusCode}');
      var decodedBody = jsonDecode(response.body);
      print(decodedBody['results'][0]['foodName']);
      //return decodedBody;
    } else {
      print('failed ${response.statusCode}');
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: FloatingActionButton(onPressed: findFood),
      ),
      bottomNavigationBar: BottomNavigator(0),
      body: ListView(
        children: <Widget>[CardTile(), CardTile(), CardTile(), CardTile()],
      ),
    );
  }
}
