import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userLocate extends StatefulWidget {
  const userLocate({
    super.key,
    required this.userName,
    required this.location,
  });
  final String userName;
  final String location;

  @override
  State<userLocate> createState() => _userLocateState();
}

class _userLocateState extends State<userLocate> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 100,
                child: Text(
                  "Hi " + widget.userName + "!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(
                        "assets/location.png",
                      ),
                      size: 12,
                    ),
                    Text("Location,",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB3B3B3))),
                    Text(
                      widget.location,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB3B3B3)),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 32),
            child: Image.asset(
              "assets/notification.png",
            ),
          ),
        ],
      ),
    ));
  }
}
