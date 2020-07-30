import 'package:flutter/material.dart';
import 'package:orderfood/details_page.dart';
import 'package:orderfood/widgets/numbers_button.dart';

class CardTile extends StatelessWidget {
  String imagUrl;
  String foodName;
  String type;
  String price;
  CardTile({this.foodName, this.imagUrl, this.price, this.type});

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
                  '$imagUrl',
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$foodName',
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('$type'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('$price Rs'),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: NumbersButton(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
