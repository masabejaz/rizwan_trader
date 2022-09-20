import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        label: 'Cart',
        icon: Icon(
          Icons.shopping_cart,
        ),
      ),
      BottomNavigationBarItem(
        label: 'Search',
        icon: Icon(
          Icons.search,
        ),
      ),
      BottomNavigationBarItem(
        label: 'Contact',
        icon: Icon(
          Icons.contacts,
        ),
      ),
    ]);
  }
}
