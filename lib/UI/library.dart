import 'package:flutter/material.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Drawer/drawer.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: const DrawerPage(),
        appBar: appbar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: const Text("Articles")),
              TextButton(onPressed: () {}, child: const Text("Questions")),
            ],
          ),
          const SizedBox(height: 20),
          searchfield(),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The Psychology of Money",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("by: Daniel G."),
                ],
              ),
              Text("Apr 11, 2023")
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The Psychology of Money",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("by: Daniel G."),
                ],
              ),
              Text("Apr 11, 2023")
            ],
          )
        ],
      ),
    );
  }
}
