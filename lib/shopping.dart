import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
        Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Text("/3",style: TextStyle(fontSize:20,fontWeight:FontWeight.w300),),
        Spacer(),
        Text("Skip",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
        ]),
      
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Center(
              child: Image.asset(  
                "assets/images/shopping.png",  
              ),
            ),
           SizedBox(height: 18,),
           Text("Get Your Order",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
           SizedBox(height:17),
           Text(
            textAlign: TextAlign.center,
             "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),),
            Expanded(child: SizedBox()),
            Row(
              children: [
                Text("Prev",style: TextStyle(fontSize:24,fontWeight: FontWeight.w400,color: Colors.grey),),
                Spacer(),
            Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 22)),
            ],)

          ],
        ),
      ),
    );
  }
}