import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: 30,
          width: 360,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(196, 196, 196, 1)),
        ),
      ),
      body: Column(
        children: [
              Container(
               height: 58.82,
               width: 69.76,
               child: Image.asset("assets/images/main.png"),
              ),
          Padding(
            padding: const EdgeInsets.only(left:30, right: 38),
            child: Column(children: [
              //  const  Padding(padding:EdgeInsets.only(left: 15,right: 15)),
              const SizedBox(
                height: 60,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: SizedBox(
                    width:380,
                    
                    //height: 24,
                    child: Text(
                      "Create your Account",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                  width: 380,
                  child: Form(
                    child: Column(
                      children: [
                        Container(
                          width: 280,
                          height: 49,
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    blurRadius: 10,
                                    offset: Offset(0, 3)
                                    )
                              ]),
                          child: TextFormField(
                              decoration:  InputDecoration(
                                  hintText: 'Name',hintStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400), border: InputBorder.none)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 280,
                          height: 49,
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    blurRadius: 10,
                                    offset: Offset(0, 3)
                                    )
                              ]),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Username',hintStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400), border: InputBorder.none)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 280,
                          height: 49,
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    blurRadius: 10,
                                    offset: Offset(0, 3)
                                    )
                              ]),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Password',hintStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400) ,border: InputBorder.none)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 280,
                          height: 49,
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.15),
                                    blurRadius: 10,
                                    offset: Offset(0, 3)
                                    )
                              ]),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Confirm Password',hintStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400), border: InputBorder.none)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 49,
                          width: 280,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(14, 161, 125, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const Screen3();
                                },
                              ));
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ]),
          ),
          const SizedBox(
            height: 130,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 0.6)),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Screen3();
                      },
                    ));
                  },
                  child: Text(
                    " Sign In",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(14, 161, 125, 1)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
