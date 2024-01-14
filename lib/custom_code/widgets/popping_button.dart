// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom widgets

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class PoppingButton extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;

  const PoppingButton({
    Key? key,
    this.width = 200,
    this.height = 50,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _PoppingButtonState createState() => _PoppingButtonState();
}

class _PoppingButtonState extends State<PoppingButton> {
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          width: widget.width,
          height: widget.height,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: _isPressed
                ? Colors.blue.shade700
                : _isHovered
                    ? Colors.blue.shade500
                    : Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
