

import 'package:flutter/material.dart';

class _Button extends StatelessWidget
    {
  const _Button({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(title),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: const Color.fromARGB(137, 37, 34, 34),
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
     
    );
  }
}