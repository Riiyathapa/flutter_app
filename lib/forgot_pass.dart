import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';
import 'package:flutter_app2/custom_text.dart';

class ForgotPass extends StatelessWidget {
 ForgotPass({super.key});
 String? enteryouremailaddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text("Forgot",style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold),),
           Text("password?",style: TextStyle(fontSize: 44,fontWeight:FontWeight.bold),),
           SizedBox(height: 20),
           CustomText(
            obscureText: true,
            onChanged: (value) {
              enteryouremailaddress=value;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if(value!.isEmpty){
                return "Please enter your amail address";
              }
              return null;
            },
            hintText: "Enter yor email address",
            prefixIcon: Icon(Icons.email),
           ),
           SizedBox(height: 24,),
          Wrap(
            children: [
              Text("*",style: TextStyle(color: Colors.red,fontSize: 18),),
              Text("We will send you a message to set or reset",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              Text("your new password",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
            ],
          ),
          Spacer(),
          CustomElevated(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: (){},
            child: Text("Submit"),
            ),
            SizedBox(height: 16,),
          ],
        ),
      )),
    );
  }
}