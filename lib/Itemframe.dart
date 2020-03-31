import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/ItemImage.png',
            width: 164,
            height: 220,
          ),
          Row(
            children: [
              Image.asset(
                'assets/Itempic.png',
                width: 28,
                height: 28,
              ),
              Text(
                'pixpearl',
                style: TextStyle(
                  fontSize: 13,
                )
              )
          ],)
        ],
      )
    );
  }
}