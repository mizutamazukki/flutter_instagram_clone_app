import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  // const PostWidget(/{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/batman.png')),
                  ),
                ),
                title: Text('Codetodo'),
                subtitle: Text('hogehoge'),
                trailing: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )),
            Container(
                height: 400,
                child: Image.network('https://placehold.jp/400x400.png')),
            ListTile(
              leading: Wrap(
                spacing: 10,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 30),
                  // TODO ロゴファイルを持ってくるのがだるいのでそれっぽいアイコンで代用
                  Icon(Icons.comment, size: 30),
                  Icon(Icons.ios_share, size: 30),
                ],
              ),
              trailing: Icon(Icons.bookmark_border_outlined, size: 30),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('100 likes',
                        style: TextStyle(fontWeight: FontWeight.w700)))
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('title title',
                        style: TextStyle(fontWeight: FontWeight.w700)))
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text('view all 500 comments', style: TextStyle()))
              ],
            ),
          ],
        );
      },
    );
  }
}
