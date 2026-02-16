import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islame/home/home-screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'myThemeData.dart';


  void main() {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding); // Removing this because we aren't waiting for anything specific yet
    
    runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute:HomeScreen.routeName,
      routes:{

        HomeScreen.routeName:(context)=>HomeScreen()
      },
      theme:MyThemeData.myTheme,
      themeMode:ThemeMode.dark,
    );

  }
}
