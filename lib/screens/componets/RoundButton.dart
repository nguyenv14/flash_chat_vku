import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onPressed});
  final String title;
  final Color color;
  final VoidCallback onPressed;
  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: widget.color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: widget.onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}
