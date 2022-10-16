import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class restoranMenuSelected extends StatefulWidget {
  const restoranMenuSelected({super.key, required this.menuChoices});
  final List<String> menuChoices;
  @override
  State<restoranMenuSelected> createState() => _restoranMenuSelectedState();
}

class _restoranMenuSelectedState extends State<restoranMenuSelected> {
  List<bool> isSelected = [false, false, false, false, false];

  late int value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected[value] ? Colors.black : Colors.white,
          boxShadow: [BoxShadow(spreadRadius: 0.3, blurRadius: 1)]),
      child: IconButton(
          onPressed: () {
            setState(() {
              if (isSelected[value] == false) {
                isSelected[value] = true;
              } else {
                isSelected[value] = false;
              }
            });
          },
          icon: Text(
            textAlign: TextAlign.center,
            widget.menuChoices[value],
            style: TextStyle(
                color: isSelected[value] ? Colors.white : Colors.black),
          )),
    );
  }
}
