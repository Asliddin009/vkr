import 'package:flutter/material.dart';
import '../../feature/auth/ui/components/auth_builder.dart';
import '../../feature/auth/ui/login_screen.dart';
import '../../feature/main/ui/main_screen.dart';
import 'app_loaded.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
        isWaiting: (context) => const AppLoader(),
        isNotAuthorized: (context) => LoginScreen(),
        isAuthorized: (context, value, child) => MainScreen(userEntity: value));
  }
}
