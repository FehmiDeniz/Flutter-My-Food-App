import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class restoranMenuInfo extends StatefulWidget {
  const restoranMenuInfo({super.key});

  @override
  State<restoranMenuInfo> createState() => _restoranMenuInfoState();
}

class _restoranMenuInfoState extends State<restoranMenuInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 801,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 414,
              height: 900,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ],
      ),
    );
  }
}
