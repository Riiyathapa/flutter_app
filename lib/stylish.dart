import 'package:flutter/material.dart';

class Stylish extends StatelessWidget {
  const Stylish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              "assets/images/stylogo.png")
            
          ],
        ),
      ),
    );
  }
}