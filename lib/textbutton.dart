import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);


class MyWidget extends StatelessWidget {
  const MyWidget({
    Key? key,
    required this.text,
    required this.isFavorite,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>  TextButton(
      style: TextButton.styleFrom(
        primary: isFavorite ? Colors.red : Colors.green,
      ),
      onPressed: onPressed,
      child: Text(text));

  final String text;
  final bool isFavorite;
  final VoidCallback onPressed;
}