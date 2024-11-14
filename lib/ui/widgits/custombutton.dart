import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final void Function() onPressed;
  final double iconSize;
  final double textSize;

  // Constructor
  CustomButton({
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.iconSize = 24.0,
    this.textSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: const Size(70, 35),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
        textStyle: TextStyle(fontSize: textSize, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: iconSize, color: Colors.white),
          const SizedBox(width: 5),
          Text(text, style: TextStyle(fontSize: textSize, color: Colors.white)),
        ],
      ),
    );
  }
}
