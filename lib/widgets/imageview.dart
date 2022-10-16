import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class midImage extends StatefulWidget {
  const midImage({super.key});

  @override
  State<midImage> createState() => _midImageState();
}

class _midImageState extends State<midImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      //container screen kısmında hizalama için
      child: Stack(
        children: [
          Container(
            width: 360,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/hamburger.png")),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 15,
            left: 20,
            child: Text(
              "Get Special Discount",
              style:
                  TextStyle(color: Colors.white.withAlpha(150), fontSize: 15),
            ),
          ),
          Positioned(
            top: 55,
            left: 20,
            child: Text(
              "up to 75%",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),
          Positioned(
              top: 110,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9)),
                width: 116,
                height: 30,
                child: IconButton(
                    onPressed: () {},
                    icon: Text(
                      "Claim Voucher",
                      style: TextStyle(fontSize: 14),
                    )),
              ))
        ],
      ),
    );
  }
}
