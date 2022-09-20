import 'package:flutter/material.dart';

class newsDescription extends StatelessWidget {
  const newsDescription({
    required this.title,
    required this.type,

  });

  final String title;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          Text(
            type,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 8.0,
            ),
          ),

          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),

          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),

        ],
      ),
    );
  }
}

