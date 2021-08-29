import 'package:flutter/material.dart';

class IconWidthLabel extends StatelessWidget {
  const IconWidthLabel({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 32,
          color: color,
        ),
        SizedBox(
          height: 10,
        ),
        Text(text, style: TextStyle(color: textColor))
      ],
    );
  }
}