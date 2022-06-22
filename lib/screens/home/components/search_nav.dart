import 'package:flutter/material.dart';

import '../../core/constant.dart';

TextField searchNav() {
  return TextField(
    style: const TextStyle(
      height: 0.8,
    ),
    decoration: InputDecoration(
        hoverColor: kWhiteColor,
        focusColor: kWhiteColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: kWhiteColor)),
        prefixIcon: const Icon(Icons.search),
        fillColor: kWhiteColor,
        filled: true,
        // border: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.white),
        //   borderRadius: BorderRadius.circular(10)
        // ),
        hintText: 'What are you looking for?',
        hintStyle: const TextStyle(fontSize: 12, color: kHintTextColor)),
  );
}
