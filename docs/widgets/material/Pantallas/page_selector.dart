import 'package:flutter/material.dart';

class PageSelectorExample extends StatelessWidget {
  const PageSelectorExample({Key? key}) : super(key: key);

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
    return DefaultTabController(
      length: _pages.length,
      child: Builder(builder: (BuildContext context) {
        final TabController controller = DefaultTabController.of(context)!;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const TabPageSelector(),
              Expanded(
                child: TabBarView(children: _pages),
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
    );
  }
}
