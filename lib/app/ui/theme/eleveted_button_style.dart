import 'package:client_vkr/app/utils/color_hex.dart';
import 'package:flutter/material.dart';

final lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
  backgroundColor:
      MaterialStateProperty.all<Color>(HexColor.fromHex('#4B74C8')),
  fixedSize: MaterialStateProperty.all<Size>(const Size(double.maxFinite, 40)),
  shape:
      MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  )),
));

final darkElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
  fixedSize: MaterialStateProperty.all<Size>(const Size(double.maxFinite, 40)),
  shape:
      MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  )),
));
