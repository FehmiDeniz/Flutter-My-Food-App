import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class viewCard extends StatefulWidget {
  const viewCard({super.key});

  @override
  State<viewCard> createState() => _viewCardState();
}

class _viewCardState extends State<viewCard> {
  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Container(
        width: 360,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              child: Text(
                "View Cart",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Text(
              "\$8",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}
