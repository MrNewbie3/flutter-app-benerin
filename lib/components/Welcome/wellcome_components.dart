// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
            pages: [
          PageViewModel(
              title: "Servis Mobil Kapanpun",
              decoration: pageDecoration(),
              body:
                  "Tidak perlu repot-repot ke bengkel, kami akan jemput mobil anda dan bawa ke bengkel kami",
              image: buildImage('lib/assets/Illustrations/Group_135.png',
                  MediaQuery.of(context).size.width * 0.6)),
          PageViewModel(
              title: "Konsultasi Mobil",
              decoration: pageDecoration(),
              body:
                  "Anda bisa meminimalisir biaya pengeluaran dengan konsultasi terlebih dahulu",
              image: buildImage('lib/assets/Illustrations/Group_134.png',
                  MediaQuery.of(context).size.width * 0.6)),
          PageViewModel(
              title: "STNK Online",
              decoration: pageDecoration(),
              body:
                  "daftarkan STNK anda hanya dengan memasukkan nomor polisi mobil anda",
              image: buildImage('lib/assets/Illustrations/Group_133.png',
                  MediaQuery.of(context).size.width * 0.6))
        ],
            done: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 90, 66, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text("Masuk", style: styleFont(Colors.white)))),
            onDone: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainHome()));
            },
            showSkipButton: true,
            skip: Text("Lewati",
                style: styleFont(Color.fromRGBO(169, 169, 170, 1))),
            dotsDecorator: DotsDecorator(
                size: const Size.square(8.0),
                color: Colors.black26,
                activeSize: const Size(30.0, 8.0),
                activeColor: Color.fromRGBO(240, 90, 66, 1),
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            next: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 90, 66, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text("Lanjut", style: styleFont(Colors.white))))));
  }

  Widget buildImage(String path, double width) =>
      Center(child: Image.asset(path, width: width));
  PageDecoration pageDecoration() => PageDecoration(
      titleTextStyle: GoogleFonts.nunito(
          textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
      bodyTextStyle: GoogleFonts.nunito(
          textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(45, 45, 45, 0.8))));
  TextStyle styleFont(Color color) =>
      GoogleFonts.nunito(textStyle: TextStyle(color: color));
}
