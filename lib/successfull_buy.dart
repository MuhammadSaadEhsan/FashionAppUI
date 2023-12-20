import 'dart:io';

import 'package:ecommerceapp/screens/homescreen.dart';
import 'package:flutter/material.dart';

class successfulEntry extends StatelessWidget {
  const successfulEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 180,
          ),
          Center(
            child: Container(
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.green, // You can change the color if needed
                size: 74.0, // You can adjust the size as needed
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Successfull!",
            style: TextStyle(fontSize: 34, fontFamily: "Gilroy-Black"),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Thank You for using our service",
            style: TextStyle(
                fontSize: 14, fontFamily: "Gilroy-Bold", color: Colors.grey),
          ),
          SizedBox(
            height: 2,
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15, left: 25, right: 25),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(),
                      ));
                },
                child: Text(
                  "Continue to shoping",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
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
            padding: EdgeInsets.only(bottom: 15, left: 25, right: 25),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    fontFamily: "Gilroy-Bold",
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
