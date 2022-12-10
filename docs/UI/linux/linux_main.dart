import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'linux_app.dart';
import '../../bloc/global/global_bloc.dart';

class LinuxMain extends StatelessWidget {
  const LinuxMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: MaterialApp(
        title: 'Docs Linux',
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: _routes,
      ),
    );
  }
}

final Map<String, Widget Function(BuildContext)> _routes = {
  '/': (context) => const MainPageLinux(),
};
