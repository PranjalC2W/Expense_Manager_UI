import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
          const SizedBox(height:220,),
          Center(
            child: Container(
              height: 144,
              width: 144,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(234, 238, 235, 1),
                ),
                child: Container(
                  height: 46.38,
                  width: 71.26,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/main.png",
                    height: 58.82,
                    width: 69.76,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 230,),
          GestureDetector(
            child: Text(
              "Expense Manager",
              style:
                  GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onTap:() {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder:(context) {
                    return const Screen2();
                  },)
                 );
            },
          ),
        ],
      ),
    );
  }
}
