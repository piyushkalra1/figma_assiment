
import 'package:figma_assiment/news/listitem.dart';
import 'package:figma_assiment/reactinscreen/reaction_screen.dart';
import 'package:flutter/material.dart';
import 'textbutton.dart';
import 'package:figma_assiment/releated/releatedscreen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final selectedIndexNotifier = ValueNotifier<int?>(1);

  double _currentSliderValue = 12;
  double _firstcurrentSliderValue = 88;
  double _secondcurrentSliderValue = 3;



  @override
  Widget build(BuildContext context) {

    return
      Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Container(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(

                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset('images/sanik.jpg',
                                  fit: BoxFit.cover,),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 150),
                                child: Container(


                                  margin: EdgeInsets.symmetric(vertical: 100),
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black12,
                                  ),

                                  child: Text('Will China Invade Taiwan Before End September', style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,fontSize: 18,
                                  ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),

                          height: 70,
                          color: Color(0xffAA00FF),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text("Change",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  Text("11 %",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Icon(Icons.arrow_upward,color: Colors.green,),
                              Container(
                                alignment: AlignmentDirectional.bottomEnd,
                                child: Column(
                                  children: [
                                    Text("24H",style: kTextStyle),
                                    Text("+25495",style: kTextStyle),
                                  ],
                                ),
                              ),
                              BlurText(text1: "&09",text2: 'YES',Colour: Colors.green,),
                              BlurText(text1: "&81",text2: 'No',Colour: Colors.red,),



                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child:
                          Center(
                              child: ValueListenableBuilder<int?>(
                                  valueListenable: selectedIndexNotifier,
                                  builder: (_, selectedIndex, __) => Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        MyWidget(
                                            key: ValueKey(1),
                                            text: "Research and news",
                                            isFavorite: selectedIndex == 1,
                                            onPressed: (){
                                              selectedIndex == 1 ? selectedIndexNotifier.value = null : selectedIndexNotifier.value = 1;
                                            setState(() {

                                            });
                                            }
                                        ),
                                      MyWidget(
                                          key: ValueKey(2),
                                          text: " reaction",
                                          isFavorite: selectedIndex == 2,
                                          onPressed: () { selectedIndex == 2 ? selectedIndexNotifier.value = null : selectedIndexNotifier.value = 2;
                                          setState(() {
                                          });
                                          }
                                      ),
                                      MyWidget(
                                          key: ValueKey(3),
                                          text: "Releated",
                                          isFavorite: selectedIndex == 3,
                                          onPressed: () { selectedIndex == 3 ? selectedIndexNotifier.value = null : selectedIndexNotifier.value = 3;
                                          setState(() {
                                          });
                                          }

                          ),

                                    ],
                                  ))),
                        ),
                      ],
                      ),





                    selectedIndexNotifier.value==1?Column(
                      children: [
                        Row(
                          children: [
                            Text("215 Exports Options",style: TextStyle(fontSize: 23,),),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(spreadRadius: 6,color: Colors.orange.withOpacity(0.1),
                                          offset: Offset(0,10))
                                    ],shape: BoxShape.circle,
                                  ),
                                  child: Center(child: Text("$_currentSliderValue",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.pink),)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                        inactiveTickMarkColor: Colors.black12,
                                        activeTrackColor: Colors.pinkAccent,
                                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 2.0),
                                      ),
                                      child: Slider(
                                        value: _currentSliderValue,
                                        max: 100,
                                        divisions: 100,
                                        label: _currentSliderValue.round().toString(),
                                        onChanged: ( value) {
                                          setState(() {
                                            _currentSliderValue = value + 10;
                                          });
                                          _currentSliderValue.toInt();
                                        },
                                      ),
                                    ),
                                    Text("$_currentSliderValue%buy yes",style:TextStyle(color: Colors.pink,fontWeight: FontWeight.bold)),

                                  ],
                                ),
                                Row(
                                  children: [
                                    SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                        inactiveTickMarkColor: Colors.black45,
                                        thumbColor: Colors.black,
                                        activeTrackColor: Colors.black,
                                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 2.0),
                                      ),
                                      child:Slider(
                                        value: _firstcurrentSliderValue,
                                        max: 100,
                                        divisions: 100,
                                        thumbColor: Colors.pink,
                                        label: _firstcurrentSliderValue.round().toString(),
                                        onChanged: ( double value) {
                                          setState(() {
                                            _firstcurrentSliderValue= value + 10;
                                            _firstcurrentSliderValue.round().toInt();
                                          });
                                          _firstcurrentSliderValue.toInt();
                                        },
                                      ),

                                    ),
                                    Text("$_firstcurrentSliderValue% buy no",style:TextStyle(color: Colors.pink,fontWeight: FontWeight.bold)),

                                  ],
                                ),
                                Row(
                                  children: [
                                    SliderTheme(
                                      data: SliderTheme.of(context).copyWith(
                                        inactiveTickMarkColor: Colors.black12,
                                        activeTrackColor: Colors.black,
                                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 2.0),
                                      ),
                                      child: Slider(
                                        value: _secondcurrentSliderValue,
                                        max: 100,
                                        divisions: 100,

                                        label: _secondcurrentSliderValue.round().toString(),
                                        onChanged: ( double value) {
                                          setState(() {
                                            _secondcurrentSliderValue = value + 10;
                                          });
                                          _secondcurrentSliderValue.toInt();
                                        },
                                      ),
                                    ),
                                    Text("$_secondcurrentSliderValue% resolve",style:TextStyle(color: Colors.pink,fontWeight: FontWeight.bold)),

                                  ],
                                ),
                              ],),

                          ],
                        ),
                        Container(
                          height: 100,
                          child: ListView.builder(itemBuilder: (context,index){
                            return Row(
                              children: [
                                ListItem(title: "INDIA", type: "India does not have formal diplomatic ties with Taiwan yet, as it follows the One-China policy. However, during then Chinese premier Wen Jiabao’s visit to India in December 2010 ....more"),


                                ListItem(title: "SO TENSW", type: "Differences over Taiwan’s status have fueled rising tensions between the island and the mainland. And Taiwan has the potential to be a flash point in U.S.-China relations....more"),

                                ListItem(title: 'Dispute', type: 'The relationship has been complex and controversial due to the dispute on the political status of Taiwan after the administration of Taiwan ...more'),

                              ],
                            );
                          },shrinkWrap: true,itemCount: 1,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        Container(

                          child: BottomNavigationBar(
                            items: const <BottomNavigationBarItem>[
                              BottomNavigationBarItem(
                                icon: Icon(Icons.home),
                                label: 'Dashboard',
                              ),

                              BottomNavigationBarItem(
                                icon: Icon(Icons.person),
                                label: 'My Profile',
                              ),
                              BottomNavigationBarItem(
                                icon: Icon(Icons.settings),
                                label: 'Change Password',
                              ),

                            ],
                            currentIndex: _selectedIndex,
                            selectedItemColor: Colors.red,
                            onTap: _onItemTapped,
                          ),
                        ),
                      ],
                    ):selectedIndexNotifier.value==2?Reaction(): Related(),







                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
  }
}

class BlurText extends StatelessWidget {
 final text1;
 final text2;
 final Colour;
 BlurText({this.text1,this.text2,this.Colour});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.bottomEnd,
      child: Column(
        children: [
          Text(text1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          Container(child: Text(text2,style: TextStyle(fontSize: 20),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
              color: Colour),)
        ],
      ),

    );

  }

}
const kTextStyle=TextStyle(fontSize: 12,fontWeight: FontWeight.bold,);

