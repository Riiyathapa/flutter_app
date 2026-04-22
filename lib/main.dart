import 'package:flutter/material.dart';
import 'package:flutter_app2/bottom_nav.dart';
import 'package:flutter_app2/clothes.dart';
import 'package:flutter_app2/create_account.dart';
import 'package:flutter_app2/fashion.dart';
import 'package:flutter_app2/forgot_pass.dart';
import 'package:flutter_app2/kumari.dart';
import 'package:flutter_app2/kumari1.dart';
import 'package:flutter_app2/login.dart';
import 'package:flutter_app2/make_payment.dart';
import 'package:flutter_app2/menu.dart';
import 'package:flutter_app2/shopping.dart';
import 'package:flutter_app2/stylish.dart';
import 'package:flutter_app2/welcom_back.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Clothes(), 
    );
  }
}

