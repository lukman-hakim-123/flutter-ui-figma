import 'package:figma_furniture/medical/features/appointment/widget/schedules.dart';
import 'package:figma_furniture/medical/features/appointment/widget/visithour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Text(
            "Appointment",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF263257))),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Stack(clipBehavior: Clip.none, children: [
                Container(
                    width: 89,
                    height: 93,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        "assets/medical/images/doc2.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/medical/icons/Ellipse.svg",
                      height: 18,
                      width: 18,
                    )),
              ]),
              SizedBox(
                height: 15,
              ),
              Text(
                "Chariyeva Leyla",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF263257))),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/medical/icons/Illustration.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Language therapist, (Ashgabat)",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF7D8BB7))),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About Doctor",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF263257),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Dr. Chariyeva Leyla is the top most Cardiologist specialist in Nanyang Hospotalat London. She is available for private consultation.",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7D8BB7),
                  )),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Schedules(),
              SizedBox(
                height: 15,
              ),
              VisitHour(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 335,
                height: 58,
                decoration: BoxDecoration(
                    color: Color(0xFFB28CFF),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Book Appointment",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    )),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
