import 'package:flutter/material.dart';

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    int m = 1;
    return Scaffold(
      body: Column(children: [
        Center(
          child: Container(
            alignment: Alignment.topCenter,
            // height: 550,
            // width: 550,
            width: double.infinity,
            child: Image.network(
                "https://contents.mediadecathlon.com/p2155519/675a901c012338809f9e6dda7dd6ea6b/p2155519.jpg?format=auto&quality=70&f=650x0"),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 292,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey.shade100)
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //-----------------------1
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Axel Arigato",
                        style:
                            TextStyle(fontSize: 20, fontFamily: "Gilroy-Black"),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Clean 90 Triol Sneakers",
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
                          Text("  (270 Review)",
                              style: TextStyle(
                                  fontFamily: "Gilroy-Bold", fontSize: 14,color: Colors.grey.shade600))
                        ],
                      )
                    ],
                  ),
                  //------------------2
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: TextButton(
                          child: Text("  - $m +",style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: "Gilroy-Medium",),),
                          onPressed: () {
                            m+=1;
                          },
                        style: ButtonStyle(alignment: Alignment.center),
                        ),
                        alignment: Alignment.topLeft,
                        height: 27,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      SizedBox(height: 15,),
                      Text("Available in stock",
                              style: TextStyle(
                                  fontFamily: "Gilroy-Black", fontSize: 14))
                    ],
                  )
                ],
              ),
              SizedBox(height: 4,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                          "Size",
                          style:
                              TextStyle(fontSize: 18, fontFamily: "Gilroy-Bold",fontWeight: FontWeight.w500),
                        ),
              ),
              //------------------- row2----------------
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(height: 40,width: 40,child: Center(child: Text("39",style: TextStyle(fontSize: 16,color: Colors.grey,fontFamily: "Gilroy-Bold"),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,border: Border.all(color: Colors.grey)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(height: 40,width: 40,child: Center(child: Text("39.5",style: TextStyle(fontSize: 16,color: Colors.grey,fontFamily: "Gilroy-Bold"),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,border: Border.all(color: Colors.grey)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(height: 40,width: 40,child: Center(child: Text("40",style: TextStyle(fontSize: 16,color: Colors.grey,fontFamily: "Gilroy-Bold"),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,border: Border.all(color: Colors.grey)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(height: 40,width: 40,child: Center(child: Text("40.5",style: TextStyle(fontSize: 16,color: Colors.grey,fontFamily: "Gilroy-Bold"),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,border: Border.all(color: Colors.grey)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(height: 40,width: 40,child: Center(child: Text("41",style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Gilroy-Bold"),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.black,border: Border.all(color: Colors.grey)),),
                  ),
                ],
                ),
              ),
              //--------------------ROW3--------------------
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                          "Description",
                          style:
                              TextStyle(fontSize: 18, fontFamily: "Gilroy-Bold",fontWeight: FontWeight.w500),
                        ),
              ),              
            SizedBox(height: 1,),
            Text(
                        "these On sneakers enhance the label's riginal Cloud sneaker with cutting edge technologies for a pair",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Gilroy-Medium",
                            color: Colors.grey),
                      ),
            //----------row4----------
            SizedBox(height: 11,),
            Row(children: [
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
                        "\$245.00",
                        style:
                            TextStyle(fontSize: 20, fontFamily: "Gilroy-Black"),
                      ),
                ]),
              ),
              SizedBox(width: 90,),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text(
                        "Add to cart",
                        style:
                            TextStyle(fontSize: 15, fontFamily: "Gilroy-Bold",color: Colors.white),
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
    );
  }
}
