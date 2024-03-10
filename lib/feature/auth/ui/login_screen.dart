import 'package:client_vkr/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/app_text_button.dart';
import 'components/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Form(
          key: formKey,
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "assets/images/logo.png",
                    fit: BoxFit.fitHeight,
                    height: 75,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'ИС автоматизированного отмечания посещения студентов на занятиях',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  AppTextField(controller: controllerLogin, labelText: "Login"),
                  const SizedBox(height: 16),
                  AppTextField(
                    obscureText: true,
                    controller: controllerPassword,
                    labelText: "Password",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppTextButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() == true) {
                          _onTapToSignIn(context.read<AuthCubit>());
                        }
                      },
                      text: "Войти",
                    ),
                  ),
                  const SizedBox(height: 200),
                  Container(
                    width: double.infinity,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.2)),
                    child: const Text(
                      "© ФГБОУ ВО Югорский государственный университет.",
                      style: TextStyle(color: Colors.black45),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapToSignIn(AuthCubit authCubit) => authCubit.signIn(
        username: controllerLogin.text,
        password: controllerPassword.text,
      );
}
