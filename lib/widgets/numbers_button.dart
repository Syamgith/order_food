import 'package:flutter/material.dart';

class NumbersButton extends StatelessWidget {
  NumbersButton({this.edge = const EdgeInsets.all(0.0)});
  final EdgeInsetsGeometry edge;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: edge,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.remove,
              color: Colors.white,
              size: 14,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '0',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
