import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';
import 'package:flutter_app2/custom_text.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _formKey = GlobalKey<FormState>();
  String? Email,Name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new),
      title: Text("SignUp",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height: 15,),
              Text("Please enter the details to login..."),
              SizedBox(height: 11),
              CustomText(
                onChanged: (value) {
                Email=value;
                Name=value;
                },
                
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please enter the required info";
                  }
                  return null;
                  
                },
                labelText: "Email",
                prefixIcon: Icon(Icons.email_rounded),
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomText(
                labelText: "Name",
                prefixIcon: Icon(Icons.person_2_outlined),
                 ),
              Spacer(),
              CustomElevated(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                onPressed: () {
                  //navigate to next page
                },
                child: Text("SignUp"),
              ),

              CustomElevated(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                onPressed: () {},
                child: Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
