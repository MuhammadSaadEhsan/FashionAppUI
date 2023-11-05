import 'package:ecommerceapp/screens/successfulLogin.dart';
import 'package:flutter/material.dart';

class signUpView extends StatelessWidget {
  const signUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5, left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              width: 130,
              child: Image.asset("images/logoB.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Signup",
                  style: TextStyle(
                    fontFamily: "Gilroy-Black",
                    fontSize: 20,
                  ),
                )),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Create a new account",
                  style: TextStyle(
                      fontFamily: "Gilroy-Medium",
                      fontSize: 15,
                      color: Colors.grey),
                )),
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "User name ",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
                  ),
                )),
            Container(
              height: 30,
              child: const TextField(
                // textAlign: TextAlign.start,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                  hintText: "your name",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 230, 230, 230))),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
                  ),
                )),
            Container(
              height: 30,
              child: const TextField(
                obscureText: false,
                // textAlign: TextAlign.start,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                  hintText: "your email address",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 230, 230, 230))),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
                  ),
                )),
            Container(
              height: 30,
              child: const TextField(
                obscureText: true,
                // textAlign: TextAlign.start,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                  hintText: "your password",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 230, 230, 230))),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
                  ),
                )),
            Container(
              height: 30,
              child: const TextField(
                obscureText: true,
                // textAlign: TextAlign.start,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 50, bottom: 21),
                  hintText: "your password",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 230, 230, 230))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(children: [
                Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.grey,
                ),
                Text(
                  "     By creating an account you have",
                  style: TextStyle(color: Colors.grey),
                ),
              ]),
            ),
            Container(
                child: Text("to agree with our terms and conditions",
                    style: TextStyle(color: Colors.grey))),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>successful()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
