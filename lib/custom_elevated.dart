import 'package:flutter/material.dart';


class CustomElevated extends StatelessWidget {
  Widget? child;
  Color? foregroundColor;
  Color? backgroundColor;
  Function()? onPressed;
  BorderSide? side;
   CustomElevated({super.key,this.child, required this.onPressed,this.backgroundColor,this.foregroundColor,this.side});

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton( 
          style: ElevatedButton.styleFrom(    
            side:BorderSide( color: Colors.blue),
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            backgroundColor: backgroundColor ?? Colors.amber,
            foregroundColor: foregroundColor ?? Colors.red,
          ),
            onPressed: onPressed,
             child: child),
      ),
    );
  
  
  }
}