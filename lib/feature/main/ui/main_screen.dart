import 'package:flutter/material.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Профиль для студентов')),
    );
  }
}
