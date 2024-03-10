import 'package:flutter/material.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("MainScreen"),
          actions: const [],
        ),
        body: const Center(
          child: Text('das'),
        ));
  }
}
