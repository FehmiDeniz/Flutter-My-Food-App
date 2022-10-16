import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfoodapp/screens/restaurantscreen.dart';

class Restoran extends StatefulWidget {
  const Restoran(
      {super.key,
      required this.restoranImage,
      required this.restoranName,
      required this.restoranRate,
      required this.restoranTime,
      required this.restoranDistance,
      required this.isNew});
  final String restoranImage;
  final String restoranName;
  final double restoranRate;
  final String restoranTime;
  final String restoranDistance;
  final bool isNew;

  @override
  State<Restoran> createState() => _RestoranState();
}

class _RestoranState extends State<Restoran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: 380,
      height: 100,
      child: Stack(
        children: [
          Container(
            width: 360,
            height: 98,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => testing()));
                  },
                  child: Container(
                    width: 97,
                    height: 97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(widget.restoranImage),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      //restoran ismi
                      width: 220,
                      child: Text(
                        widget.restoranName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      //yıldız ve restoran puanı
                      width: 220,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFFD600),
                          ),
                          Text(
                            widget.restoranRate.toString(),
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //süre container
                    Container(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.access_time_filled),
                                Text(widget.restoranTime + " mins"),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.assistant_direction_outlined),
                                Text("  " + widget.restoranDistance + " km")
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              left: 306,
              child: Container(
                  child: Text(
                    "New",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  width: 54,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(23),
                      bottomLeft: Radius.circular(18),
                    ),
                    color: widget.isNew == true ? Colors.black : Colors.white,
                  ))),
        ],
      ),
    );
  }
}
