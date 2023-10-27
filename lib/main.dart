import 'package:ecommerceapp/flash.dart';
import 'package:ecommerceapp/homescreen.dart';
// import 'package:ecommerceapp/homescreen.dart';
import 'package:ecommerceapp/loginscreen.dart';
import 'package:ecommerceapp/product.dart';
import 'package:ecommerceapp/signupscreen.dart';
import 'package:ecommerceapp/start.dart';
import 'package:ecommerceapp/successfulLogin.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: logInView(),
      // home: signUpView(),
      // home: start(),
      home: SplashPage(),
      // home: successful(),
      // home: home(),
      // home: product(),  
    );
  }
}