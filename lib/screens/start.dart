import 'package:ecommerceapp/screens/loginscreen.dart';
import 'package:ecommerceapp/screens/signupscreen.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/newpic.jpeg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 180,
                  width: 180,
                  child: Image.asset("images/logoW.png"),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    logInView()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "Gilroy-Black",
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    signUpView()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "Gilroy-Black",
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(
                            side: BorderSide(color: Colors.white, width: 3)),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
