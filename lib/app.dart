import "package:flutter/material.dart";
import 'package:flutter_course/bloc/example/example_bloc.dart';
import 'package:flutter_course/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = ExampleBloc();

    return BlocProvider(
      create: (context) => bloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
