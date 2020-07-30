import 'dart:convert';

import 'package:http/http.dart' as http;

class FoodData {
  static Future<List> findFood() async {
    http.Response response =
        await http.get('http://foodoyes.com/test/api/foodList');
    if (response.statusCode == 200) {
      print('Sucess ${response.statusCode}');
      var decodedBody = jsonDecode(response.body);
      print(decodedBody['results'][0]['foodName']);
      return decodedBody['results'];
    } else {
      print('failed ${response.statusCode}');
      return null;
    }
  }

  static Future<Map> findFoodDetails(String foodId) async {
    http.Response response = await http.post(
        'http://foodoyes.com/test/api/foodDetails',
        body: {"foodId": "$foodId"});
    if (response.statusCode == 200) {
      print('Sucess ${response.statusCode}');
      var decodedBody = jsonDecode(response.body);
      print(decodedBody['foodName']);
      return decodedBody;
    } else {
      print('failed ${response.statusCode}');
      return null;
    }
  }
}
