import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myfoodapp/screens/category.dart';

class loginButton extends StatefulWidget {
  const loginButton({super.key});

  @override
  State<loginButton> createState() => _loginButtonState();
}

class _loginButtonState extends State<loginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const screenTwo()));
            },
            child: Container(
              alignment: Alignment.center,
              width: 360,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Color(0xff314B61),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xfff5f5f5),
                  fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              child: Text(
                "Don't have an acoount?",
                style: TextStyle(color: Color(0xff375268)),
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: Text(
                "Create Account",
                style: TextStyle(color: Color(0xffD9D9D9)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
