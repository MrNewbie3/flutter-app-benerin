// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarComp extends StatelessWidget {
  const CarComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Stack(children: <Widget>[
          Positioned(
            child: Image.asset('lib/assets/Images/Home_Svg.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                20.0, MediaQuery.of(context).size.height * 0.1, 0, 0),
            child: Text(
              "Mobilku",
              style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      color: Colors.white)),
            ),
          ),
        ]),
        Container(
            width: MediaQuery.of(context).size.width * 0.9,
            transform: Matrix4.translationValues(0, -40, 0),
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .09),
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: const Offset(0, 2))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Pilih Mobil ",
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400))),
                Icon(Icons.arrow_drop_down)
              ],
            )),
      ],
    ));
  }
}
