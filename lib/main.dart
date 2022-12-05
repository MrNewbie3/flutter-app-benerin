import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Welcome/splash_components.dart';
import 'package:flutter_benerin_app/components/Welcome/wellcome_components.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: SplashComponents(),
    );
  }
}
