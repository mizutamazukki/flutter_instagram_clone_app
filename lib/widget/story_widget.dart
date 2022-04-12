import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  // TODO 数が少ないと左によらないCenter寄せになる
  //　調べてないがここら辺が怪しそうMainAxisAlignment.spaceAround
  List<dynamic> story = [
    {"images": 'assets/images/batman.png', "username": '1'},
    {"images": 'assets/images/batman.png', "username": '2'},
    {"images": 'assets/images/batman.png', "username": '3'},
    {"images": 'assets/images/batman.png', "username": '3'},
    {"images": 'assets/images/batman.png', "username": '3'},
    {"images": 'assets/images/batman.png', "username": '3'},
    {"images": 'assets/images/batman.png', "username": '3'},
    {"images": 'assets/images/batman.png', "username": '3'},
  ];
  // const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(story.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                              width: 67,
                              height: 67,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF982282),
                                        Color(0xFFEEA863)
                                      ])),
                              child: Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          //BottomNavigationBarItem
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(color: Colors.grey)
                                          ],
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '${story[index]['images']}')))),
                                ),
                              )),
                          Text('${story[index]['username']}')
                        ],
                      ),
                    );
                  })),
            ),
          ),
        )
      ],
    );
  }
}
