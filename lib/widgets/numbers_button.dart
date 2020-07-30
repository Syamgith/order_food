import 'package:flutter/material.dart';

class NumbersButton extends StatefulWidget {
  NumbersButton({this.edge = const EdgeInsets.all(0.0)});
  final EdgeInsetsGeometry edge;

  @override
  _NumbersButtonState createState() => _NumbersButtonState();
}

class _NumbersButtonState extends State<NumbersButton> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: widget.edge,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (count > 1) {
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
