import 'package:flutter/material.dart';
import 'package:medical/pages/home_page.dart';
import 'package:medical/pages/location_page.dart';
import 'package:medical/pages/servies_page.dart';
import 'package:medical/pages/starter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.light()
            .copyWith(primary: Color.fromARGB(255, 06, 19, 120)),
        // primaryColor: Color.fromARGB(255, 06, 19, 120)
      ),
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: "/main",
      routes: {
        "/": (context) => StarterPage(),
        "/home": (context) => HomePages(),
        "/main": (context) => StarterPage(),
        "/map": (context) => MapScreen(),
        "/service": (context) => Services(),
      },
    );
  }
}
