import 'package:flutter/material.dart';
import 'package:shopapp/models/barang.dart';

import '../../../config.dart';

class Item extends StatelessWidget {
  final Barang barang;
  final VoidCallback press;
  const Item({
    Key? key,
    required this.barang,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: barang.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${barang.id}",
                child: Image.asset(barang.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              barang.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\Rp.${barang.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
