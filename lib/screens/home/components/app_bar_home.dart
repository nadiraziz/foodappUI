import 'package:flutter/material.dart';
import 'package:foodapp/screens/home/components/search_nav.dart';

import '../../core/constant.dart';
import 'loacation_bar.dart';

AppBar homeHead() {
  return AppBar(
    toolbarHeight: 130,
    iconTheme: const IconThemeData(color: kSecondaryColor),
    backgroundColor: kPrimaryColor,
    // leading: Icon(Icons.arrow_back, color: Color(0xFF38465A), size: 24),
    title: const LocationBar(),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 16.0),
        child: searchNav(),
      ),
    ),
  );
}
