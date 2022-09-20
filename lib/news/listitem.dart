

import 'package:flutter/material.dart';
import 'package:figma_assiment/news/discription1.dart';

class ListItem extends StatefulWidget {
  const ListItem({

    required this.title,
    required this.type,


  });

  final String title;
  final String type;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  // IconButton(onPressed: (){
  @override
  Widget build(BuildContext context) {
    Color _iconColor =Colors.green;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.background,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),

        child: Container(
          width: 200,height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    child:newsDescription(
                      title: widget.title,
                      type: widget.type,
                    ) ,
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


