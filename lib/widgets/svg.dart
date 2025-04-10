// const String assetName = '../assets/icons/beach.svg';
//                   final Widget svg = SvgPicture.asset(
//                     assetName,
//                     semanticsLabel: 'Dart Logo',
//                   );

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgButtonWidget extends StatelessWidget {
  const SvgButtonWidget({super.key, required this.assetPath});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      semanticsLabel: 'Icon',
      width: 24,
      height: 24,
    );
  }
}
