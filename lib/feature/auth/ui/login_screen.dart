import 'package:client_vkr/app/ui/app_snack_bar.dart';
import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/app/ui/app_text_field.dart';
import 'package:client_vkr/app/ui/constrained_box.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child: IntrinsicWidth(
              child: AppConstrainedBox(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.fitHeight,
                          height: 75,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'ИС автоматизированного отмечания посещения студентов на занятиях',
                          style: GoogleFonts.montserrat(),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        AppTextField(
                          controller: controllerLogin,
                          labelText: "Login",
                          autofillHints: const [AutofillHints.newUsername],
                        ),
                        const SizedBox(height: 16),
                        AppTextField(
                            obscureText: true,
                            controller: controllerPassword,
                            labelText: "Password",
                            autofillHints: const [AutofillHints.password]),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AppTextButton(
                            width: 400,
                            onPressed: () {
                              if (controllerLogin.text == '' ||
                                  controllerPassword.text == '') {
                                AppSnackBar.showSnackBarWithMessage(
                                    context, 'Надо ввести пароль и логин');
                                return;
                              }
                              TextInput.finishAutofillContext();
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
