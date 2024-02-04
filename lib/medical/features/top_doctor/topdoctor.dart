import 'package:figma_furniture/medical/features/home/widget/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDoctor extends StatelessWidget {
  const TopDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Color(0xFFFFFFFF),
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Text(
            "Top Doctor",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF263257))),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(width: 2, color: Color(0xFFF7F8F8))),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          icon: SvgPicture.asset(
                              "assets/medical/icons/Search.svg"),
                          hintText: "Search health issue.......",
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 14, color: Color(0xFF7D8BB7))),
                          border: InputBorder.none),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: SizedBox(height: double.infinity, child: ListDoctor()))
          ],
        ),
      ),
    );
  }
}
