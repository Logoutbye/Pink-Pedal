import 'package:flutter/material.dart';
import 'package:liveproject/utilis/theme/themecolors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor; // New property for custom text color
  TextStyle? textStyle;
  Size? size;

  CustomElevatedButton({super.key, 
    required this.text,
    required this.onPressed,
    this.color = Themecolor.elvatedButton,
    this.textColor = Colors.white, // Default text color
    this.textStyle,
    this.size = const Size(327.0, 56.0),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: size,
      ),
      child: Text(
        text,
        style: textStyle != null
            ? textStyle!.copyWith(color: textColor) // Apply custom text color
            : Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor),
      ),
    );
  }
}
