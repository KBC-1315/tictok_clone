import 'package:flutter/material.dart';
import 'package:tictok_clone/constants/sizes.dart';
import 'package:tictok_clone/screens/features/inbox/activity_screen.dart';
import 'package:tictok_clone/screens/features/main_navigation/main_navigation_screen.dart';
import 'package:tictok_clone/screens/features/users/user_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.blue, selectionColor: Colors.blue),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xffe9435A),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const MainNavigationScreen(),
    );
  }
}
