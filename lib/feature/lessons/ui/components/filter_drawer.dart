import 'package:client_vkr/app/ui/components/app_snack_bar.dart';
import 'package:client_vkr/app/utils/utils.dart';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';

class AppFilterDrawer extends StatelessWidget {
  const AppFilterDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Фильтры пары"),
            const Divider(),
            TextButton(
              onPressed: () async {
                final date = await showDatePickerDialog(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 4,
                      left: MediaQuery.of(context).size.width / 4,
                      top: MediaQuery.of(context).size.height / 5,
                      bottom: MediaQuery.of(context).size.height / 5),
                  context: context,
                  minDate: DateTime(2021, 1, 1),
                  maxDate: DateTime(2025, 12, 31),
                  initialDate: DateTime.now(),
                );
                //todo emit startData
                // ignore: use_build_context_synchronously
                AppSnackBar.showSnackBarSuccesful(context, date.toString());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('стартовая дата'),
                  Text(Utils.getStartDate())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
