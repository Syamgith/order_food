import 'package:flutter/foundation.dart';
import 'package:orderfood/models/item.dart';

class ItemData extends ChangeNotifier {
  List<Item> _cartList = [];
  void addItem(Item item) {
    _cartList.add(item);
    notifyListeners();
  }

  int noOfItems() {
    if (_cartList != null) {
      return _cartList.length;
    } else
      return 0;
  }

  List<Item> getCartList() {
    return _cartList;
  }
}
