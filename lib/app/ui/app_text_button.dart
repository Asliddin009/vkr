import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blueAccent,
    this.height = 35,
    this.width = 350,
  });

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
