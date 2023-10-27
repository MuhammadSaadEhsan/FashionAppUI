// import 'package:ecomerceseperate/hometab.dart';
// import 'package:ecomerceseperate/loginpage.dart';
// import 'package:ecomerceseperate/signuppage.dart';
// import 'package:ecomerceseperate/splash.dart';
// import 'package:ecomerceseperate/succeful.dart';
import 'package:ecommerceapp/flash.dart';
import 'package:ecommerceapp/loginscreen.dart';
import 'package:ecommerceapp/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // home: homes(),
      // home: loginpage(),
      // home: loginpage(),
      // home: successful(),
      // home: signup(),
      // home: Myhome(),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splash.jpg'), // Your image path
            fit: BoxFit.cover, // Cover the entire container
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 320,
            ),
            const Text(
              "Fashions",
              style: TextStyle(
                  fontFamily: 'BLACKADD',
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w200),
            ),
            const Text(
              "My Life My Style",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              // padding: EdgeInsets.symmetric(vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => logInView()),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Add your desired border radius
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                // padding: EdgeInsets.symmetric(vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => signUpView()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors
                        .transparent), // Set the background color to transparent
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Add your desired border radius
                        side: const BorderSide(
                          color: Colors.white, // Set the border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                    ),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}