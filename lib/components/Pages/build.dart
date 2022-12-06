// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Build/build_comp.dart';

class BuildPage extends StatelessWidget {
  const BuildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BuildComp());
  }
}
