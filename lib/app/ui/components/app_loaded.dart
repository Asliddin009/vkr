import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MediaQuery.sizeOf(context).width <= 600
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent.shade400,
                ),
              )
            : SpinKitDancingSquare(
                color: Colors.blueAccent.shade400,
                size: 250.0,
              ),
      ),
    );
  }
}
