import 'dart:async';

import 'package:flutter/material.dart';

class TimerTextWidget extends StatefulWidget {
  const TimerTextWidget({super.key});

  @override
  State<TimerTextWidget> createState() => _TimerTextWidgetState();
}

class _TimerTextWidgetState extends State<TimerTextWidget> {
  int time = 5;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (time == 0) {
          time = 5;
        }
        time--;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text('до обновления Qr-coda $time секунд');
  }
}
