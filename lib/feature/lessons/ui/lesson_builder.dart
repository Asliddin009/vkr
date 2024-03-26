part of 'lesson_screen.dart';

class LessonBuilder extends StatelessWidget {
  LessonBuilder({super.key, required this.userEntity});
  final UserEntity userEntity;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
        return Scaffold(
            key: _scaffoldKey,
            drawer: AppFilterDrawer(
              state: state,
            ),
            backgroundColor: Colors.white,
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
                      _scaffoldKey.currentState?.openDrawer();
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
            body: SingleChildScrollView(
              child: AppContainer(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: state.listLesson.length * 170 + 6 * 50,
                child: Column(
                  children: getListDayContainer(state.listLesson),
                ),
              ),
            ));
      },
    );
  }

  List<Widget> getListDayContainer(List<LessonEntity> listLessons) {
    DateTime data = Utils.convertStringToDateTime(Utils.getStartDate());
    List<Widget> list = [];
    for (int i = 0; i < 6; i++) {
      final dataString = Utils.convertDateTimeToString(data);
      list.add(DayContainer(
          listLessons: listLessons
              .where((element) => element.date == dataString)
              .toList(),
          dateTimeNow: data));
      data = data.add(const Duration(days: 1));
    }
    return list;
  }
}
