import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:client_vkr/feature/student/domain/cubit/qr_code_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client_vkr/app/ui/root_screen.dart';
import 'package:client_vkr/app/ui/theme/light_theme.dart';

import '../../feature/auth/domain/auth_bloc/auth_cubit.dart';
import '../di/init_di.dart';
import '../domain/app_builder.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return _GlobalProviders(
      child: MaterialApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: const RootScreen(),
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator.get<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => locator.get<LessonCubit>(),
        ),
        BlocProvider(
          create: (context) => locator.get<QrCodeCubit>(),
        ),
      ],
      child: child,
    );
  }
}
