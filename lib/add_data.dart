import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/customer.dart';
// import 'package:ecommerceapp/screens/successfulLogin.dart';
import 'package:ecommerceapp/successfull_buy.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  var studentarr = [];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController accountcontroller = TextEditingController();
  addstudent() async {
    var studenT =
        FirebaseFirestore.instance.collection(ourcustomerdata.customer);
    await studenT
        .add({
          "name": namecontroller.text,
          "date": datecontroller.text,
          "phoneno": phonecontroller.text,
          "accountno": accountcontroller.text,
        })
        .then((value) => print("Student has been added"))
        .catchError((value) => print(value));
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Payment recieved successfully")));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => successfulEntry()));
  }

  deletedata() {}
  updatedata() {}
  showData() async {
    // ignore: unused_local_variable
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection("Student").get();
    for (var doc in snapshot.docs) {
      print(doc.data());
    }
    setState(() {
      studentarr = snapshot.docs.map((doc) => doc.data()).toList();
    });

    print(studentarr);
    // Handle the error as needed, e.g., show an error message to the user
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Customer Detail",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, fontFamily: "arial"),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 200,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: "customer name",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0))),
                    controller: namecontroller,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: "Date",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0))),
                    controller: datecontroller,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: "Phone No",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0))),
                    controller: phonecontroller,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: "Account No",
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0))),
                    controller: accountcontroller,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                      width: 220,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => addstudent())));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Confirm payment",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Gilroy-Bold",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
