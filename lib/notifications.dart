import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text(
     "Notifications",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
       ),
      ),
      body: SingleChildScrollView(
      child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Row(
        children: [
        CircleAvatar(
         radius: 20,
        backgroundImage: AssetImage("assets/images/logo.jpg"),
         ),
         SizedBox(width: 10),
         Expanded(
         child: RichText(
         text: TextSpan(
         style: TextStyle(fontSize: 15, color: Colors.black),
         children: [
        TextSpan(
        text: "Anubav Tamang ",
        style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: "has organized a hackathon event."),
         ],
         ),
         ),
         ),
          Text("2m"),
                ],
              ),
              SizedBox(height: 20),
              Row(
              children: [
              CircleAvatar(
              radius: 20,
               backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
               SizedBox(width: 10),
               Expanded(
                child: RichText(
                text: TextSpan(
                 style: TextStyle(fontSize: 15, color: Colors.black),
                 children: [
                  TextSpan(
                   text: "Bina Manandhar ",
                   style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                    TextSpan(
                    text:
                     "has organized a workshop on proposal writing.",
                      ),
                        ],
                      ),
                    ),
                  ),
                  Text("40m"),
                ],
              ),
              SizedBox(height: 14),
              Row(
              children: [
              CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/logo.jpg"),
              ),
                  SizedBox(width: 10),
                  Expanded(
                   child: RichText(
                   text: TextSpan(
                   style: TextStyle(fontSize: 15, color: Colors.black),
                    children: [
                          TextSpan(
                            text: "Admin ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "has posted the result of BCA third semester.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text("2d"),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Admin ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "has posted the result of BCA fourth semester.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text("2d"),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Admin ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "has posted the result of BCA first semester.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text("3d"),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Admin ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "has created the event for proposal writing.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text("4d"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
