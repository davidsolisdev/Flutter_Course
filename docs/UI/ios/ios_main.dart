import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/global/global_bloc.dart';
import 'ios_app.dart';

class IosMain extends StatelessWidget {
  const IosMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<GlobalBloc>(create: (context) => GlobalBloc())],
      child: CupertinoApp(
        title: 'Docs Ios',
        theme: const CupertinoThemeData(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: _routes,
      ),
    );
  }
}

final Map<String, Widget Function(BuildContext)> _routes = {
  '/': responsiveScreens(const MainPageIosPhone(), const MainPageIosTablet()),
};

Widget Function(BuildContext) responsiveScreens(
  Widget pagePhone,
  Widget pageTablet,
) =>
    (context) =>
        MediaQuery.of(context).size.width < 700 ? pagePhone : pageTablet;
