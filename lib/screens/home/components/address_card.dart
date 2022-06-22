import 'package:flutter/material.dart';

Card addressCard() {
  return Card(
    child: RadioListTile(
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.all(20.0),
      groupValue: 1,
      value: 1,
      onChanged: (val) {},
      title: const Text('Farseen , Morayur '),
      subtitle: const Text(
          'Kottakunnan (h) po moayur  673642\nland mark : opposite arabic collage'),
    ),
  );
}
