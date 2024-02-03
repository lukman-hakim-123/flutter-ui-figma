import 'package:figma_furniture/medical/features/appointment/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ListDoctor extends StatefulWidget {
  ListDoctor({super.key});

  @override
  State<ListDoctor> createState() => _ListDoctorState();
}

class _ListDoctorState extends State<ListDoctor> {
  final List<Map<String, dynamic>> doctors = [
    {
      "name": "Saparov Merdan",
      "job": "Speech therapist, (Ashgabat)",
      "image": "assets/medical/images/doc1.png",
      "star": "4.8"
    },
    {
      "name": "Chariyeva Leyla",
      "job": "Language therapist, (Ashgabat)",
      "image": "assets/medical/images/doc2.png",
      "star": "4.8"
    },
    {
      "name": "Saparov Merdan",
      "job": "Speech therapist, (Ashgabat)",
      "image": "assets/medical/images/doc1.png",
      "star": "4.8"
    },
    {
      "name": "Saparov Merdan",
      "job": "Speech therapist, (Ashgabat)",
      "image": "assets/medical/images/doc1.png",
      "star": "4.8"
    }
  ];
  // B28CFF
  ColorFilter _colorFilter =
      ColorFilter.mode(Color(0xFFB28CFF), BlendMode.srcIn);
  void _selectedColor() {
    setState(() {
      _colorFilter =
          (_colorFilter == ColorFilter.mode(Color(0xFFB28CFF), BlendMode.src))
              ? ColorFilter.mode(Colors.red, BlendMode.src)
              : ColorFilter.mode(Color(0xFFB28CFF), BlendMode.src);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemCount: doctors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 129,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xFFF7F8F8)),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(clipBehavior: Clip.none, children: [
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                doctors[index]["image"],
                                fit: BoxFit.cover,
                              ),
                            )),
                        Positioned(
                            top: -1,
                            right: -1,
                            child: SvgPicture.asset(
                                "assets/medical/icons/Ellipse.svg")),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/medical/icons/Star.svg"),
                          Text(
                            doctors[index]["star"],
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13.25,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF7D8BB7))),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        doctors[index]["name"],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF263257))),
                      ),
                      Text(
                        doctors[index]["job"],
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7D8BB7)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF7F8F8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 130,
                            height: 34,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const Appointment()));
                                },
                                child: Text(
                                  "Appointment",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF263257)),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF7F8F8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 50,
                            height: 34,
                            child: IconButton(
                                onPressed: _selectedColor,
                                icon: (SvgPicture.asset(
                                  "assets/medical/icons/Vector.svg",
                                ))),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
