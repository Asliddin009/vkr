part of 'lesson_builder.dart';

class LessonScreenMobile extends StatelessWidget {
  const LessonScreenMobile(
      {super.key,
      required this.scaffoldKey,
      required this.state,
      required this.userEntity});
  final GlobalKey<ScaffoldState> scaffoldKey;
  final LessonState state;
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          actions: [
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
  }
}
