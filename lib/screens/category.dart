import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:myfoodapp/widgets/bottomnavbar.dart';
import 'package:myfoodapp/widgets/foodmenu.dart';
import 'package:myfoodapp/widgets/imageview.dart';
import 'package:myfoodapp/widgets/restoran.dart';
import 'package:myfoodapp/widgets/search.dart';
import 'package:myfoodapp/widgets/userinfo.dart';

class screenTwo extends StatefulWidget {
  const screenTwo({super.key});

  @override
  State<screenTwo> createState() => _screenTwoState();
}

final List<String> categoryTexts = [
  "Pizza",
  "Pan-Cake",
  "Sandwich",
  "Ice-Cream",
  "Noodle"
];
final List<String> categoryImages = [
  "assets/pizza.png",
  "assets/pancake.png",
  "assets/sandwich.png",
  "assets/icecream.png",
  "assets/noodle.png",
];

final List<String> restoranImages = [
  "assets/burgerking.png",
  "assets/pizzania.png",
  "assets/pankcake.png",
];
final List<String> restoranNames = ["Burger King", "Pizzania", "PankCake"];
final List<double> restoranPuan = [4.5, 4.6, 4.2];
final List<String> restoranTime = ["25-35", "20-25", "30-35"];
final List<String> restoranDistance = ["8", "7", "5"];
final List<bool> isitNew = [true, false, true];

class _screenTwoState extends State<screenTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              userLocate(userName: "Fdb", location: "ankara"),
              SizedBox(
                height: 0,
              ),
              searchWidget(),
              SizedBox(
                height: 15,
              ),
              midImage(),
              Container(
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 10),
                      child: Text(
                        "Show all",
                        style: TextStyle(
                            color: Colors.blueAccent[100], fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryImages.length,
                  itemBuilder: (context, index) {
                    return foodMenu(
                        menutext: categoryTexts[index],
                        menuImage: categoryImages[index]);
                  },
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: 350,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        child: Text(
                          "Restaurant",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Container(
                          height: 20,
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "Show all",
                            style: TextStyle(color: Colors.blueAccent[100]),
                          ))
                    ],
                  )),
              Container(
                width: 350,
                height: 359,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: restoranDistance.length,
                  itemBuilder: (context, index) {
                    return Restoran(
                        restoranImage: restoranImages[index],
                        restoranName: restoranNames[index],
                        restoranRate: restoranPuan[index],
                        restoranTime: restoranTime[index],
                        restoranDistance: restoranDistance[index],
                        isNew: isitNew[index]);
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }
}
