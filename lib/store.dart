import 'package:ecommerceapp/productData.dart';
import 'package:ecommerceapp/screens/productDetail.dart';

class store {
  static List<productData> cartList = [];
  static List<productData> list1 = [
    productData(
        "Addidas new",
        "joggers for men",
        "245",
        "new addidas collection shoes for men with good qualities",
        "\$250",
        'images/l13.gif'),
    productData(
        "Axel Arigato",
        "Running shoes for men",
        "180",
        "new nike collection shoes to change your life",
        "\$299",
        'images/l11.jpg'),
    productData(
        "Nike new",
        "joggers for men",
        "210",
        "new nike collection shoes for men with extended features",
        "\$399",
        'images/l12.jpg'),
    productData("Smart Shoes", "joggers of your choice", "330",
        "new smart shoes for men with brilliant features", "\$250", "images/l14.jpg"),
  ];

  static List<productData> list2 = [
    productData(
        "Fancy",
        "joggers for men",
        "210",
        "new addidas collection shoes for men with good qualities",
        "\$399",
        "images/l24.jpg"),
    productData(
        "Addidas new",
        "Ladies New Bags",
        "245",
        "new Fancy collection for women with extended features",
        "\$250",
        'images/l23.jpg'),
    productData(
        "Fancy",
        "latest bags for women",
        "180",
        "new nike collection shoes to change your life",
        "\$299",
        'images/l21.jpg'),
    productData(
      "Smart Shoes",
      "joggers of your husband",
      "330",
      "new smart shoes for men with brilliant features",
      "\$250",
      "images/l22.jpg",
    ),
  ];
}
