import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int?) onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GNav(
          onTabChange: (value) => onTabChange(value),
          color: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Color(0xFF870000),
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 30,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Card',
            ),
                GButton(
              icon: Icons.favorite,
              text: 'Like',
            ),
                GButton(
              icon: Icons.account_box,
              text: 'Card',
            ),
          ]),
    );
  }
}
