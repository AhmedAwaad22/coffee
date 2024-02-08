import 'package:coffee_shop_app/components/bottom_nav_bar.dart';
import 'package:coffee_shop_app/const.dart';
import 'package:coffee_shop_app/pages/like_page.dart';
import 'package:coffee_shop_app/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'card_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

final List<Widget> _pages = [
  const ShopPage(),
  const CartPage(),
  const likePage(),
  const profilePage(),
  
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF870000),
        title: Text(
          'Coffee CiC',
          style: TextStyle(color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white, // Set the color of the drawer icon to white
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF190A05),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Add your logic for the drawer item 1
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add your logic for the drawer item 2
              },
            ),
          ],
        ),
      ),
  
      backgroundColor: backgroundColor,
  bottomNavigationBar: SizedBox(
    child: MyBottomNavBar(
      onTabChange: (index) => navigateBottomBar(index!),
    ),
  ),
      
  body: Stack(
    children: [
      _pages[_selectedIndex],


      // Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('lib/images/backgroun.png'),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),

      
    ],
  ),
    );
  }
}
