import 'dart:ffi';

import 'package:ecommerceapp/add_data.dart';
import 'package:ecommerceapp/productData.dart';
import 'package:ecommerceapp/screens/productDetail.dart';
import 'package:ecommerceapp/store.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var productList1 = store.list1;
  var productList2 = store.list2;

  @override
  Widget build(BuildContext context) {
    return HomeTab();
  }
}

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------------------------------------------

      //-------------------------------------------------------
      body: _buildContent(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Tab 1",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.black,
              ),
            ),
            label: "Tab 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            label: "Tab 3",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Tab 4",
          ),
        ],
      ),
    );
  }

  Widget _buildContent(int index) {
    switch (index) {
      case 0:
        return Tab1Content();
      case 1:
        return Tab2Content();
      case 2:
        return Tab3Content();
      case 3:
        return Tab4Content(); // Add new tab content
      default:
        return Container();
    }
  }
}

//----------------------tab 1 --------------------
class Tab1Content extends StatelessWidget {
  var productList1 = store.list1;
  var productList2 = store.list2;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        // makedrawer();
                      },
                      child: Icon(Icons.menu),
                    ),
                    Image.asset(
                      "images/logoB.png",
                      height: 100,
                      width: 100,
                    ),
                    Icon(Icons.search),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22, bottom: 10),
                        child: Row(
                          children: [
                      Text(
                        "Featured Products",
                        style: TextStyle(
                            fontSize: 24, fontFamily: "Gilroy-Black"),
                      ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          getProductCard(context, productList2[0]),
                          getProductCard(context, productList2[1]),
                          getProductCard(context, productList2[2]),
                          getProductCard(context, productList2[3]),
                          getProductCard(context, productList2[4]),
                          getProductCard(context, productList2[5]),
                          getProductCard(context, productList2[6]),
                          getProductCard(context, productList2[7]),
                          getProductCard(context, productList2[8]),
                          getProductCard(context, productList2[9]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 31, bottom: 5),
                child: Container(
                  // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    "New Arrivals",
                    style: TextStyle(fontSize: 24, fontFamily: "Gilroy-Black"),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    getsmallProductCard(context, productList1[0]),
                    getsmallProductCard(context, productList1[1]),
                    getsmallProductCard(context, productList1[2]),
                    getsmallProductCard(context, productList1[3]),
                    getsmallProductCard(context, productList1[4]),
                    getsmallProductCard(context, productList1[5]),
                    getsmallProductCard(context, productList1[6]),
                    getsmallProductCard(context, productList1[7]),
                    getsmallProductCard(context, productList1[8]),
                    getsmallProductCard(context, productList1[9]),
                  ]
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: const Text(
                  "Popular",
                  style: TextStyle(fontSize: 24, fontFamily: "Gilroy-Black"),
                ),
              ),
            ),
            Row(children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    width: 60.0, // Set the width and height to make it a square
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          12.0), // Adjust the radius as needed
                      border: Border.all(color: Colors.white), // Border color
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12.0), // Match the radius to the outer border
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdYBZF6GajUF4P1vnpcEqBXGoxUMU_IbYtzWe6Cw69RXaezr55Ta3mcKSmOL2G00YUXNU&usqp=CAU', // Replace with your image URL
                        fit: BoxFit
                            .cover, // You can adjust the image fit as needed
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 38, 0),
                    child: const Text(
                      "Ghia Borghini",
                      style:
                          TextStyle(fontSize: 20, fontFamily: "Gilroy-Black"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(2, 5, 0, 0),
                    child: Text(
                      "RHW Roise 1 Sandals",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Gilroy-SemiBold",
                          color: Colors.grey),
                    ),
                  ),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------tab2--------------------------------
