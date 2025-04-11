import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imagePath,
    required this.imageVariant,
  });

  final String imagePath;
  final String imageVariant;

  @override
  Widget build(BuildContext context) {
    style() {
      switch (imageVariant) {
        case 'large':
          return {"width": 600.0, "height": 500.0};
        case 'small':
          return {"width": 200.0, "height": 100.0};
        default:
          return {"width": 300.0, "height": 300.0};
      }
    }
    
    Map styles = style();
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child:  Image.asset(
      imagePath,
      width: styles['width'],
      height: styles['height'],
      fit: BoxFit.cover,
    ),
    );
   
  }
}
