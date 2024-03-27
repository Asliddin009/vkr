import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/domain/entities/error_entity/error_entity.dart';
import 'package:client_vkr/app/ui/components/app_loaded.dart';
import 'package:client_vkr/app/ui/components/app_snack_bar.dart';
import 'package:client_vkr/app/ui/ui_utils.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/ui/components/filter_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'lesson_web.dart';
part 'lesson_mobile.dart';

class LessonBuilder extends StatelessWidget {
  LessonBuilder({super.key, required this.userEntity});
  final UserEntity userEntity;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LessonCubit, LessonState>(
      listener: (context, state) {
        if (state.asyncSnapshot.hasError) {
          AppSnackBar.showSnackBarWithError(context,
              ErrorEntity(message: state.asyncSnapshot.error.toString()));
        }
      },
      builder: (context, state) {
        if (state.asyncSnapshot == const AsyncSnapshot.waiting()) {
          return const AppLoader();
        }
        return UtilsUi.isMobileDevice(context)
            ? LessonScreenMobile(
                scaffoldKey: scaffoldKey,
                state: state,
                userEntity: userEntity,
              )
            : Scaffold(
                key: scaffoldKey,
                backgroundColor: Colors.white,
                drawer: AppFilterDrawer(
                  state: state,
                ),
                appBar: AppBar(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 15,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  title: const Text('Главный экран'),
                  actions: [
                    Text(
                      userEntity.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    TextButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        child: const Text('Фильтры')),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          locator.get<AuthCubit>().logOut();
                        },
                        child: const Text("Выйти")),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: UtilsUi.getListDayContainer(
                          state.listLesson, state.filterEntity!),
                    ),
                  ),
                ));
      },
    );
  }
}
