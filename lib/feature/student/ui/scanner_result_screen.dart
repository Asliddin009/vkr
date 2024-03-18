import 'package:client_vkr/app/ui/app_container.dart';
import 'package:client_vkr/app/ui/app_loaded.dart';
import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/feature/student/domain/cubit/qr_code_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCodeCubit, QrCodeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const AppLoader(),
          loading: () => const AppLoader(),
          done: () => Scaffold(
            body: Center(
              child: AppContainer(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 7,
                  right: MediaQuery.of(context).size.width / 7,
                ),
                height: 300,
                child: Column(
                  children: [
                    Text(
                      "Вы успешно отметились на паре",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'можете закрыть это окно',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.check_rounded,
                        size: 150,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 40,
                          width: 130,
                          child: AppTextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              text: ('Вернуться')),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          error: (String message) => const Scaffold(),
        );
      },
    );
  }
}
