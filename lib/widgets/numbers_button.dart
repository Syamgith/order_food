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
  @override
  Widget build(BuildContext context) {
    int count = Provider.of<ItemData>(context).getQuantity(widget.foodId);
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
                  Provider.of<ItemData>(context, listen: false)
                      .decrementItemCount(Item(
                    id: widget.foodId,
                  ));
                  if (count == 0) {
                    Provider.of<ItemData>(context, listen: false)
                        .removeUnwantedItem(widget.foodId);
                  }
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
                Provider.of<ItemData>(context, listen: false)
                    .incrementItemCount(Item(
                  id: widget.foodId,
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
