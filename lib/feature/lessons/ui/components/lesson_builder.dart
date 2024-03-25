part of '../lesson_screen.dart';

class LessonBuilder extends StatelessWidget {
  const LessonBuilder({super.key, required this.userEntity});
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LessonCubit, LessonState>(
      listener: (context, state) {
        state.whenOrNull(
            error: (message) => AppSnackBar.showSnackBarWithError(
                context, ErrorEntity(message: message)));
      },
      builder: (context, state) {
        return state.whenOrNull(
              loading: () => const AppLoader(),
              done: (listLessons, test) => LessonDoneScreen(
                userEntity: userEntity,
                listLessons: listLessons,
              ),
            ) ??
            const Scaffold();
      },
    );
  }
}
