import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/global/global_bloc.dart';

class MacOSMain extends StatelessWidget {
  const MacOSMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: MacosApp(
        title: 'Docs MacOS',
        //themeMode: appTheme.mode,
        theme: MacosThemeData.light(),
        darkTheme: MacosThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: _routes,
      ),
    );
  }
}

final Map<String, Widget Function(BuildContext)> _routes = {
  '/': (context) => const MainPageMacOS(),
};
