import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/productData.dart';
// import 'package:ecommerceapp/screens/addProduct.dart';
// import 'package:ecommerceapp/addProduct.dart';
import 'package:ecommerceapp/store.dart';
import 'package:ecommerceapp/utils/collection.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class product extends StatelessWidget {
  productData products;
  product(this.products, {super.key});
  int m = 1;

  @override
  Widget build(BuildContext context) {
// =========================================
    TextEditingController review_controller = TextEditingController();
    TextEditingController name_controller = TextEditingController();
    TextEditingController price_controller = TextEditingController();
    TextEditingController shortdes_controller = TextEditingController();
    TextEditingController image_controller = TextEditingController();
    TextEditingController category_controller = TextEditingController();
    // TextEditingController size_controller = TextEditingController();
    // TextEditingController availablestock_controller = TextEditingController();
    addNewProduct({productData}) async {
      review_controller.text = "${productData.review}";
      name_controller.text = "${productData.name}";
      price_controller.text = "${productData.price}";
      shortdes_controller.text = "${productData.desc}";
      image_controller.text = "${productData.image}";
      category_controller.text = "${productData.detail}";
      // size_controller.text = "${productData.review}";
      // category_controller.text = "${productData.name}";

      var product = FirebaseFirestore.instance.collection(Collection.products);
      await product.add({
        // "id": id_controller.text,
        "name": name_controller.text,
        "price": price_controller.text,
        "shortdescription": shortdes_controller.text,
        "image": image_controller.text,
        // "size": size_controller.text,
        "category": category_controller.text,
        "review": review_controller.text,
      }).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Product added successfully")));
        // id_controller.text = "";
        name_controller.text = "";
        price_controller.text = "";
        shortdes_controller.text = "";
        image_controller.text = "";
        // availablestock_controller.text = "";
        // size_controller.text = "";
        category_controller.text = "";
        // ignore: invalid_return_type_for_catch_error
      }).catchError((value) => ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("failed to add : $value"))));
    }

    int m = 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
              alignment: Alignment.topCenter,
              // height: 550,
              // width: 550,
              width: double.infinity,
              // child: Image.network(
              //   products.image,
              // ),
              child: Image.asset(products.image),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 400,  //================250
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey.shade100)),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //-----------------------1
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products.name,
                            style: TextStyle(
                                fontSize: 20, fontFamily: "Gilroy-Black"),
                          ),
                          SizedBox(
                            height: 1,  //--------------3
                          ),
                          Text(
                            products.detail,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Gilroy-SemiBold",
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                              ),
                              Text("  (${products.review} Review)",
                                  style: TextStyle(
                                      fontFamily: "Gilroy-Bold",
                                      fontSize: 14,
                                      color: Colors.grey.shade600))
                            ],
                          )
                        ],
                      ),
                    ),
                    //------------------2
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            child: Center(
                              child: Text(
                                "- $m +",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Gilroy-Medium",
                                ),
                              ),
                            ),
                            // alignment: Alignment.topLeft,
                            height: 30,  
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          onTap: () {
                            m += 1;
                          },
                        ),
                        SizedBox(
                          height: 15,   
                        ),
                        Text("Available in stock",
                            style: TextStyle(
                                fontFamily: "Gilroy-Black", fontSize: 14))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,  ///////            2
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Size",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Gilroy-Bold",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                //------------------- row2----------------
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: Text(
                            "39",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "Gilroy-Bold"),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: Text(
                            "39.5",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "Gilroy-Bold"),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: Text(
                            "40",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "Gilroy-Bold"),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Center(
                              child: Text(
                            "40.5",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontFamily: "Gilroy-Bold"),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height:40,
                          width: 40, 
                          child: Center(
                              child: Text(
                            "41",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: "Gilroy-Bold"),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black,
                              border: Border.all(color: Colors.grey)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                //--------------------ROW3--------------------
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Gilroy-Bold",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  products.desc,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Gilroy-Medium",
                      color: Colors.grey),
                ),
                //----------row4----------
                SizedBox(
                  height: 16,  //-----------------------------26
                ),
                Row(
                  children: [
                    Container(
                      child: Column(children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Gilroy-Medium",
                              color: Colors.grey),
                        ),
                        Text(
                          products.price,
                          style: TextStyle(
                              fontSize: 20, fontFamily: "Gilroy-Black"),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 40, //----------------------------40----changed
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            addNewProduct(productData: products);
                            store.cartList.add(products);
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
                                width: 5,
                              ),
                              Text(
                                "Add to cart",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Gilroy-Bold",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
