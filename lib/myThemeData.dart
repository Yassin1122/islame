import 'package:flutter/material.dart';

import 'core/app-color.dart';

class MyThemeData{
  static final ThemeData myTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      selectedItemColor:AppColor.white,
      unselectedItemColor: AppColor.black,

    )
  );
}