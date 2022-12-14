import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'android_app.dart';
import '../../bloc/global/global_bloc.dart';

class AndroidMain extends StatelessWidget {
  const AndroidMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: MaterialApp(
        title: 'Docs Android',
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: _routes,
      ),
    );
  }
}

final Map<String, Widget Function(BuildContext)> _routes = {
  '/': responsiveScreens(
    const MainPageAndroidPhone(),
    const MainPageAndroidTablet(),
  ),
};

Widget Function(BuildContext) responsiveScreens(
  Widget pagePhone,
  Widget pageTablet,
) =>
    (context) =>
        MediaQuery.of(context).size.width < 700 ? pagePhone : pageTablet;
