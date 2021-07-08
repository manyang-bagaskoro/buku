import 'package:flutter/material.dart';
import 'package:shopapp/models/barang.dart';
import 'package:shopapp/screens/detail/components/rating.dart';

import '../../../config.dart';
import 'specification.dart';
import 'description.dart';
import 'thumbnail.dart';

class Content extends StatelessWidget {
  final Barang barang;

  const Content({Key? key, required this.barang}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Specification(barang: barang),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(barang: barang),
                      SizedBox(height: kDefaultPaddin / 2),
                      Rating(barang: barang),
                    ],
                  ),
                ),
                Thumbnail(barang: barang)
              ],
            ),
          )
        ],
      ),
    );
  }
}
