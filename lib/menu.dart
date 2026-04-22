import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({super.key});
  List<String> categorylist = [
    "Fastfood",
    "Vegetarian",
    "Cafe",
    "Buffet",
    "Non Veg",
    "Veg",
    "Fastfood",
  ];
  List<Food> nameList = [
    Food(
      imageUrl:
          "https://media.istockphoto.com/id/655384000/photo/momo-traditional-nepali-dumplings.jpg?s=612x612&w=0&k=20&c=DjZ_FVbvtthJTSJdA_3GiAH7qqZWlGa5JlCyHz6gFWE=",
      name: "Sandar Momo",
      distance: "0.2 km",
      rate: "4.0",
    ),
    Food(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR04dBZpiK92r5vDPUzRAzlbqY-gMSFfaM88w&s",
      name: "Bajeko Sekuwa",
      distance: "0.2 km",
      rate: "4.3",
    ),

    Food(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsFfSsF4eoHbAKXpcctfYbUwjPAST-57xqQA&s",
      name: "Subway",
      distance: "0.2 km",
      rate: "4.5",
    ),
    Food(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpgg9auFWMc2sUEQGIxeoUq5keVHipm4B1vg&s",
      name: "Waffles",
      distance: "0.2 km",
      rate: "4.1",
    ),
  ];
  List<Popular> popularList = [
    Popular(
      imageUrl:
          "https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=800&q=80",
      name: "McDonald's",
      time: "20 mins",
      category: "Burger",
      distance: "1 km",
      rate: "4.6",
    ),

    Popular(
      imageUrl:
          "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=800&q=80",
      name: "Domino's",
      time: "25 mins",
      category: "Pizza",
      distance: "3 km",
      rate: "4.7",
    ),

    Popular(
      imageUrl:
          "https://images.unsplash.com/photo-1554118811-1e0d58224f24?auto=format&fit=crop&w=800&q=80",
      name: "Prakriti Cafe",
      time: "10 min",
      category: "Cafe and Bakery",
      distance: "5 km",
      rate: "4.8",
    ),

    Popular(
      imageUrl:
          "https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?auto=format&fit=crop&w=800&q=80",
      name: "Subway",
      time: "15 mins",
      distance: "10 km",
      category: "Fast food",
      rate: "4.9",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Hi,John",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    "Banepa 45210,Nepal",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Spacer(),
                  Icon(Icons.search, color: Colors.black),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: categorylist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Text(
                        "${categorylist[index]}",
                        style: TextStyle(
                          color: index == 0 ? Colors.orangeAccent : Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: nameList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(11),
                            child: Image(
                              image: NetworkImage(
                                "${nameList[index].imageUrl}",
                              ),
                              fit: BoxFit.cover,
                              height: 150,
                              width: 125,
                            ),
                          ),
                          SizedBox(height: 11),
                          Text(
                            "${nameList[index].name}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, size: 12),
                              SizedBox(width: 4),
                              Text("${nameList[index].distance}"),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.orangeAccent),
                              SizedBox(width: 4),
                              Text("${nameList[index].rate}"),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Popular",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 270,
                child: ListView.builder(
                  itemCount: popularList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            child: Image(
                              image: NetworkImage(
                                "${popularList[index].imageUrl}",
                              ),
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${popularList[index].name}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text("${popularList[index].rate}"),
                                    SizedBox(width: 8),
                                    Text(
                                      "${popularList[index].category}",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      "${popularList[index].time}",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "${popularList[index].distance}",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pedal_bike,
                                      color: Colors.grey,
                                      size: 14,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Free Delivery",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Food {
  String? name, imageUrl, rate, distance;
  Food({this.name, this.imageUrl, this.rate, this.distance});
}

class Popular {
  String? name, rate, time, distance, imageUrl, category;
  Popular({
    this.name,
    this.rate,
    this.time,
    this.distance,
    this.imageUrl,
    this.category,
  });
}
