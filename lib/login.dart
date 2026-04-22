
import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';
import 'package:flutter_app2/custom_text.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
   Login({super.key});
   String? emailaddress,password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                SizedBox(height: 14,),
                Text("Please enter the details to login..."),
                SizedBox(height: 14,),
                CustomText(
                  labelText: "Email address",
                  suffixIcon: Icon(Icons.email_outlined),
                  onChanged: (value) {
                   emailaddress=value;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please enter the email";
                    }
                    return null;
                  },
            
                ),
                SizedBox(height: 12,),
                CustomText(
                  onChanged: (value) {
                    password=value;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please enter the password";
                    }
                    return null;
                  },
                  labelText: "Password",
                  suffixIcon: Icon(Icons.visibility_off_outlined),          
                ),
                SizedBox(height: 12,),
                
                Row(
                  children: [
                    Spacer(),
                    Text("Forgot password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 16,),
                CustomElevated(
                  foregroundColor:Colors.white,
                  backgroundColor: Colors.red,
                  onPressed:(){

                  // navigation to next page
                  },child: Text("Login"),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("OR",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14),),
                      ),
                      Expanded(child: Divider(color: Colors.grey,)),
                    ],
                  ),
                  SizedBox(height: 40),
                CustomElevated( 
                  side: BorderSide(),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,  
                  
                  onPressed: (){
                },child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [   
                   Icon(Icons.g_mobiledata_outlined),
                    Text("Continue with Google",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                    SizedBox()
                  ],
                ),),
                SizedBox(height:12),
                Row(
                  children: [
                    Text("Don't have an Account?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("SignUp",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
                
                
              ],
            
            ),
          ),
        ),
      ),
    );
  }
}