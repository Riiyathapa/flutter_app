import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app2/kmc.dart';
import 'package:flutter_app2/kumari.dart';
import 'package:flutter_app2/notifications.dart';
import 'package:flutter_app2/settings.dart';
import 'package:flutter_app2/student_profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index=0;
  List<Widget> widgetList=[KumariBank(),Notifications(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            index=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
      ]),
    );

  }
}