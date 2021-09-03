import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:missionedforum/neumorphic_widgets/neu_buttons.dart';
// import 'package:missionedforum/neumorphic_widgets/neumorphic_colors.dart';
// import 'package:missionedforum/neumorphic_widgets/neumorphic_colors.dart';
// import 'package:missionedforum/postlists.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:missionedforum/popUpMenu.dart';
// import 'package:missionedforum/postlists.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color? backgroundColor = Colors.grey[850];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularSoftButton(
                  basecolor: backgroundColor,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Colors.purpleAccent,
                  ),
                  onpress: () {
                    setState(() {
                      // backgroundColor = (backgroundColor == Colors.grey[850])
                      //     ? Color(0xFFE0E0E0)
                      //     : Colors.grey[850];
                    });
                  },
                ),
                ClayText(
                  'PArkIn',
                  size: 50,
                  spread: 100,
                  depth: 10,
                  color: backgroundColor,
                  textColor: Colors.white,
                ),
                CircularSoftButton(
                  basecolor: backgroundColor,
                  icon: Icon(
                    Icons.notifications,
                    size: 15,
                    color: Colors.cyanAccent,
                  ),
                  onpress: () => print('object'),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ClayContainer(
                borderRadius: 30,
                depth: 40,
                spread: 5,
                color: backgroundColor,
                child: TextField(
                  cursorColor: Colors.grey,
                  cursorWidth: 3,
                  cursorRadius: Radius.circular(20),
                  cursorHeight: 21,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 30),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
