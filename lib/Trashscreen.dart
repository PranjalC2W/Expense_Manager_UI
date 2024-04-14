import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen5.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});
  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  List items = [];
  List imagess = [
    "assets/images/medicine.png",
    "assets/images/food.png",
    "assets/images/shop.png",
    "assets/images/fuel.png",
    "assets/images/entertainment.png"
  ];

  List color = [
    const Color.fromRGBO(0, 174, 91, 0.7),
    const Color.fromRGBO(214, 3, 3, 0.7),
    const Color.fromRGBO(241, 38, 197, 0.7),
    const Color.fromRGBO(0, 148, 255, 0.7),
    const Color.fromRGBO(100, 62, 255, 0.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
        flexibleSpace: Container(
          height: 30,
          width: 360,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(196, 196, 196, 1)),
        ),
      ),
      drawer: Screen5(),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                height: 77,
                width: 210,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      color: Color.fromRGBO(206, 206, 206, 1), width: 0.5),
                )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: SizedBox(
                              height: 21,
                              width: 21,
                              child: Image.asset("assets/images/subtract.png")),
                        ),

                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                          const   Padding(padding:  EdgeInsets.only(top: 10)),
                            SizedBox(
                              width: 251,
                              child: Text(
                                "Medicine",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                            ),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                            SizedBox(
                              width: 251,
                              height: 30,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more ",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 0.8)),
                              ),
                            )
                          ],
                        ),
                        //const SizedBox(width: 10,),

                        Text(
                          "  500",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          const Spacer(),
                          Text(
                            "3 June | 11:50 AM",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 0.6)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
