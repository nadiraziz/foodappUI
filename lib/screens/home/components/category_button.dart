import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const CategoryButton({
    Key? key,
    this.data,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {},
        child: Text(
          data,
          style: const TextStyle(fontSize: 16, color: Color(0xFF38465A)),
        ));
  }
}
