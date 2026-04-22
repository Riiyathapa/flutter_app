import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';
import 'package:flutter_app2/custom_text.dart';
import 'package:flutter_app2/password.dart';

class WelcomBack extends StatelessWidget {
   WelcomBack({super.key});
  String? password,usernameorEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 20),
       child: SingleChildScrollView(
         child: SafeArea(
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Welcome",style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold),),
             Text("Back!",style: TextStyle(fontSize:44,fontWeight: FontWeight.bold),),
             SizedBox(height: 8,),
             CustomText(onChanged: (value) {
              usernameorEmail=value;
             },
             autovalidateMode: AutovalidateMode.onUserInteraction,
              hintText: "Username or Email",
              prefixIcon: Icon(Icons.person),
               validator: (value) {
                        if(value!.isEmpty){
                          return "Please enter the username or email";
                        }
                        return null;
                      },
             ),
             
            CustomText(onChanged:(value) {
              password=value;
            }, autovalidateMode: AutovalidateMode.onUserInteraction,
            hintText: "Password",
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye_outlined),
             validator: (value) {
                        if(value!.isEmpty){
                          return "Please enter the password";
                        }
                        return null;
                      },
            ),
           SizedBox(height: 10,),  
           Align(
            alignment: Alignment.centerRight,
       child: Text(
    "Forgot Password?",
    style: TextStyle(
      color: Colors.pinkAccent,
      fontSize: 16,
    ),
  ),
),
           SizedBox(height: 17,),
           CustomElevated(
            foregroundColor:Colors.white ,
            backgroundColor: Color(0xffFF3B5C),
            onPressed: (){},
            child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 70,),
            Center(
              child: Text(
 
                "- OR Continue with -",style: TextStyle(fontSize:18),),
            ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/google.jpg"),
                    radius: 30,
                  ),
                  SizedBox(width: 6),
               CircleAvatar(
                backgroundImage: AssetImage("assets/images/apple.png"),
                radius: 30,
               ),
               SizedBox(width: 6),
               CircleAvatar(
                backgroundImage: AssetImage("assets/images/facebook.jpg",
                ),
                radius: 30,
               ),
                ],
              ),
              SizedBox(height:15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create An Account",style: TextStyle(fontSize: 19),),
                  SizedBox(width: 4,),
              Text("Sign Up",style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                color: Colors.red,fontWeight: FontWeight.w500,fontSize: 19),),
                ],
              ),
                 ],
           ),
         ),
       ),
     ),
    );

  }
}