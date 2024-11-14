import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String leftText;
  final String centerText;
  final String rightText;
  final Color? backgroundColor;
  final TextStyle? leftTextStyle;
  final TextStyle? centerTextStyle;
  final TextStyle? rightTextStyle;

  // Constructor with optional parameters
  CustomAppBar({
    required this.leftText,
    required this.centerText,
    required this.rightText,
    this.backgroundColor,
    this.leftTextStyle,
    this.centerTextStyle,
    this.rightTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.blue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: leftTextStyle ??
                const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
          ),
          Text(
            centerText,
            style: centerTextStyle ??
                const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
          ),
          Text(
            rightText,
            style: rightTextStyle ??
                const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
