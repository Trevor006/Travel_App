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
  Widget build (BuildContext context) {
    style (){
      switch (imageVariant)
      {
        case 'large':
          return {"width": 500, "height": 300}; 
        case 'small':
          return {"width": 200, "height": 100};
        default:
          return {"width": 300, "height": 300};
      }
    
    } 
    Map styles = style();
    return Image.asset(imagePath, width:styles['width'], height: styles['height']);
  }
}