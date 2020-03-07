import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final primaryMaterialTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    bottomAppBarTheme: BottomAppBarTheme(elevation: 0),
    iconTheme: IconThemeData(color: Colors.grey[400]));

//  ..textTheme.apply(fontFamily: 'Open Sans');
final darkMaterialTheme = ThemeData.dark();
// ..textTheme.apply(fontFamily: 'Open Sans');
//For chat_view
final Color lprimaryColor = const Color(0xffEE4B45);
final Color lsecondaryColor = const Color(0xffFFAA00);
final Color lbasicDarkColor = const Color(0xff222B45);
final Color lbasicGreyColor = const Color(0xff8F9BB3);
final Color lbackgroundColor = const Color(0xffF7F9FC);
final Color dprimaryColor = const Color(0xffEE4B45);
final Color dsecondaryColor = const Color(0xffFFAA00);
final Color dbasicDarkColor = const Color(0xff222B45);
final Color dbasicGreyColor = const Color(0xff8F9BB3);
final Color dbackgroundColor = const Color(0xff222B45);




/* final primaryCupertinoTheme = CupertinoThemeData(
  primaryColor: Colors.grey,
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,



  textTheme: CupertinoTextThemeData(
    primaryColor: Colors.grey,
    navTitleTextStyle: TextStyle(
      color: Colors.grey,
    ),
    tabLabelTextStyle: TextStyle(
      color: Colors.grey,
    ),
  ),
);

final darkCupertinoTheme = CupertinoThemeData(
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black87,
  barBackgroundColor: Colors.black12,
  brightness: Brightness.dark,
  textTheme: CupertinoTextThemeData(
    primaryColor: Colors.white,
    navTitleTextStyle: TextStyle(
      color: Colors.blue,
    ),
    tabLabelTextStyle: TextStyle(
      color: Colors.blue,
    ),
  ),
); */