class Tab2Content extends StatelessWidget {
  var cartList = store.cartList;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "My orders",
              style: TextStyle(fontSize: 20, fontFamily: "Gilroy-Black"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Thank you for your orders",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Gilroy-SemiBold",
                  color: Colors.grey),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: cartList.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        cartList[index].image,
                      )),
                      title: Text(cartList[index].name),
                      subtitle: Text(cartList[index].detail),
                      trailing: Text(cartList[index].price),
                    );
                  }),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
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
                                    builder: ((context) => AddData())));
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
                                "Proceed to payment",
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
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tab3Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromARGB(255, 241, 241, 241),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 190, 0),
                  child: const Text(
                    "Notification",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ),
                const ListTile(
                  title: Text("Jackson Anderson"),
                  subtitle: Row(
                    children: [
                      Text("Hey! It's going pretty well, thanks for asking!"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://st2.depositphotos.com/3489481/6166/i/450/depositphotos_61667821-stock-photo-headshot-happy-middle-aged-man.jpg'),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Olivia Smith"),
                  subtitle: Row(
                    children: [
                      Text("The heart of a bustling city, oasis hidden"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/1073643816/photo/real-chinese-mature-man-with-blank-expression.jpg?s=612x612&w=0&k=20&c=WW7dukjIRy7GaosXuFxZ_pHH3GGqAeAn40oGJ_9w2Fw='),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Ethan Johnson"),
                  subtitle: Row(
                    children: [
                      Text(" It's a park ofancient trees, their branches "),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/531693334/photo/portrait-of-a-young-japanese-man-looking-at-camera.jpg?s=612x612&w=0&k=20&c=bI9pz-AoFny8_R1U9P6fJGoS4vDpYgErF34KjmtIM8o='),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Ava Williams"),
                  subtitle: Row(
                    children: [
                      Text("offering a shade rustling of leaves creating "),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww'),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Liam Brown"),
                  subtitle: Row(
                    children: [
                      Text("Visitors can escape the urban hustle"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww'),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Emma Davis"),
                  subtitle: Row(
                    children: [
                      Text("solace here, as the world outside to fade"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/35af6a41332353.57a1ce913e889.jpg'),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Noah Miller"),
                  subtitle: Row(
                    children: [
                      Text("leaving behind tranquil atmosphere "),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Sophia Wilson"),
                  subtitle: Row(
                    children: [
                      Text("Visitors can escape the urban"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
                const ListTile(
                  title: Text("Mason Taylor"),
                  subtitle: Row(
                    children: [
                      Text("escape the urban hustle and find"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D'),
                  ),
                ),
                const Divider(
                  color:
                      Colors.black, // You can customize the color and thickness
                  height: 10, // You can adjust the height of the line
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tab4Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(12.0), // Adjust the radius as needed
              border: Border.all(
                  color:
                      const Color.fromARGB(255, 239, 239, 239)), // Border color
            ),
            child: Row(children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: 60.0, // Set the width and height to make it a square
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          12.0), // Adjust the radius as needed
                      border: Border.all(color: Colors.white), // Border color
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12.0), // Match the radius to the outer border
                      child: Image.asset("images/logoB.png")
                        
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 38, 0),
                    child: const Text(
                      "Fscreaction",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: const Text("Fscreaction411@gmail.com")),
                ],
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
            height: 450,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(12.0), // Adjust the radius as needed
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                createListTile("Personal Detail", Icons.person),
                createListTile("My Order", Icons.shop_rounded),
                createListTile("My Favorites", Icons.favorite),
                createListTile("Shipping Address", Icons.location_on),
                createListTile("My Card", Icons.credit_card),
                createListTile("Settings", Icons.settings),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            height: 250,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(12.0), // Adjust the radius as needed
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                createListTile("FAQs", Icons.error),
                createListTile("Privacy policy", Icons.privacy_tip),
                createListTile("LOg Out", Icons.logout),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget createListTile(String title, IconData iconData) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );
}

getProductCard(context, productData productData) {
  return InkWell(
    // style: ButtonStyle(
    // backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    // You can add more styles here as needed, like text style, padding, etc.
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => product(productData)));
    },
    child: Card(
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      color: Colors.white,
      child: Container(
        height: 200,
        width: 200,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              // child: Image.network(
              //   productData.image,
              //   height: 200,
              //   width: 250,
              //   fit: BoxFit.cover,
              // ),
              child: Image.asset(
                productData.image,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    // Transparent background
                    ),
                // child: const Text(
                //   "Some Text Over the Picture",
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 16,
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

getsmallProductCard(BuildContext context, productData productData) {
  return InkWell(
    // style: ButtonStyle(
    // backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    // You can add more styles here as needed, like text style, padding, etc.
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => product(productData)));
    },
    child: Card(
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      color: Colors.white,
      child: Container(
        height: 350,
        width: 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                // child: Image.network(
                //   productData.image,
                //   width: 200,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                child: Image.asset(productData.image),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                productData.name,
                style: TextStyle(fontFamily: "Gilroy-Black", fontSize: 20),
              ),
              Text(
                productData.detail,
                style: TextStyle(fontFamily: "Gilroy-Medium"),
              ),
              Text(
                productData.price,
                style: TextStyle(fontFamily: "Gilroy-Black", fontSize: 20),
              ),
              // Positioned(
              //   bottom: 10,
              //   left: 10,
              //   child: Container(
              //     padding: const EdgeInsets.all(10),
              //     decoration: const BoxDecoration(
              //         // Transparent background
              //         ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}
