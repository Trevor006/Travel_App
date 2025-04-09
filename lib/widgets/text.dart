import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.displayText,
    required this.styleVariant,
  });

  final String displayText;
  final String styleVariant;

  @override
  Widget build(BuildContext context) {
    style() {
      switch (styleVariant) {
        case 'bold':
          return TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          );
        case 'notBold':
          return TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          );
        case 'light':
          return TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          );
        default:
          return TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          );
      }
    }

    return Text(displayText, style: style());
  }
}

