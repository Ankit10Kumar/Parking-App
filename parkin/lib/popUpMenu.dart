import 'package:flutter/material.dart';

class PopUpMenu extends StatefulWidget {
  PopUpMenu({Key? key}) : super(key: key);

  @override
  _PopUpMenuState createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: PopupMenuButton(
        // icon: Icon(Icons.),
        iconSize: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.only(right: 15),
        itemBuilder: (context) => [
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.home_filled, color: Colors.blueAccent),
              title: Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.people, color: Colors.blueAccent),
              title: Text(
                "Network",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.message_rounded, color: Colors.blueAccent),
              title: Text(
                "Message",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.person_rounded, color: Colors.blueAccent),
              title: Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.feedback, color: Colors.blueAccent),
              title: Text(
                "Feedback",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.blueAccent),
              title: Text(
                "Logout",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
