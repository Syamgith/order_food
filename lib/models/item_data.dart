import 'package:flutter/foundation.dart';
import 'package:orderfood/models/item.dart';

class ItemData extends ChangeNotifier {
  List<Item> _cartList = [];
  void addItem(Item newItem) {
    Item oldItem = _cartList.firstWhere((element) => element.id == newItem.id,
        orElse: () => null);
    if (oldItem != null) {
      oldItem.quantity = oldItem.quantity + newItem.quantity;
      oldItem.price = oldItem.price + newItem.price;
    } else {
      _cartList.add(newItem);
    }
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

  void deleteItem(Item item) {
    _cartList.remove(item);
    notifyListeners();
  }
}
