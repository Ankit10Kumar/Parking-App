import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

import 'neumorph_widgets/neu_buttons.dart';

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
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Colors.purpleAccent,
                  ),
                  onpress: () {},
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
                  icon: const Icon(
                    Icons.notifications,
                    size: 15,
                    color: Colors.cyanAccent,
                  ),
                  onpress: () {},
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ClayContainer(
                borderRadius: 30,
                depth: 40,
                spread: 5,
                color: backgroundColor,
                child: const TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.grey,
                  cursorWidth: 3,
                  cursorRadius: Radius.circular(20),
                  cursorHeight: 21,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white38),
                      hintText: ' Search Parkign nearby you',
                      contentPadding: EdgeInsets.only(left: 30, right: 30),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CircularSoftButton(
                    icon: Container(),
                    onpress: () => {},
                    basecolor: backgroundColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
