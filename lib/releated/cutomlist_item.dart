

import 'package:flutter/material.dart';
import 'discription.dart';


class CustomListItem extends StatefulWidget {
  const CustomListItem({

    required this.thumbnail,
    required this.type,
  });

  final Widget thumbnail;
  final String type;

  @override
  State<CustomListItem> createState() => _CustomListItemState();
}

class _CustomListItemState extends State<CustomListItem> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  child: widget.thumbnail,
                ),
                Expanded(
                  child: VideoDescription(
                    type: widget.type,
                  ),
                ),


              ],
            ),
          // ),
        ),
      ),
    );
  }
}


