import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: 68,
              height: 68,
              child: Image.asset("assets/medical/images/Fluency.png"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(68, 189, 208, 251))),
            ),
            Text("Fluency",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
          ],
        ),
        Column(
          children: [
            Container(
              width: 68,
              height: 68,
              child: Image.asset("assets/medical/images/Speech.png"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(68, 189, 208, 251))),
            ),
            Text("Speech",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
          ],
        ),
        Column(
          children: [
            Container(
                width: 68,
                height: 68,
                child: Image.asset("assets/medical/images/Language.png"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(68, 189, 208, 251)),
                )),
            Text("Language",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
          ],
        ),
        Column(
          children: [
            Container(
              width: 68,
              height: 68,
              child: Image.asset("assets/medical/images/Cognition.png"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                    width: 1, color: Color.fromARGB(68, 189, 208, 251)),
              ),
            ),
            Text("Cognition",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
          ],
        )
      ],
    );
  }
}
