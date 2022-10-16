import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 290,
          child: ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height + 20));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/1.png',
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          width: double.infinity,
          child: Text(
            "Lorem ipsum \ndolor sit amet, \nconsectetur \nadipiscing elit.  ",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        )
      ],
    );
  }
}
