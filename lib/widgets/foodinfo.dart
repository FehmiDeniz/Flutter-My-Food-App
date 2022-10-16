import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class restoranInfo extends StatefulWidget {
  const restoranInfo(
      {super.key,
      required this.RestoranName,
      required this.RestoranRate,
      required this.RestoranTime,
      required this.RestoranDistance});
  final String RestoranName;
  final String RestoranRate;
  final String RestoranTime;
  final String RestoranDistance;

  @override
  State<restoranInfo> createState() => _restoranInfoState();
}

class _restoranInfoState extends State<restoranInfo> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.only(top: 10),
      width: 380,
      height: 55,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                  width: 270,
                  child: Text(
                    widget.RestoranName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(widget.RestoranRate),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(widget.RestoranTime + " mins"),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 7,
                          ),
                          Text(widget.RestoranDistance + " km"),
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
    ));
  }
}
