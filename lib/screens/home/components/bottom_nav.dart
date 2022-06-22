import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        color: Colors.black,
      ),
      unselectedLabelStyle: const TextStyle(
        color: Colors.black,
      ),
      currentIndex: _currentIndex,
      onTap: (newIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      },
      type: BottomNavigationBarType.fixed,
      // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/home_icon.png'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/category_icon.png'),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/offer_icon.png'),
          label: 'Offer',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/cart_icon.png'),
          label: 'Cart',
        )
      ],
    );
  }
}
