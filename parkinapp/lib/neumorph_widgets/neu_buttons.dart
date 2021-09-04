import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class CircularSoftButton extends StatefulWidget {
  final double radius;
  final Widget icon;
  final double? height;
  final double? width;
  final EdgeInsets padding;
  final VoidCallback onpress;
  final Color? basecolor;

  const CircularSoftButton(
      {Key? key,
      this.radius = 50,
      this.height,
      this.width,
      required this.icon,
      required this.onpress,
      required this.basecolor,
      this.padding = const EdgeInsets.all(12.0)})
      : super(key: key);

  @override
  State<CircularSoftButton> createState() => _CircularSoftButtonState();
}

class _CircularSoftButtonState extends State<CircularSoftButton> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
      child: Listener(
        onPointerUp: _onPointerUp,
        onPointerDown: _onPointerDown,
        child: Container(
          margin: EdgeInsets.all(widget.radius / 4),
          child: ClayAnimatedContainer(
            height: widget.height,
            width: widget.width,
            curve: Curves.bounceInOut,
            color: widget.basecolor,
            duration: const Duration(milliseconds: 200),
            emboss: _isPressed,
            borderRadius: widget.radius,
            curveType: _isPressed ? CurveType.convex : CurveType.concave,
            child: Padding(
              padding: widget.padding,
              child: widget.icon,
            ),
          ),
        ),
      ),
    );
  }
}
