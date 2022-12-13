import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _pages = const [
    Center(child: Icon(Icons.event)),
    Center(child: Icon(Icons.home)),
    Center(child: Icon(Icons.android)),
    Center(child: Icon(Icons.alarm)),
    Center(child: Icon(Icons.face)),
    Center(child: Icon(Icons.language)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text('Home')),
      body: DefaultTabController(
        length: _pages.length,
        child: Builder(builder: (BuildContext context) {
          final TabController controller = DefaultTabController.of(context)!;

          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                const TabPageSelector(),
                Expanded(
                  child: Container(child: TabBarView(children: _pages)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!controller.indexIsChanging) {
                      controller.animateTo(_pages.length - 1);
                    }
                  },
                  child: const Text('Saltar'),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
