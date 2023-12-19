import 'package:ecommerceapp/firebase_options.dart';
import 'package:ecommerceapp/screens/addProduct.dart';
import 'package:ecommerceapp/screens/flash.dart';
import 'package:ecommerceapp/screens/homescreen.dart';
// import 'package:ecommerceapp/homescreen.dart';
import 'package:ecommerceapp/screens/loginscreen.dart';
import 'package:ecommerceapp/screens/productDetail.dart';
import 'package:ecommerceapp/screens/signupscreen.dart';
import 'package:ecommerceapp/screens/start.dart';
import 'package:ecommerceapp/screens/successfulLogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // home: addProduct(),
      // home: start(),
      // home: logInView(),
      // home: signUpView(),
      // home: successful(),
      // home: home(),
      // home: product(),
    );
  }
}
