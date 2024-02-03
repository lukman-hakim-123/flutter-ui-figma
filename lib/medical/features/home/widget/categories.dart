import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"name": "Fluency", "image": "assets/medical/images/Fluency.png"},
      {"name": "Speech", "image": "assets/medical/images/Speech.png"},
      {"name": "Language", "image": "assets/medical/images/Language.png"},
      {"name": "Cognition", "image": "assets/medical/images/Cognition.png"},
      {"name": "Fluency", "image": "assets/medical/images/Fluency.png"},
      {"name": "Speech", "image": "assets/medical/images/Speech.png"},
      {"name": "Language", "image": "assets/medical/images/Language.png"},
      {"name": "Cognition", "image": "assets/medical/images/Cognition.png"},
      {"name": "Fluency", "image": "assets/medical/images/Fluency.png"},
      {"name": "Speech", "image": "assets/medical/images/Speech.png"},
      {"name": "Language", "image": "assets/medical/images/Language.png"},
      {"name": "Cognition", "image": "assets/medical/images/Cognition.png"},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    child: Image.asset(categories[index]["image"]),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                            width: 1,
                            color: Color.fromARGB(68, 189, 208, 251))),
                  ),
                  Text(categories[index]["name"],
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500)))
                ],
              ),
            );
          }),
    );
  }
}
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Column(
    //       children: [
    //         Container(
    //           width: 68,
    //           height: 68,
    //           child: Image.asset("assets/medical/images/Fluency.png"),
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.all(Radius.circular(15)),
    //               border: Border.all(
    //                   width: 1, color: Color.fromARGB(68, 189, 208, 251))),
    //         ),
    //         Text("Fluency",
    //             style: GoogleFonts.poppins(
    //                 textStyle:
    //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
    //       ],
    //     ),
    //     Column(
    //       children: [
    //         Container(
    //           width: 68,
    //           height: 68,
    //           child: Image.asset("assets/medical/images/Speech.png"),
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.all(Radius.circular(15)),
    //               border: Border.all(
    //                   width: 1, color: Color.fromARGB(68, 189, 208, 251))),
    //         ),
    //         Text("Speech",
    //             style: GoogleFonts.poppins(
    //                 textStyle:
    //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
    //       ],
    //     ),
    //     Column(
    //       children: [
    //         Container(
    //             width: 68,
    //             height: 68,
    //             child: Image.asset("assets/medical/images/Language.png"),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.all(Radius.circular(15)),
    //               border: Border.all(
    //                   width: 1, color: Color.fromARGB(68, 189, 208, 251)),
    //             )),
    //         Text("Language",
    //             style: GoogleFonts.poppins(
    //                 textStyle:
    //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
    //       ],
    //     ),
    //     Column(
    //       children: [
    //         Container(
    //           width: 68,
    //           height: 68,
    //           child: Image.asset("assets/medical/images/Cognition.png"),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.all(Radius.circular(15)),
    //             border: Border.all(
    //                 width: 1, color: Color.fromARGB(68, 189, 208, 251)),
    //           ),
    //         ),
    //         Text("Cognition",
    //             style: GoogleFonts.poppins(
    //                 textStyle:
    //                     TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
    //       ],
    //     )
    //   ],
    // );
//   }
// }
