
import 'package:flutter/material.dart';
import 'package:foodu_assignment4/screens/home_menu_screen.dart';
import 'package:foodu_assignment4/screens/splash_screen.dart';
import 'package:foodu_assignment4/screens/welcome_screen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  bool isDarkTheme = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
        appBarTheme: AppBarTheme(color: (isDarkTheme ? Colors.black : Colors.white),
            iconTheme: IconThemeData(color: (isDarkTheme) ? Colors.white : Colors.black )),
        iconTheme: IconThemeData(color:(isDarkTheme) ? Colors.white : Colors.grey),
        primaryColor: isDarkTheme ? Colors.white : Colors.black,
        cardColor: isDarkTheme ? Colors.grey.shade900 : Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}