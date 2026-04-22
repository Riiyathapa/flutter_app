import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';
import 'package:flutter_app2/custom_text.dart';

class CreateAccount extends StatelessWidget {
   CreateAccount({super.key});
  String? usernameorEmail,password,confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             Text("Create an",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
             Text("account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
             CustomText(onChanged: (value) {
               usernameorEmail=value;
             },
             autovalidateMode: AutovalidateMode.onUserInteraction,
             validator: (value) {
                if(value!.isEmpty){
                            return "Please enter the username or email";
                          }
                          return null;
             },
              hintText: "Username or Email",
              prefixIcon: Icon(Icons.person),
             ),
             CustomText(
              onChanged: (value) {
                password=value;
              },
              obscureText: true,
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter the password";
                }
                return null;
              },
              
             ),
             CustomText(
              onChanged: (value) {
                confirmPassword=value;
              },
              obscureText: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
               if(value!.isEmpty){
                return "Please confirm the password";
               } 
               return null;
              },
              hintText: "ConfirmPassword",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
             ),
             SizedBox(height: 12,),


            Wrap(
              children: [
                Text("By clicking the ",style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w400),),
                Text("Register", style: TextStyle(color: Colors.deepOrange,fontSize: 17)),
                 Text(" button, you agree",style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w400)),
                 Text("to the public offer",style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.w400),)
                ],
              ),
            
                   SizedBox(height: 15,),
                   CustomElevated(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    onPressed: (){},
                    child: Text("Create Account",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 30),

                    Center(
                      child: Text(    
                        "- OR Continue with-",style: TextStyle(fontSize: 17),),

                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/google.jpg"),
                        ),
                        SizedBox(width: 6,),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/apple.png"),
                          radius: 30,
                        ),
                        SizedBox(width: 6,),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/facebook.jpg"),
                          radius: 30,
                        ),
                      ],
                    ),
                   SizedBox(height: 35),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(" I Already Have an Account",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                       SizedBox(width: 6,),
                       Text(
                      "Login",style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),)
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