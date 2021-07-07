import 'package:flutter/material.dart';
import 'package:shopapp/models/barang.dart';

import '../../../config.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.barang,
  }) : super(key: key);

  final Barang barang;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        barang.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
