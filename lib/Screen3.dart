import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen2.dart';
import 'Screen4.dart';
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
            padding: const EdgeInsets.only(left: 40, right: 38),
            child: Column(children: [
              //  const  Padding(padding:EdgeInsets.only(left: 15,right: 15)),
              const SizedBox(
                height: 70,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                    width: 420,
                    child: Text(
                      "Login to your Account",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                  width: 420,
                  child: Form(
                    child: Column(
                      children: [
                        Container(
                          height: 49,
                          width: 280,
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(255, 255, 255,1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0,0, 0, 0.15),
                                    blurRadius: 10,offset: Offset(0,3))
                              ]),
                          child: TextFormField(
                              decoration:  InputDecoration(
                                  hintText: 'UserName',hintStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 0.4)), border: InputBorder.none)),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
          
                         Container(
                          height: 49,
                          width: 280,
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(255, 255, 255,1),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0,0, 0, 0.15),
                                    blurRadius: 10,offset: Offset(0,3))
                              ]),
                          child: TextFormField(
                              decoration:  InputDecoration(
                                  hintText: 'Password',hintStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 0.4)), border: InputBorder.none)),
                        ),
                    
                        const SizedBox(
                          height: 28,
                        ),
                        Container(
                          height: 49,
                          width:280,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(14, 161, 125, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const Screen4();
                                },
                              ));
                            },
                            child: Text(
                              "Sign In",
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
            height: 190,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Screen2();
                      },
                    ));
                  },
                  child: Text(
                    " Sign Up",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(184, 19, 118, 77)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
