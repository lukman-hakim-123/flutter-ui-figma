import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/threeline.svg"),
      ),
      title: Center(
        child: Text(
          "Home",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff4A4543))),
        ),
      ),
    ));
  }
}
