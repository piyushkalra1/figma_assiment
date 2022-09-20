import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'cutomlist_item.dart';

class Related extends StatefulWidget {
  const Related({Key? key}) : super(key: key);

  @override
  State<Related> createState() => _RelatedState();
}

class _RelatedState extends State<Related> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
     _showBottomSheet();

    return  Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8.0),
            itemExtent: 150.0,
            children: <CustomListItem>[
              CustomListItem(
                // viewCount: 884000,
                  thumbnail: Card(
                    // margin: EdgeInsets.all(4),

                    shadowColor: Colors.black45,
                    borderOnForeground: true,
                    child: Container(

                      child: Image(
                        image: AssetImage('images/sanik.jpg'),
                      ),
                    ),
                  ),
                  type: "Liz Truss will be UK,whenis possi possinb"

              ),



            ],
          ),
          TextButton(onPressed: (){
            _show =true;
            setState(() {

            });
          }, child: Text('comments')),
          _showBottomSheet(),
        ],
      );


  }
  Widget _showBottomSheet()
  {

    if(_show)
    {
      return BottomSheet(
        onClosing: () {

        },
        builder: (context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey.shade200,
            alignment: Alignment.center,
            child: Flex(
              direction: Axis.vertical,


              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Releated",style: TextStyle(fontWeight: FontWeight.bold),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                  ],
                ),

                Expanded(
                  child: SizedBox(
                    child: ListView(
                      shrinkWrap: true,
                      itemExtent: 100.0,
                      children: <CustomListItem>[
                        CustomListItem(
                            thumbnail: Card(
                              shadowColor: Colors.black45,
                              borderOnForeground: true,
                              child: Container(
                                child: Image(
                                  image: AssetImage('images/sanik.jpg'),
                                ),
                              ),
                            ),
                            type: "Liz Truss will be UK's next Prime Minister?yes i thinkthat,whenis possinb"

                        ),
                        CustomListItem(
                          // viewCount: 884000,
                          thumbnail: Card(
                            shadowColor: Colors.black45,
                            borderOnForeground: true,
                            child: Container(
                              child: Image(
                                image: AssetImage('images/sanik.jpg'),
                              ),
                            ),
                          ),
                          type: 'i am her than what happen not take any tension keep calm always is right',
                        ),

                        CustomListItem(

                          // viewCount: 884000,
                          thumbnail: Card(
                            // margin: EdgeInsets.all(4),
                            shadowColor: Colors.black45,
                            borderOnForeground: true,
                            child: Container(
                              child: Image(
                                image: AssetImage('images/sanik.jpg'),
                              ),
                            ),
                          ),
                          type: 'you are powerful and genius why you not join the cbi or fci',

                        ),

                      ],
                    ),
                  ),
                ),



                TextButton(
                  child: Text("Close comment"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,

                  ),
                  onPressed: () {
                    _show = false;
                    setState(() {

                    });
                  },
                ),
              ],
            ),
          );
        },
      );
    }
    else{
      return Text("hi");
    }
  }

}
