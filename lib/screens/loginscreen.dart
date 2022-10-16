import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfoodapp/widgets/loginbutton.dart';
import 'package:myfoodapp/widgets/loginview.dart';

class screenOne extends StatefulWidget {
  const screenOne({super.key});

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [loginScreen(), loginButton()],
      ),
    );
  }
}
