import 'package:flutter/material.dart';

class Fashion extends StatelessWidget {
  const Fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title: Row(
            children: [
                Text("1",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                Text("/3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                Spacer(),
                Text("Skip",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
         ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                  Image.asset("assets/images/fashion.png.png"
                  ),
              SizedBox(height: 10,),
              Text("Choose Products",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 17,),
                 Text( 
                  textAlign: TextAlign.center,
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                  style: TextStyle(height:1.6,fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w500),),
                Expanded(child: SizedBox()),
                Row(
                  children: [
                    Spacer(),
                    Text("Next",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                )
                
              ],

          ),
        ),

    );
    
  }
}