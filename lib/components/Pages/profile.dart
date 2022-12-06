import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Profile/profile_comp.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(body: ProfileComp());
  }
}
