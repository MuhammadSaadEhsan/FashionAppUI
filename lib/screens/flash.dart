import 'dart:async';

import 'package:ecommerceapp/screens/start.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => start()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          // backgroundColor: Colors.black,
          body: Center(
            child: Container(
              height: 180,
              width: 180,
              child: Image.asset("images/logoB.png"),
              // child: Image.asset("images/logoW.png"),
            ),
          ),
        );
  }
}
