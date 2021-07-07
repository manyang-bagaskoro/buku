import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/models/barang.dart';
import 'package:shopapp/screens/detail/components/content.dart';

class DetailScreen extends StatelessWidget {
  final Barang barang;

  const DetailScreen({Key? key, required this.barang}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: barang.color,
      appBar: buildAppBar(context),
      body: Content(barang: barang),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: barang.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          CupertinoIcons.arrow_left,
          size: 20,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
