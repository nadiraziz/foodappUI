import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget NavDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFFFFBD00),
            image: DecorationImage(
                image: AssetImage('assets/images/ukka_side_menu.png')),
          ),
          child: null,
        ),
        const ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          tileColor: Color(0xFFE5E5E5),
          title: Text('👋 Hello! farseen..'),
        ),
        const ListTile(
          title: Text('Offer zone'),
        ),
        const ListTile(
          title: Text('My Address'),
        ),
        const ListTile(
          title: Text('My Orders'),
        ),
        ListTile(
          title: const Text('Order History'),
          onTap: () {},
        ),
        const ListTile(
          title: Text('My Cart'),
        ),
        const ListTile(
          title: Text('Log Out'),
        ),
      ],
    ),
  );
}
