import 'package:flutter/material.dart';
import 'package:meteo/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Météo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 101, 127, 243)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
            foregroundColor: Color.fromARGB(255, 225, 230, 252),
            backgroundColor: Color.fromARGB(255, 59, 20, 127),
            iconTheme: IconThemeData(color: Colors.black)),
      ),
      home: const HomePage(
        title: 'meteo',
      ),
    );
  }
}
