part of 'lesson_screen.dart';

class LessonDoneScreen extends StatelessWidget {
  const LessonDoneScreen(
      {super.key, required this.userEntity, required this.listLessons});
  final UserEntity userEntity;
  final List<LessonEntity> listLessons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppFilterDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
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
            height: listLessons.length * 170 + 6 * 50,
            child: Column(
              children: getListDayContainer(listLessons),
            ),
          ),
        ));
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
