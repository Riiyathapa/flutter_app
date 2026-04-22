import 'package:flutter/material.dart';

class Kmc extends StatefulWidget {
  const Kmc({super.key});

  @override
  State<Kmc> createState() => _KmcState();
}

class _KmcState extends State<Kmc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "KMC",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            "https://www.setokhabar.com/news/135074/tu-nepal-logo",
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Admin",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 7),
                        Text("15h", style: TextStyle(fontSize: 12)),
                        Spacer(),
                        Icon(Icons.more_vert_rounded),
                      ],
                    ),
                    SizedBox(height: 14),
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEFEF),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.image_outlined,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "KMC organized First National Conference on Sociology for Business",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Kabhre Multiple Campus has organized its first national conference under the title Sociology for Business ...more",
                    ),
                  ],
                ),
              ),
               SizedBox(height: 18),
              Container(
                width: double.infinity,
                padding:  EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/logo.jpg"),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Admin",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 7),
                        Text("11h", style: TextStyle(fontSize: 12)),
                        Spacer(),
                        Icon(Icons.more_vert_rounded),
                      ],
                    ),
                    SizedBox(height: 14),
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEFEF),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.image_outlined,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "KMC organized First National Conference on Sociology for Business",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Kabhre Multiple Campus has organized its first national conference under the title Sociology for Business ...more",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}