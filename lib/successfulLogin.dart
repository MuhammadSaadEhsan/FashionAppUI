import 'package:ecommerceapp/homescreen.dart';
import 'package:flutter/material.dart';

class successful extends StatelessWidget {
  const successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 180,),
          Center(
            child: Container(
              child: Icon(
              Icons.check_circle_outline,
              color: Colors.green, // You can change the color if needed
              size: 74.0, // You can adjust the size as needed
              ),
            ),
          ),
          SizedBox(height: 35,),
          Text("Successfull!",style: TextStyle(fontSize: 34,fontFamily: "Gilroy-Black"),),
          SizedBox(height: 3,),
          Text("You have successfully registered in",style: TextStyle(fontSize: 14,fontFamily: "Gilroy-Bold",color: Colors.grey),),
          SizedBox(height: 2,),
          Text("our app and start working in it.",style: TextStyle(fontSize: 14,fontFamily: "Gilroy-Bold",color: Colors.grey),),
          SizedBox(height: 180,),
          Container(
              padding: EdgeInsets.only(bottom: 15,left: 25,right: 25),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>home()));
                  },
                  child: Text("Start Shopping",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 17,color: Colors.white,),
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
    );
  }
}