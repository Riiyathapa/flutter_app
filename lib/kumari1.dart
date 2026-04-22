import 'package:flutter/material.dart';

class Kumari1 extends StatelessWidget {
  const Kumari1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff038db8),
    body: SafeArea(
      child: Column(children: [
          Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadiusGeometry.only(
                      bottomLeft: Radius.circular(80),
                  ),
                  child: Image.asset(
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    "assets/images/kumari.jpg")),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                             children: [
                              SizedBox(
                             height: 100,
                              width: 300,
                              child: Image.asset("assets/images/kbanklogo.png",fit: BoxFit.cover,)),
                                                     ],
                                                   ),
                           )              
          ],),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Expanded(
                child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                    ),
                    child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    
                ),
              ),
              SizedBox(width: 19,),
              Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(color: Colors.yellow,
                borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.fingerprint),
              )
            ],),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
                height: 200,
                decoration: BoxDecoration(
                 color: Colors.white, 
               
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Align(
                              alignment: AlignmentGeometry.centerLeft,
                              child: Text("Digital Services",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                      SizedBox(height: 20,),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                        children: [
                            Column(children: [
                                Container(
                               decoration: BoxDecoration(
                                
                               ),
                                )

                            ],)
                        ],
                     )

                        ],),
                      ),
                 

                ),
          )
      ],
       ),
      

    ),
    );
  }
}