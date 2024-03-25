import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/domain/entities/error_entity/error_entity.dart';
import 'package:client_vkr/app/ui/components/app_container.dart';
import 'package:client_vkr/app/ui/components/app_loaded.dart';
import 'package:client_vkr/app/ui/components/app_snack_bar.dart';
import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/ui/components/day_container.dart';
import 'package:client_vkr/feature/lessons/ui/components/filter_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'components/lesson_builder.dart';
part 'lesson_done_screen.dart';

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
    locator.get<LessonCubit>().getLessons();
  }

  @override
  Widget build(BuildContext context) {
    return LessonBuilder(userEntity: widget.userEntity);
  }
}
