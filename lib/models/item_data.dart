import 'package:flutter/foundation.dart';
import 'package:orderfood/models/item.dart';

class ItemData extends ChangeNotifier {
  List<Item> _cartList = [];
  void addItem(Item newItem) {
    Item oldItem = _cartList.firstWhere((element) => element.id == newItem.id,
        orElse: () => null);
    if (oldItem != null) {
      oldItem.quantity = oldItem.quantity + newItem.quantity;
    } else {
      _cartList.add(newItem);
    }
    notifyListeners();
  }

  void incrementItemCount(Item newItem) {
    Item oldItem = _cartList.firstWhere((element) => element.id == newItem.id,
        orElse: () => null);
    if (oldItem != null) {
      oldItem.quantity++;
    } else {
      _cartList.add(newItem);
    }
    notifyListeners();
  }

  void decrementItemCount(Item newItem) {
    Item oldItem = _cartList.firstWhere((element) => element.id == newItem.id,
        orElse: () => null);
    if (oldItem != null) {
      oldItem.quantity--;
    } else {
      _cartList.add(newItem);
    }
    notifyListeners();
  }

  void removeUnwantedItem(String id) {
    Item oldItem =
        _cartList.firstWhere((element) => element.id == id, orElse: () => null);
    if (oldItem != null) {
      if (oldItem.quantity < 1) {
        deleteItem(oldItem);
      }
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
