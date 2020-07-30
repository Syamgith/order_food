import 'package:flutter/foundation.dart';
import 'package:orderfood/models/item.dart';

class ItemData extends ChangeNotifier {
  List<Item> _cartList = [
    Item(
        itemName: 'chaya',
        quantity: '1',
        category: 'drink',
        price: '10',
        imageUrl:
            'http://foodoyes.com/test/uploads/foods/22021561d4c1a5101981e0ac5704b1ff.jpg')
  ];
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
