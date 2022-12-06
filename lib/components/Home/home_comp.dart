// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Component extends StatelessWidget {
  const Home_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Stack(children: <Widget>[
        Positioned(child: Image.asset('lib/assets/Images/Home_Svg.png')),
        Padding(
            padding: EdgeInsets.fromLTRB(
                20.0, MediaQuery.of(context).size.height * 0.1, 0, 0),
            child: Text(
              "Beneran bisa benerin!",
              style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      color: Colors.white)),
            ))
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
              ])),
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Layanan",
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "lib/assets/Illustrations/Group_39.png",
                      scale: 1.5,
                    ),
                    Text("Servis Umum",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                                color: Colors.black)))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      "lib/assets/Illustrations/support_agent.png",
                      scale: 1.5,
                    ),
                    Text("Konsultasi",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                                color: Colors.black)))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      "lib/assets/Illustrations/speed.png",
                      scale: 1.5,
                    ),
                    Text("Servis Berkala",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                                color: Colors.black)))
                  ],
                )
              ],
            )
          ],
        ),
      )
    ]));
  }
}
