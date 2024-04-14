import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
          "June 2022",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),

        actions:const  [
          SizedBox(width: 8,),
             Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search_outlined,
                ),
              )
        ],
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
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                height:77,
                width: 210,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      color: Color.fromRGBO(206, 206, 206, 1), width: 0.5),
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Padding(padding: const EdgeInsets.all(10)),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 41,
                          width: 41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: color[index % color.length],
                          ),
                          child: Image.asset(imagess[index % imagess.length]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
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
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 251,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the ",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 0.8)),
                              ),
                            )
                          ],
                        ),
                        //const SizedBox(width: 10,),
                        const Icon(
                          Icons.remove_circle,
                          size: 18,
                          color: Color.fromARGB(208, 217, 89, 30),
                        ),
                        Text(
                          "  500",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
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
                   
                  ],
                ),
              );
          
            },
          
          ),
          const SizedBox(
            height: 210,
          ),
          Container(
            height: 49,
            width: 189,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(67)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4,
                      offset: Offset(0, 4))
                ]),
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),
                      isDismissible: true,
                      context: context,
                      builder: ((BuildContext context) {
                        return Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 20,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 410,
                                    child: Text(
                                      "Date",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              33, 33, 33, 1)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter date',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    191, 189, 189, 1)))),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: 410,
                                    child: Text(
                                      "Amount",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              33, 33, 33, 1)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Amount',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    191, 189, 189, 1)))),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: 410,
                                    child: Text(
                                      "Category",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              33, 33, 33, 1)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Category',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    191, 189, 189, 1)))),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: 410,
                                    child: Text(
                                      "Description",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              33, 33, 33, 1)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Description',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.8)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    191, 189, 189, 1)))),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: ElevatedButton(
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Color.fromRGBO(
                                                        14, 161, 125, 1)),
                                            fixedSize: MaterialStatePropertyAll(
                                                Size(120, 40))),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("Add",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))),
                                  )
                                ],
                              ),
                            ));
                      }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.add_circle,
                      color: Color.fromRGBO(14, 161, 125, 1),
                      size: 32,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Add Transaction ",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(37, 37, 37, 1)),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
