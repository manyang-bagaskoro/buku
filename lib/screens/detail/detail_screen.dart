import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/models/barang.dart';
import 'package:shopapp/screens/detail/components/content.dart';

class DetailScreen extends StatefulWidget {
  final Barang barang;

  const DetailScreen({Key? key, required this.barang}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.barang.color,
      appBar: buildAppBar(context),
      body: Content(barang: widget.barang),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: widget.barang.color,
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
