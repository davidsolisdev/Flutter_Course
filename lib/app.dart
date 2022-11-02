import "package:flutter/material.dart";
import 'package:flutter_course/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
