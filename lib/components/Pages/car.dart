import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Car/car_comp.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarComp(),
    );
  }
}
