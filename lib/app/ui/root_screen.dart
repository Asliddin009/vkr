import 'package:client_vkr/feature/lessons/ui/lesson_screen.dart';
import 'package:flutter/material.dart';
import '../../feature/auth/ui/components/auth_builder.dart';
import '../../feature/auth/ui/login_screen.dart';
import '../../feature/student/ui/main_screen_for_student.dart';
import 'app_loaded.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
        isWaiting: (context) => const AppLoader(),
        isNotAuthorized: (context) => LoginScreen(),
        isAuthorized: (context, userEntity, child) => userEntity.isTeacher
            ? LessonScreen(
                userEntity: userEntity,
              )
            : MainScreen(userEntity: userEntity));
  }
}
