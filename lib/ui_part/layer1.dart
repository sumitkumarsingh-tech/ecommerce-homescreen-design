import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyItems {
  MyItems({required this.image, required this.productName});
  String image;
  String productName;
}

class GridCategories extends StatefulWidget {
  const GridCategories({super.key});

  @override
  State<GridCategories> createState() => _GridCategoriesState();
}

class _GridCategoriesState extends State<GridCategories> {
  List<MyItems> item = [
    MyItems(image: "assets/images/mobile_image.png", productName: "Mobiles"),
    MyItems(
        image: "assets/images/electronics_image.png",
        productName: "Electronics"),
    MyItems(image: "assets/images/fashion_image.png", productName: "Fashion"),
    MyItems(
        image: "assets/images/furnitures_image.png", productName: "Furniture"),
    MyItems(image: "assets/images/grocery_image.png", productName: "Grocery"),
    MyItems(
        image: "assets/images/appliances_image.png", productName: "Appliances"),
    MyItems(image: "assets/images/toys_image.png", productName: "Toys"),
    MyItems(image: "assets/images/books_image.png", productName: "Books"),
    MyItems(image: "assets/images/medecine_image.png", productName: "Medicine"),
    MyItems(
        image: "assets/images/nurseryplant_image.png", productName: "Plants"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
       shrinkWrap: true,
        padding: EdgeInsets.all(15),
        itemCount: item.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(item[index].image),
              ),
              Text(
                item[index].productName,
                style: GoogleFonts.abel(),
              ),
            ],
          );
        });
  }
}
