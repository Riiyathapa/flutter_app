import 'package:flutter/material.dart';
import 'package:flutter_app2/custom_elevated.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,
  ), 
      ),
    body: SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.1,width: MediaQuery.of(context).size.width,),
            
            Text("Terms and Conditions ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: 11,),
            Text("I agree and accept our terms and conditions and privacy policy",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Spacer(),
           CustomElevated(
            backgroundColor: Colors.red,
            
            foregroundColor: Colors.white,
            onPressed:(){},child: Text("Agree and Continue",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
         
            CustomElevated(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.black,
              onPressed:(){},child: Text("Decline",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),),
              SizedBox(height: 20,),
          ],
          
          
        ),
      ),
    ),
    
    );
  }
}