import 'package:flutter/material.dart';
import 'package:orderfood/models/item.dart';
import 'package:orderfood/models/item_data.dart';
import 'package:provider/provider.dart';

class NumbersButton extends StatefulWidget {
  NumbersButton({this.foodId});
  String foodId;
  @override
  _NumbersButtonState createState() => _NumbersButtonState();
}

class _NumbersButtonState extends State<NumbersButton> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (count > 0) {
                  setState(() {
                    count--;
                  });
                }
              },
              child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$count',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  count++;
                });
                Provider.of<ItemData>(context, listen: false).addItem(Item(
                  id: widget.foodId,
                  quantity: count,
                ));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
