import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class restoranClick extends StatefulWidget {
  const restoranClick({
    super.key,
    required this.foodImage,
    required this.foodName,
    required this.foodRate,
    required this.foodPrice,
    required this.foodComment,
  });
  final String foodImage;
  final String foodName;
  final String foodComment;
  final double foodRate;
  final double foodPrice;

  @override
  State<restoranClick> createState() => _restoranClickState();
}

class _restoranClickState extends State<restoranClick> {
  int piece = 0;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Container(
        width: 380,
        height: 110,
        child: Stack(
          children: [
            Container(
              width: 376,
              height: 98,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 97,
                    height: 97,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(widget.foodImage),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: 228,
                    //iç yazıları kapsayan columunun containerı
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: 200,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                //yemek ismi
                                width: 140,
                                height: 30,
                                child: Text(
                                  widget.foodName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                //yıldız ve yemek puanı
                                width: 60,
                                height: 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 30,
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xffFFD600),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      width: 35,
                                      height: 20,
                                      child: Text(
                                        widget.foodRate.toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 35,
                          child: Text(
                            widget.foodComment,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontStyle: FontStyle.italic),
                          ),
                        ),

                        //fiyat container
                        Container(
                          width: 200,
                          child: Text(
                            "\$" + widget.foodPrice.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                //- 0 + butpn ve olayları
                top: 40,
                right: 8,
                child: Container(
                  width: 96,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 28,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 0,
                                  blurRadius: 2)
                            ]),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                piece == 0
                                    ? piece = piece
                                    : piece-- & current--;
                              });
                            },
                            icon: Text("-",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        width: 20,
                        height: 30,
                        child: Text(
                          piece.toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 28,
                        height: 35,
                        decoration: BoxDecoration(
                            color: current == 0 ? Colors.white : Colors.black,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 0,
                                  blurRadius: 2)
                            ]),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                current++;

                                piece++;
                              });
                            },
                            icon: Text(
                              "+",
                              style: TextStyle(
                                  color: current == 0
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
