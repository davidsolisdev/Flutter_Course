import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/global/global_bloc.dart';

class WindowsMain extends StatelessWidget {
  const WindowsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: FluentApp(
        title: 'Docs Windows',
        theme: ThemeData(activeColor: Colors.blue),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: _routes,
      ),
    );
  }
}

final Map<String, Widget Function(BuildContext)> _routes = {
  '/': (context) => const MainPageWindows(),
};
