part of 'lesson_screen.dart';

class LessonDoneScreen extends StatelessWidget {
  const LessonDoneScreen(
      {super.key, required this.userEntity, required this.listLessons});
  final UserEntity userEntity;
  final List<LessonEntity> listLessons;
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
                      'Информация о Преподавателе',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        userEntity.name ?? "test",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppContainer(
              height: listLessons.length * 170 + 6 * 50,
              color: Colors.grey.shade300,
              child: Column(
                children: getListDayContainer(listLessons),
              ),
            ),
          ],
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
