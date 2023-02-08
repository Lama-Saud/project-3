import 'package:flutter/material.dart';
import 'package:project3/pages/cart_page.dart';

import 'pages/home_page.dart';
import 'pages/orders_page.dart';
import 'pages/profile_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  var currentIndex = 0;

  static const pages = [
    HomePage(),
    OrdersPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CartPage(),
          ),
        ),
        child: const CircleAvatar(
          backgroundColor: Color(0xFF794C71),
          maxRadius: 30,
          child: Icon(Icons.shopping_cart, size: 35, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Chefz'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Profile'),
        ],
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF2e1326),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
