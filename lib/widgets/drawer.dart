import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 50, 16, 16),
        child: Column(
          children: [
            Text(
              'Main Menu',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ListTile(title: Text('homepage'), onTap: () {}),
            Divider(),
            ListTile(title: Text('logout'), onTap: () {}),
            Divider(),
          ],
        ),
      ),
    );
  }
}
