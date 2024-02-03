import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitHour extends StatelessWidget {
  const VisitHour({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> times = [
      "09.00",
      "10.00",
      "11.00",
      "12.00",
      "13.00",
      "14.00",
      "15.00",
      "16.00",
      "17.00",
    ];
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Visit Hour",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF263257),
            )),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Wrap(
            spacing: 10,
            runSpacing: 5,
            children: times.map((time) {
              return Container(
                height: 36,
                width: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xFFF7F8F8)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  time,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF263257),
                  )),
                ),
              );
            }).toList())
      ],
    );
  }
}
