import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodMenu extends StatefulWidget {
  const foodMenu({super.key, required this.menutext, required this.menuImage});
  final String menutext;
  final String menuImage;

  @override
  State<foodMenu> createState() => _foodMenuState();
}

class _foodMenuState extends State<foodMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 85,
            height: 70,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.menuImage), fit: BoxFit.cover),
                shape: BoxShape.circle),
          ),
          Container(
              alignment: Alignment.topCenter,
              width: 60,
              height: 14,
              child: Text(
                widget.menutext,
                style: TextStyle(fontSize: 12),
              ))
        ],
      ),
    );
    ;
  }
}
