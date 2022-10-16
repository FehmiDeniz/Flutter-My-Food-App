import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List<bool> is_selected = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 415,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            height: 45,
            decoration: BoxDecoration(
              color: is_selected[0] ? Colors.amber : Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    is_selected = [true, false, false, false];
                  });
                },
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                )),
          ),
          Container(
            width: 50,
            height: 45,
            decoration: BoxDecoration(
              color: is_selected[1] ? Colors.amber : Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    is_selected = [false, true, false, false];
                  });
                },
                icon: Image.asset("assets/hearticon.png")),
          ),
          Container(
            width: 50,
            height: 45,
            decoration: BoxDecoration(
              color: is_selected[2] ? Colors.amber : Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    is_selected = [false, false, true, false];
                  });
                },
                icon: Image.asset("assets/sepeticon.png")),
          ),
          Container(
            width: 50,
            height: 45,
            decoration: BoxDecoration(
              color: is_selected[3] ? Colors.amber : Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    is_selected = [false, false, false, true];
                  });
                },
                icon: Image.asset("assets/personicon.png")),
          ),
        ],
      ),
    );
  }
}
