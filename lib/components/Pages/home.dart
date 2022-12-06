// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Car/car_comp.dart';
import 'package:flutter_benerin_app/components/Home/home_comp.dart';
import 'package:flutter_benerin_app/components/Pages/build.dart';
import 'package:flutter_benerin_app/components/Pages/car.dart';
import 'package:flutter_benerin_app/components/Pages/profile.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_alt)),
            BottomNavigationBarItem(icon: Icon(Icons.directions_car_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.build_outlined)),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline))
          ],
          activeColor: Color.fromRGBO(240, 90, 66, 1),
        ),
        tabBuilder: (context, i) {
          switch (i.toString()) {
            case "0":
              return Home_Component();

            case "1":
              return CarPage();
            case "2":
              return BuildPage();
            case "3":
              return ProfilePage();
            default:
              return Container(
                child: Text("Hello"),
              );
          }
        });
  }
}
