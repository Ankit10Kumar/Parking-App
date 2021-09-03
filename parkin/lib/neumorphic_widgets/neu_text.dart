import 'package:flutter/material.dart';

import 'neumorphic_colors.dart';

class NeuText extends StatelessWidget {
  final String detail;
  final double size;
  const NeuText({Key? key, required this.detail, this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        detail,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size,
            shadows: [
              Shadow(
                  offset: Offset(8, 6), color: Colors.black38, blurRadius: 10),
              Shadow(
                  offset: Offset(-8, -6),
                  color: Colors.white, //.withOpacity(0.85),
                  blurRadius: 10)
            ],
            color: textColor),
      ),
    );
  }
}
