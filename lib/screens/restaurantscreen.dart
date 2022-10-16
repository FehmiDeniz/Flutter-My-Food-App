import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:myfoodapp/widgets/food_click.dart';
import 'package:myfoodapp/widgets/foodinfo.dart';
import 'package:myfoodapp/widgets/foodtop.dart';
import 'package:myfoodapp/widgets/restoran_menu_selected.dart';
import 'package:myfoodapp/widgets/viewcard.dart';

class testing extends StatefulWidget {
  testing({super.key});
  static final List<String> menuItem = [
    "Burger",
    "Fries",
    "Coac",
    "Meal",
    "Water",
  ];

  @override
  State<testing> createState() => _testingState();
}

final List<String> foodImages = [
  "assets/food1.png",
  "assets/food2.png",
  "assets/food3.png",
  "assets/food4.png",
];

final List<String> foodNames = [
  "Chicken Burger",
  "Potato Corn Burger",
  "Supreme  Burger",
  "Pizza Burger"
];

final List<String> foodComment = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
];

final List<double> foodPrice = [7, 8, 5, 4];
final List<double> foodRate = [4.5, 4, 4.3, 3.8];

class _testingState extends State<testing> {
  @override
  // TODO: implement context
  BuildContext get context => super.context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: 800,
              width: double.infinity,
            ),
            Column(
              children: [
                burgerTop(),
                Positioned(
                  top: 500,
                  child: Container(
                    width: 414,
                    height: 900,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        restoranInfo(
                            RestoranName: "Burger King",
                            RestoranRate: "3",
                            RestoranTime: "3",
                            RestoranDistance: "4"),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 80,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: testing.menuItem.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.all(12),
                                child: restoranMenuSelected(
                                  menuChoices: [testing.menuItem[index]],
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 750,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return restoranClick(
                                  foodImage: foodImages[index],
                                  foodName: foodNames[index],
                                  foodRate: foodRate[index],
                                  foodPrice: foodPrice[index],
                                  foodComment: foodComment[0]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(left: 20, bottom: 405, child: viewCard())
          ],
        ),
      ),
    );
  }
}
