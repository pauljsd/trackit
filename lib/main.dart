import 'package:flutter/material.dart';
import 'package:trackit/features/homepage/homepage.dart';
import 'package:trackit/navigation_menu.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Colors.blue, // Set the default AppBar color in the theme
        ),
        useMaterial3: true,
      ),
      // home: HomePage(),
      home: NavigationMenu(),
    );
  }
}
