

import 'package:flutter/material.dart';
import 'reactindiscription.dart';

class ReactiomListItem extends StatefulWidget {
  const ReactiomListItem({

    required this.thumbnail,
    required this.title,
    required this.type,
  });
  final Widget thumbnail;
  final String title;
  final String type;

  @override
  State<ReactiomListItem> createState() => _ReactiomListItemState();
}

class _ReactiomListItemState extends State<ReactiomListItem> {
  // IconButton(onPressed: (){
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(3), // Border radius
              child: ClipOval(child: widget.thumbnail),
            ),
          ),

          Expanded(
            child: Column(
              children: [
                VideoDescription(
                  title: widget.title,
                  type: widget.type,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


