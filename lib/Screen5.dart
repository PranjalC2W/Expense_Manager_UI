import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_expence_manager/Screen4.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Category_screen.dart';
import 'GraphScreen.dart';
import 'TrashScreen.dart';

class Screen5 extends StatefulWidget{
  const Screen5({super.key});
  @override 
  State<Screen5>createState()=>_Screen5State();
}

class _Screen5State extends State<Screen5>{
  @override 
  Widget build(BuildContext context){
   return Drawer(
    width:216 ,
    surfaceTintColor:const Color.fromRGBO(255, 255, 255, 1) ,
    shape:const  RoundedRectangleBorder(side: BorderSide.none),
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(
            height: 24,
            width: 150,
            child: Text("Expense Manager",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600),)),
            SizedBox(
              height: 24,
              width: 150,
              child: Text("Saves all your Transactions",style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 0.5)),)),
              const SizedBox(height: 5,),
             Container(
                height: 40,
                width: 184,
                decoration:const  BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                ),
                child: Row(
                  children: [
                     Image.asset("assets/images/transaction.png"),
                     const SizedBox(width: 8,),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                        MaterialPageRoute(
                          builder:(context) {
                            return const Screen4();
                          },)
                          );
                      },
                      child: Text("Transaction",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400,color:const Color.fromRGBO(14,161,125, 1)),)),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
               Row(
                children: [
                  Image.asset("assets/images/graph.png"),
                  const SizedBox(width: 8,),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) {
                          return const GraphScreen();
                        },));
                      },
                      child: Text("Graphs",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400,color:const Color.fromRGBO(33,33,33, 1)),)),
                ],
               ),
                const SizedBox(height: 28,),
               Row(
                children: [
                  Image.asset("assets/images/icon.png"),
                  const SizedBox(width: 8,),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder:(context) {
                              return const Category_screen();
                            },)
                          );
                      },
                      child: Text("Category",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400,color:const Color.fromRGBO(33,33,33, 1)),)),
                ],
               ),
                const SizedBox(height: 28,),
               Row(
                children: [
                  Image.asset("assets/images/trash.png"),
                  const SizedBox(width: 8,),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) {
                             return const TrashScreen();
                        },));
                      },
                      child: Text("Trash",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400,color:const Color.fromRGBO(33,33,33, 1)),)),
                ],
               ),
                const SizedBox(height: 28,),
               Row(
                children: [
                  Image.asset("assets/images/person.png"),
                  const SizedBox(width: 8,),
                     Text("About us",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400,color:const Color.fromRGBO(33,33,33, 1)),),
                ],
               ),
        ],
      ),
    ),
   );
  }
}