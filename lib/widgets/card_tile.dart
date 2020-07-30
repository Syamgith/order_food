import 'package:flutter/material.dart';
import 'package:orderfood/details_page.dart';
import 'package:orderfood/widgets/numbers_button.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.network(
                  'http://foodoyes.com/test/uploads/foods/22021561d4c1a5101981e0ac5704b1ff.jpg',
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Biriyani',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Rice'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('10 Rs'),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: NumbersButton(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
