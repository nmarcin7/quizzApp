import 'package:flutter/material.dart';
import 'package:newquizzappp/controllers/user_controller.dart';
import 'package:newquizzappp/views/quizz_page.dart';
import 'package:newquizzappp/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => UserController(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'countryPage': (context) => QuizzPage(),
        'home': (context) => HomePage(),
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          backgroundColor: Color(0xFF617D8A),
        ),
        scaffoldBackgroundColor: Color(0xFFF1F1F1),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
