import 'package:flutter/material.dart';

class ModalBottomSheetW extends StatelessWidget {
  const ModalBottomSheetW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showModalBottomSheet(
          context: context, builder: (ctx) => _buildBottomSheet(ctx)),
      child: const Text('show modal bottom sheet'),
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
