import 'package:flutter/material.dart';

class Clothes extends StatelessWidget {
  const Clothes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            fit: BoxFit.cover,
            "assets/images/clothes.png"),
        ),
        Container(
          child: Column(
               children: [
              Text("")
            ],
          ),
        )
      ],
      ),
      ),
      
    );
  }
}

