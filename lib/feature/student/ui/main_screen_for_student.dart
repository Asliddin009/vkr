import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/ui/app_container.dart';
import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:client_vkr/feature/student/ui/scanner_screen.dart';
import 'package:flutter/material.dart';
import '../../auth/domain/entities/user_entity/user_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.userEntity});

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          title: const Text('Главный экран'),
          actions: [
            TextButton(
                onPressed: () {
                  locator.get<AuthCubit>().logOut();
                },
                child: const Text("Выйти"))
          ],
        ),
        body: ListView(
          children: [
            AppContainer(
              height: 100,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Информация о пользователе',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        userEntity.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppContainer(
              height: 600,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                child: Column(
                  children: [
                    Text(
                      'Чтобы отметиться надо просканировать Qr code',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const ScannerScreen())));
                        },
                        text: "Открыть сканер")
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
