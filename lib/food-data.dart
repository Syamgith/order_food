import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class FoodData extends ChangeNotifier {
  findFood() async {
    http.Response response =
        await http.get('http://foodoyes.com/test/api/foodList');
    if (response.statusCode == 200) {
      print('Sucess ${response.statusCode}');
      var decodedBody = jsonDecode(response.body);
      print(decodedBody['results'][0]['foodName']);
      return decodedBody;
    } else {
      print('failed ${response.statusCode}');
      return;
    }
  }
}
