import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class burgerTop extends StatefulWidget {
  const burgerTop({super.key});

  @override
  State<burgerTop> createState() => _burgerTopState();
}

class _burgerTopState extends State<burgerTop> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.only(bottom: 2),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: 415,
            height: 288,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/menu.png"))),
          ),
          Positioned(
            top: 50,
            left: 40,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7), shape: BoxShape.circle),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.grey.withOpacity(0.8),
                textColor: Colors.white,
                child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 36,
                ),
                padding: EdgeInsets.only(right: 0),
                shape: CircleBorder(),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 30,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7), shape: BoxShape.circle),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.grey.withOpacity(0.8),
                textColor: Colors.white,
                child: Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
                padding: EdgeInsets.only(right: 0),
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
