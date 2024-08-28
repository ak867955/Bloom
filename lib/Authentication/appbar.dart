import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
      return AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  // print('lllllllllllllllllllllllllllll');
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu));
          },
        ),
        title: const Text("Bloogfgfgfgfm"),
        // actions: const [Icon(Icons.search)],
      );
  }
}