import 'package:flutter/foundation.dart';
import 'package:orderfood/models/item.dart';

class ItemData extends ChangeNotifier {
  List<Item> _cartList = [];
  void addItem(Item item) {
    // if item.id exists replace quantity with new quantity + new quantity
    Item oldItem = _cartList.firstWhere((element) => element.id == item.id,
        orElse: () => null);
    if (oldItem != null) {
      oldItem.quantity = oldItem.quantity + item.quantity;
    } else {
      // else add to _cartList.
      _cartList.add(item);
      notifyListeners();
    }
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

  void deleteItem(Item item) {
    _cartList.remove(item);
    notifyListeners();
  }
}
