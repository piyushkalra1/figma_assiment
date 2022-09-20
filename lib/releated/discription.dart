import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({
    required this.type,

  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
               type,
               style: const TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 14.0,
               ),
                  ),

          ],
        ),
      ),
    );
  }
}

