import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
   VideoDescription({
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
              fontSize: 17.0,
            ),
          ),
          Text(
            type,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11.0,
            ),
          ),

          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),

          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),

        ],
      ),
    );
  }
}

