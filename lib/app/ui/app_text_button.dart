import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blueAccent,
  });

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        //     fixedSize: MaterialStateProperty.all<Size>(
        //         const Size(double.maxFinite, 40)),
        //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //         RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(5.0),
        //     ))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
