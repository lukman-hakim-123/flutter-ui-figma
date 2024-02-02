import 'package:figma_furniture/medical/features/home/widget/categories.dart';
import 'package:figma_furniture/medical/features/home/widget/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMedical extends StatelessWidget {
  const HomePageMedical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color(0xFFB28CFF),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2))
                  ]),
              height: 349,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/medical/icons/Menu.svg")),
                          SizedBox(
                            height: 56,
                            width: 56,
                            child:
                                Image.asset("assets/medical/images/foto1.png"),
                          )
                        ]),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "👋 Welcome Back",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF))),
                    ),
                    Text(
                      "Let’s find\nyour top therapist!",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F8F8),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/medical/icons/Search.svg"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search health issue.......",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14, color: Color(0xFF7D8BB7))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              Categories(),
              SizedBox(height: 225, child: ListDoctor())
            ],
          )
        ],
      ),
    );
  }
}
