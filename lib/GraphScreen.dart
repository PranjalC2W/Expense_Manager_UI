import 'package:flutter/material.dart';
import 'package:flutter_expence_manager/Screen5.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget{
  const GraphScreen({super.key});
  @override 
  State<GraphScreen>createState()=>_GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen>{

  Map<String,double> data={

     'Food':40,
     'Fuel':60,
     'Medicine':30,
     'Entertainment':28,
     'Shopping':17,
  };
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
  Widget build(BuildContext context){
    return Scaffold(
      drawer: const Screen5(),
      appBar: AppBar(
        title: Text("Graphs",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500,color:const Color.fromRGBO(33, 33, 33, 1)),),
         flexibleSpace: Container(
          height: 30,
          width: 360,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(196, 196, 196, 1)),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              animationDuration: const Duration(milliseconds: 2000),
              chartType: ChartType.ring,
             chartRadius:170,
             chartValuesOptions:const  ChartValuesOptions(
              showChartValues: false,
             ),
             legendOptions:  LegendOptions(
              
              legendTextStyle: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 1))
             ),
              ringStrokeWidth:30,
              centerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total",style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 1)),),
                  const SizedBox(height: 5,),
                  Text("₹ 2550.00",style: GoogleFonts.poppins(fontSize:13,fontWeight:FontWeight.w600,color:const Color.fromRGBO(0, 0, 0, 1)),),
                  
                ],
              ),
              ),
              const SizedBox(height:25,),
               Divider(),
              const SizedBox(height: 15,),
               ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder:(context, index) {
                  return Container(
                    margin: const EdgeInsets.all(12),
                     child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color:color[index%color.length],
                            shape: BoxShape.circle
                          ),
                          child: Image.asset(imagess[index%imagess.length]),
                        ),
                        const SizedBox(width: 12,),
                        Text("Food",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 1)),),
                        const SizedBox(width:115,),
                        Text("₹ 650.00",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:const Color.fromRGBO(0, 0, 0, 1))),
                        const SizedBox(width: 15,),
                        SizedBox(
                          width:4,
                          height: 6,
                          child: Image.asset("assets/images/iconless.png"))
                      ],
                     ),
                  );
                },),
                const SizedBox(height: 10,),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w400,color:const Color.fromRGBO(0, 0, 0, 1)),),
                      const SizedBox(width:130,),
                      Text("₹ 2,550.00",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w600,color:const Color.fromRGBO(0, 0, 0, 1)),),
                  
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}