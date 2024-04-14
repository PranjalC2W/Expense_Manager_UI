import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen5.dart';

class Category_screen extends StatefulWidget {
  const Category_screen({super.key});
  @override
  State<Category_screen> createState() => _Category_screenState();
}

class _Category_screenState extends State<Category_screen> {
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


void showMyBottomsheet(){
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
                                top: 35,
                                left: 20,
                                right: 20,
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 97,
                                      width: 74,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 74,
                                            width: 74,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  140, 128, 128, 0.2),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                                "assets/images/imagess.png"),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Add",
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 410,
                                      child: Text(
                                        "Image URL",
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
                                          hintText: 'Enter URL',
                                          hintStyle: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  33, 33, 33, 1)),
                                          border: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      191, 189, 189, 1)))),
                                    ),
                                    const SizedBox(
                                      height: 20,
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
                                          hintText: 'Enter Category name ',
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
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: ElevatedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color.fromRGBO(
                                                          14, 161, 125, 1)),
                                              fixedSize:
                                                  MaterialStatePropertyAll(
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
}

  Future<dynamic> showMyDailog() async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.only(left: 80, top: 20, bottom: 10),
          contentPadding:
              const EdgeInsets.only(left: 30, bottom: 20, right: 20),
          title: Text(
            "Delete Category",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(0, 0, 0, 1)),
          ),
          content: Text(
            "Are you sure you want to delete the selected category?",
            style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1)),
          ),
          actionsPadding: const EdgeInsets.only(left: 50, bottom: 20),
          actions: [
            Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                      ),
                      onPressed: () {

                        
                      },
                      child: Text(
                        "Delete",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 110,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(140, 128, 128, 0.2),
                      ),
                      onPressed: () {
                       Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      )),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
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
      drawer: const Screen5(),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisSpacing: 2,
                // crossAxisSpacing: 2,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onLongPress: () async {
                          await showMyDailog();
                        },
                        onTap: () {
                          showMyBottomsheet();
                        },
                        child: Container(
                          height: 150,
                          width: 145,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    blurRadius: 8,
                                    offset: Offset(1, 2))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: color[index % color.length],
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  imagess[index % imagess.length],
                                  height: 38,
                                  width: 38,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Food",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(33, 33, 33, 1)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              height: 46,
              width: 180,
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
                    showMyBottomsheet();

                    // showModalBottomSheet(
                    //     isScrollControlled: true,
                    //     shape: const RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(20.0),
                    //       topRight: Radius.circular(20.0),
                    //     )),
                    //     isDismissible: true,
                    //     context: context,
                    //     builder: ((BuildContext context) {
                    //       return Padding(
                    //           padding: EdgeInsets.only(
                    //             top: 35,
                    //             left: 20,
                    //             right: 20,
                    //             bottom:
                    //                 MediaQuery.of(context).viewInsets.bottom,
                    //           ),
                    //           child: SingleChildScrollView(
                    //             child: Column(
                    //               mainAxisSize: MainAxisSize.min,
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               children: [
                    //                 SizedBox(
                    //                   height: 97,
                    //                   width: 74,
                    //                   child: Column(
                    //                     children: [
                    //                       Container(
                    //                         height: 74,
                    //                         width: 74,
                    //                         decoration: const BoxDecoration(
                    //                           color: Color.fromRGBO(
                    //                               140, 128, 128, 0.2),
                    //                           shape: BoxShape.circle,
                    //                         ),
                    //                         child: Image.asset(
                    //                             "assets/images/imagess.png"),
                    //                       ),
                    //                       const SizedBox(
                    //                         height: 4,
                    //                       ),
                    //                       Text(
                    //                         "Add",
                    //                         style: GoogleFonts.poppins(
                    //                             fontSize: 13,
                    //                             fontWeight: FontWeight.w400,
                    //                             color: const Color.fromRGBO(
                    //                                 0, 0, 0, 1)),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //                 const SizedBox(
                    //                   height: 10,
                    //                 ),
                    //                 SizedBox(
                    //                   width: 410,
                    //                   child: Text(
                    //                     "Image URL",
                    //                     style: GoogleFonts.poppins(
                    //                         fontSize: 13,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color.fromRGBO(
                    //                             33, 33, 33, 1)),
                    //                   ),
                    //                 ),
                    //                 const SizedBox(
                    //                   height: 5,
                    //                 ),
                    //                 TextField(
                    //                   decoration: InputDecoration(
                    //                       hintText: 'Enter URL',
                    //                       hintStyle: GoogleFonts.poppins(
                    //                           fontSize: 13,
                    //                           fontWeight: FontWeight.w400,
                    //                           color: const Color.fromRGBO(
                    //                               33, 33, 33, 1)),
                    //                       border: const OutlineInputBorder(
                    //                           borderSide: BorderSide(
                    //                               color: Color.fromRGBO(
                    //                                   191, 189, 189, 1)))),
                    //                 ),
                    //                 const SizedBox(
                    //                   height: 20,
                    //                 ),
                    //                 SizedBox(
                    //                   width: 410,
                    //                   child: Text(
                    //                     "Category",
                    //                     style: GoogleFonts.poppins(
                    //                         fontSize: 13,
                    //                         fontWeight: FontWeight.w400,
                    //                         color: const Color.fromRGBO(
                    //                             33, 33, 33, 1)),
                    //                   ),
                    //                 ),
                    //                 const SizedBox(
                    //                   height: 5,
                    //                 ),
                    //                 TextField(
                    //                   decoration: InputDecoration(
                    //                       hintText: 'Enter Category name ',
                    //                       hintStyle: GoogleFonts.poppins(
                    //                           fontSize: 13,
                    //                           fontWeight: FontWeight.w400,
                    //                           color: const Color.fromRGBO(
                    //                               0, 0, 0, 0.8)),
                    //                       border: const OutlineInputBorder(
                    //                           borderSide: BorderSide(
                    //                               color: Color.fromRGBO(
                    //                                   191, 189, 189, 1)))),
                    //                 ),
                    //                 const SizedBox(
                    //                   height: 20,
                    //                 ),
                    //                 Padding(
                    //                   padding: const EdgeInsets.all(15),
                    //                   child: ElevatedButton(
                    //                       style: const ButtonStyle(
                    //                           backgroundColor:
                    //                               MaterialStatePropertyAll(
                    //                                   Color.fromRGBO(
                    //                                       14, 161, 125, 1)),
                    //                           fixedSize:
                    //                               MaterialStatePropertyAll(
                    //                                   Size(120, 40))),
                    //                       onPressed: () {
                    //                         Navigator.pop(context);
                    //                       },
                    //                       child: Text("Add",
                    //                           style: GoogleFonts.poppins(
                    //                               fontSize: 16,
                    //                               fontWeight: FontWeight.w500,
                    //                               color: Colors.white))),
                    //                 )
                    //               ],
                    //             ),
                    //           ));
                    //     }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.add_circle,
                        color: Color.fromRGBO(14, 161, 125, 1),
                        size: 38,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add Category ",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(37, 37, 37, 1)),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
