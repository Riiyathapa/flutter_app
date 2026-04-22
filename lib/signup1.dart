import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';

class Signup1 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
   Signup1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    leading: Icon(Icons.arrow_back_ios_new),
   ),
   body: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Form(
     key:_formKey,
       child: Column(  
        children: [
          SizedBox(height:80),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/image.jpg"),
                ),
                SizedBox(width: 20),
                 CircleAvatar(
                   radius: 70,
                   backgroundImage: AssetImage("assets/images/avatar.jpg"),
                 ),
                 SizedBox(),   
              ],
            ),
          ),
        SizedBox(height: 100),
          
          CustomElevated(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
           onPressed:(){},child: Text("Select Gender",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),)),  
           SizedBox(height: 40),
           Row(
            children: [
              Text("Already have an account?",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              Spacer(),
              Text("LOGIN",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              Icon(Icons.arrow_forward_ios),
            ],
           )  
        ],
        
       ),
     ),
   ),
   
    );
  }
}