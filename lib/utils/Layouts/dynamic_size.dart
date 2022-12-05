import 'package:flutter/material.dart';

class Size extends StatelessWidget {
  const Size({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthDynamic = MediaQuery.of(context).size.width;
    double heightDynamic = MediaQuery.of(context).size.height;
    return Container();
  }
}
