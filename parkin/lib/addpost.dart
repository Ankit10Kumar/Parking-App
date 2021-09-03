import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.deepOrangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          title: Text('Create Post'),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.keyboard_arrow_down_rounded)),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(height: 30),
            TextField(
              maxLines: null,
              maxLength: 3000,
              decoration: InputDecoration(
                hintMaxLines: 0,
                hintText: 'Discription',
                border: InputBorder.none,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
