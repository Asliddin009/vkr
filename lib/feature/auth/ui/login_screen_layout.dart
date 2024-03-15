import 'package:client_vkr/app/ui/app_snack_bar.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/app_text_button.dart';
import 'components/app_text_field.dart';

part 'screens/login_screen_mobile.dart';
part 'screens/login_screen_web.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginScreenMobile();
  }
}
