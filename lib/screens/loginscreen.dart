import 'package:ecommerceapp/screens/addProduct.dart';
import 'package:ecommerceapp/screens/successfulLogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class logInView extends StatelessWidget {
  logInView({super.key});

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Widget build(BuildContext context) {
  @override
    login() async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => successful()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

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
                  "Welcome!",
                  style: TextStyle(
                    fontFamily: "Gilroy-Black",
                    fontSize: 20,
                  ),
                )),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "please login or signup to continue our app",
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
                  "Email",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
                  ),
                )),
            Container(
              height: 30,
              child: TextField(
                controller: emailController,
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
              child: TextField(
                controller: passwordController,
                obscureText: true,
                // textAlign: TextAlign.start,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
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
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) => successful()));
                    login();
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
            Container(
              child: Text("or"),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => addProduct()));
                  },
                  child: Text(
                    "Add new Products",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Color.fromARGB(255, 0, 46, 132),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => successful()));
                  },
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: Text(
                    "Continue with Apple",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.white,
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
