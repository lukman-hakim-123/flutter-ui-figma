import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Schedules extends StatelessWidget {
  const Schedules({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> schedules = [
      {"date": "7", "day": "Sun"},
      {"date": "8", "day": "Mon"},
      {"date": "9", "day": "Tue"},
      {"date": "10", "day": "Wed"},
      {"date": "11", "day": "Thu"},
    ];
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Schedules",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF263257),
            )),
          ),
          Row(
            children: [
              Text(
                "August",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7D8BB7),
                )),
              ),
              SvgPicture.asset("assets/medical/icons/Arrow_Right.svg")
            ],
          )
        ],
      ),
      SizedBox(
        height: 15,
      ),
      SizedBox(
        height: 64,
        child: ListView.builder(
            itemCount: schedules.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFF7F8F8),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        schedules[index]["date"],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF263257),
                        )),
                      ),
                      Text(
                        schedules[index]["day"],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF7D8BB7),
                        )),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    ]);
  }
}
