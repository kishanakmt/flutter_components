
import 'package:flutter/material.dart';

class ThreeDButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  ThreeDButton({required this.text, required this.onPressed});

  @override
  _ThreeDButtonState createState() => _ThreeDButtonState();
}

class _ThreeDButtonState extends State<ThreeDButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _pressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _pressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _pressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateX(_pressed ? -0.1 : 0),
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: _pressed ? Colors.grey[700] : Colors.grey[800],
            borderRadius: BorderRadius.circular(8),
            boxShadow: _pressed
                ? []
                : [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 50,
                offset: Offset(0, 6),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
