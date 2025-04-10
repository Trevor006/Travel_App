
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
   const IconButtonWidget({
    super.key,
    required this.iconData,
    this.size = 24,
    this.color = const Color.fromARGB(255, 195, 213, 228),

    required this.onPressed,
    this.padding = 8,
  
    this.splashRadius,
  });

  final IconData iconData;       // The icon to display
  final double size;            // Icon size (default: 24)
  final Color color;            // Icon color (default: blue)

  final VoidCallback onPressed; // Required click action
  final double padding;         // Padding around the icon (default: 8)

  final double? splashRadius;   // Controls splash effect size

 
  @override
  Widget build(BuildContext context) {
    return Material(
  
      shape: const CircleBorder(),
      child: IconButton(
        icon: Icon(iconData, size: size, color: color),
        padding: EdgeInsets.all(padding),
        splashRadius: splashRadius, // Null = default Flutter behavior
        onPressed: onPressed,
        
      ),
    );
  }
}