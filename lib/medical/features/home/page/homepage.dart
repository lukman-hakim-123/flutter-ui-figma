import 'package:figma_furniture/medical/features/home/widget/categories.dart';
import 'package:figma_furniture/medical/features/home/widget/doctor.dart';
import 'package:figma_furniture/medical/features/home/widget/appbarhome.dart';
import 'package:figma_furniture/medical/features/home/widget/drawerhome.dart';
import 'package:figma_furniture/medical/features/home/widget/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMedical extends StatelessWidget {
  const HomePageMedical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerHome(),
      // bottomNavigationBar: const BottomNavBarHome(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
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
                            height: 20,
                          ),
                          AppBarHome(),
                          SizedBox(
                            height: 15,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        icon: SvgPicture.asset(
                                            "assets/medical/icons/Search.svg"),
                                        hintText: "Search health issue.......",
                                        hintStyle: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF7D8BB7))),
                                        border: InputBorder.none),
                                  ),
                                )),
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
                    SizedBox(height: 90, child: Categories()),
                    SizedBox(height: 15),
                    SizedBox(height: 190, child: ListDoctor()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 2))
                            ]),
                        alignment: Alignment.topCenter,
                        child: BottomNavBarHome(),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
