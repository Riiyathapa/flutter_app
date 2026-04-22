import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';
import 'package:flutter_app2/custom_text.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
       final formKey = GlobalKey<FormState>();
       String? emailpassword;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),

      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [    
              Text("Forgot Password",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Please enter your email..",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
              SizedBox(height: 22) ,  
              CustomText(
                labelText: "Email password",
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  emailpassword=value;
                },
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please enter your name";
                  }
                  return null;
                },
              ) ,  
              
              Spacer(), 
          
             CustomElevated(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Link sent (simulated)')),
                  );
                }
              },
              child: Text("Send Link",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
            ),
              SizedBox(height: 11,),
            ],
          
          ),
        ),
        
      ),
    
    );
  }
}