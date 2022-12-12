import 'package:flutter/material.dart';

class BottomSheetW extends StatelessWidget {
  BottomSheetW({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            _scaffoldKey.currentState
                ?.showBottomSheet((ctx) => _buildBottomSheet(ctx));
          }),
          child: const Text('Alerta'),
        ),
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(),
        child: ListView(
          children: <Widget>[
            const ListTile(title: Text('Bottom sheet')),
            const TextField(
              keyboardType: TextInputType.number,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text('Save and close'),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
