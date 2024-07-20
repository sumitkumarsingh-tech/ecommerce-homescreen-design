import 'package:flutter/material.dart';
class MyList{
  String image;
  String productName;
  String newPrice;
  String oldPrice;
  MyList({required this.image,required this.productName,required this.newPrice,required this.oldPrice});
}
 List<MyList> listItems = [
   MyList(image: "assets/images/pic1.png", productName: "Summer Top", newPrice: "\$10.00", oldPrice:"\$8.25"),
   MyList(image: "assets/images/pic2.png", productName: "Zara Jacket", newPrice: "\$155.50", oldPrice:"\$145.25"),
   MyList(image: "assets/images/pic3.png", productName: "Denim Jeans", newPrice: "\$85.45", oldPrice:"\$89.35"),
   MyList(image: "assets/images/pic4.png", productName: "Louis Vuitton Jacket", newPrice: "\$250.00", oldPrice:"\$275.00"),
   MyList(image: "assets/images/pic5.png", productName: "Short Zip Jacket", newPrice: "\$100.00", oldPrice:"\$108.25"),


 ];