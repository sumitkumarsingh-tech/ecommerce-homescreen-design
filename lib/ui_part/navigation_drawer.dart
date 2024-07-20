import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5.0),
          child: Row(
            children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/manprofile.jpg')),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/electronics_image.png",
            ),
          ),
          title: Text(
            'Electronics',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/fashion_image.png",
            ),
          ),
          title: Text(
            'Fashion',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/mobile_image.png",
            ),
          ),
          title: Text(
            'Mobiles',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/appliances_image.png",
            ),
          ),
          title: Text(
            'Appliances',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/furnitures_image.png",
            ),
          ),
          title: Text(
            'Furniture',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/grocery_image.png",
            ),
          ),
          title: Text(
            'Grocery',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/toys_image.png",
            ),
          ),
          title: Text(
            'Toys',
            style: GoogleFonts.abel(fontSize: 14, color: Colors.grey.shade700),
          ),
        ),
      ],
    );
  }
}
