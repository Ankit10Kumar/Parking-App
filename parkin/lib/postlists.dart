import 'package:flutter/material.dart';

import 'mypostmodels.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int item = 1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int item) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 5,
          margin: EdgeInsets.all(8),
          child: Container(
            margin: EdgeInsets.only(top: 14, bottom: 10, left: 20, right: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        myposts[item].title,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      myposts[item].likes.toString(),
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.thumb_up_rounded,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      myposts[item].time,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.blueGrey),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.cyanAccent]),
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        myposts[item].category,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: myposts.length,
    );
  }
}
