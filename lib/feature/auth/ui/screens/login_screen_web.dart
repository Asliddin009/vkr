part of '../login_screen_layout.dart';

class LoginScreenWeb extends StatelessWidget {
  LoginScreenWeb({super.key});

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
                      autofocus: true,
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
                        onPressed: () {
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
    );
  }

  void _onTapToSignIn(AuthCubit authCubit) => authCubit.signIn(
        username: controllerLogin.text,
        password: controllerPassword.text,
      );
}
