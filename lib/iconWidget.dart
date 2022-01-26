import 'package:flutter/material.dart';
import 'constants.dart';

class Icon_widget extends StatelessWidget {
  Icon_widget({required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: label,
        )
      ],
    );
  }
}
