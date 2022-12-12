import 'package:flutter/material.dart';

class TabBarW extends StatelessWidget {
  const TabBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('appbar title'),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            tabs: _tabs, //ítems de la barra
            physics: const BouncingScrollPhysics(),
            isScrollable: false,
            padding: const EdgeInsets.all(1),
            labelColor: Colors.black, // color del icono y nombre
            //labelPadding: const EdgeInsets.all(1.0),
            //labelStyle: const TextStyle(),
            unselectedLabelColor: Colors.grey,
            //unselectedLabelStyle: const TextStyle(),
            indicatorWeight: 2.0,
            indicatorColor: Colors.blue, //linea de abajo de la seleccionada
            indicatorSize: TabBarIndicatorSize.tab, // TabBarIndicatorSize.label
            indicatorPadding: const EdgeInsets.only(top: 1),
            onTap: (value) {},
          ),
        ),
        body: TabBarView(children: _pages),
      ),
    );
  }

  final _tabs = const <Tab>[
    //tabs arriba
    Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
    Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
    Tab(icon: Icon(Icons.forum), text: 'Tab3'),
  ];

  final _pages = const <Widget>[
    // páginas a las que conducen los tabs
    Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
    Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
  ];
}
