import 'package:flutter/material.dart';

class ButtomNavigationBarW extends StatelessWidget {
  const ButtomNavigationBarW(
      {Key? key, required this.indexTab, required this.changeCurrentTab})
      : super(key: key);

  final int indexTab;

  final void Function(int currentTab) changeCurrentTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexTab,
      type: BottomNavigationBarType
          .fixed, // OPCIONAL, cuado son más de 3 opciones
      elevation: 8.0,
      backgroundColor: Colors.blue[900],
      iconSize: 24.0,
      // * mostrar labels
      showSelectedLabels: true,
      showUnselectedLabels: true,
      // * font size label
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      // * color icons
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: (int newIndex) => changeCurrentTab(newIndex),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.lock),
          label: 'Login',
          backgroundColor: Colors.white,
          tooltip: 'login',
          activeIcon: Icon(Icons.access_alarm),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Consulta',
          backgroundColor: Colors.white,
          tooltip: 'consulta',
          activeIcon: Icon(Icons.access_alarm),
        ),
      ],
      //selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.white),
      //unselectedLabelStyle: const TextStyle(fontSize: 10, color: Colors.grey),
      //selectedIconTheme: const IconThemeData(color: Colors.white, size: 18),
      //unselectedIconTheme: const IconThemeData(color: Colors.grey, size: 18),
    );
  }
}
