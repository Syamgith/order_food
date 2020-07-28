import 'package:flutter/material.dart';

class NumbersButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
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
