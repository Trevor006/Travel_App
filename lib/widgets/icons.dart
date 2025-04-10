import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      child: IconButton(
        icon: Icon(iconData),
        color: Colors.black87,
        iconSize: 30, // Default size of the icon
        padding: EdgeInsets.all(8),
        splashRadius: 20,
        onPressed: () {},
      ),
    );
  }
}
