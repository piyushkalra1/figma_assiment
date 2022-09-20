import 'package:figma_assiment/reactinscreen/reactionItem.dart';
import 'package:flutter/material.dart';
class Reaction extends StatefulWidget {
  const Reaction({Key? key}) : super(key: key);

  @override
  State<Reaction> createState() => _ReactionState();
}

class _ReactionState extends State<Reaction> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ReactiomListItem(thumbnail: Image.asset('images/sanik.jpg'), title: 'LInda',
                type: 'ia msimd YOUR PROPER Mind your business i am sholdier so keep distance wiyth nfi'),

            ReactiomListItem(thumbnail: Image.asset('images/sanik.jpg'), title: 'LInda',
                type: 'ia msimd YOUR PROPER Mind your business i am sholdier so keep distance wiyth nfi'),

            TextButton(onPressed: (){
              _show =true;
              setState(() {
                print('hii');

              });
            }, child: Text('comments')),
            _showBottomSheet()
          ],
        ),
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
            height: 250,
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
                      children: [
                        ReactiomListItem(thumbnail: Image.asset('images/sanik.jpg'), title: 'LInda',
                            type: 'ia msimd YOUR PROPER Mind your business i am sholdier so keep distance wiyth nfi'),
                        ReactiomListItem(thumbnail: Image.asset('images/sanik.jpg'), title: 'LInda',
                            type: 'ia msimd YOUR PROPER Mind your business i am sholdier so keep distance wiyth nfi'),
                        ReactiomListItem(thumbnail: Image.asset('images/sanik.jpg'), title: 'LInda',
                            type: 'ia msimd YOUR PROPER Mind your business i am sholdier so keep distance wiyth nfi'),

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
      return Text('more comments');
    }
  }
}
