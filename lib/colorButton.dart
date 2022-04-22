import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final VoidCallback onPress;
  final Color color;
  const ColorButton({required this.onPress, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        height: 30,
        width: 30,
      ),
    );
  }
}
