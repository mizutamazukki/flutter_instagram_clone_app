import 'package:flutter/material.dart';

class BottombarWidget extends StatelessWidget {
  const BottombarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/facebook-reels.png',
                  width: 35,
                ),
                label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'heart'),
            BottomNavigationBarItem(icon: CircleAvatar(), label: 'user'),
          ]),
    );
  }
}
