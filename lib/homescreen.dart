import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/widget/bottombar_widget.dart';
import 'package:flutter_instagram_clone_app/widget/post_widget.dart';
import 'package:flutter_instagram_clone_app/widget/story_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading:
            Icon(Icons.camera_alt_rounded, color: Colors.grey[500], size: 30),
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 35),
            onPressed: () {},
          ),
          // TODO
          //  svg icon削除
          IconButton(
            icon: Image.asset('assets/images/facebook-messenger.png'),
            onPressed: () {},
          )
        ],
        title: Text('Instagram'),
      ),
      body: Column(
        children: [
          StoryWidget(),
          Divider(color: Colors.grey),
          Expanded(child: PostWidget())
        ],
      ),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
