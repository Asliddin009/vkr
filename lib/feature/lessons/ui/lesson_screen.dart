import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/ui/lesson_builder.dart';
import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key, required this.userEntity});
  final UserEntity userEntity;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  void initState() {
    super.initState();
    locator.get<LessonCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    return LessonBuilder(userEntity: widget.userEntity);
  }
}
