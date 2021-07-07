import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/screens/catalog/components/content.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Content(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          CupertinoIcons.arrow_left,
          size: 20,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
