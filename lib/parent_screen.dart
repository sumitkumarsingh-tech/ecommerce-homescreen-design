import 'package:ecommerce_design/screens/categories_screen.dart';
import 'package:ecommerce_design/screens/home_screen.dart';
import 'package:ecommerce_design/screens/profile_screen.dart';
import 'package:ecommerce_design/screens/wishlist_screen.dart';
import 'package:ecommerce_design/ui_part/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({super.key});

  @override
  State<ParentScreen> createState() {
    return _ParentScreenState();
  }
}

class _ParentScreenState extends State<ParentScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var _currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CategoriesScreen(),
    ProfileScreen(),
    WishListScreen()
  ];

  @override
  Widget build(context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons
              .line_horizontal_3_decrease_circle_fill), // You can use any icon you prefer
          onPressed: () {
            // Handle drawer opening
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        backgroundColor: Colors.orange.shade500,
        elevation: 2,
        title: const Text(
          'ecommerce App',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 8.0),
            child: Badge(
                label: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                offset: const Offset(-5, 2),
                backgroundColor: Colors.black,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ))),
          ),
        ],
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        width: 220,
        child: NavDrawer(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange.shade500,
        currentIndex: _currentIndex,
        elevation: 2,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
