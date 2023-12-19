import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/productData.dart';
import 'package:ecommerceapp/utils/collection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class addProduct extends StatelessWidget {
  addProduct({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController id_controller = TextEditingController();
    TextEditingController name_controller = TextEditingController();
    TextEditingController price_controller = TextEditingController();
    TextEditingController shortdes_controller = TextEditingController();
    TextEditingController image_controller = TextEditingController();
    TextEditingController size_controller = TextEditingController();
    TextEditingController availablestock_controller = TextEditingController();
    TextEditingController category_controller = TextEditingController();
    addNewProduct({productData}) async {
      // id_controller.text = "${productData.name}";
      name_controller.text = "${productData.name}";
      price_controller.text = "${productData.price}";
      shortdes_controller.text = "${productData.desc}";
      image_controller.text = "${productData.image}";
      availablestock_controller.text = "${productData.detail}";
      size_controller.text = "${productData.review}";
      // category_controller.text = "${productData.name}";

      var product = FirebaseFirestore.instance.collection(Collection.products);
      await product.add({
        "id": id_controller.text,
        "name": name_controller.text,
        "price": price_controller.text,
        "shortdescription": shortdes_controller.text,
        "image": image_controller.text,
        "size": size_controller.text,
        "availableStock": availablestock_controller.text,
        "category": category_controller.text,
      }).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Product added successfully")));
        id_controller.text = "";
        name_controller.text = "";
        price_controller.text = "";
        shortdes_controller.text = "";
        image_controller.text = "";
        availablestock_controller.text = "";
        size_controller.text = "";
        category_controller.text = "";
      }).catchError((value) => ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("failed to add : $value"))));
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
              height: 100,
              width: 100,
              child: Image.asset("images/logoB.png"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Add Products",
                  style: TextStyle(
                    fontFamily: "Gilroy-Black",
                    fontSize: 15,
                  ),
                )),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Add your latest product from your store to sell",
                  style: TextStyle(
                      fontFamily: "Gilroy-Medium",
                      fontSize: 15,
                      color: Colors.grey),
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: id_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product id',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product name',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: price_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product price',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: shortdes_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product short description',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: image_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product image address',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: size_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product size',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: availablestock_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product available stock',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                child: TextField(
                  controller: category_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your product category men/women',
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    addNewProduct();
                  },
                  child: Text(
                    "Add Product",
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
