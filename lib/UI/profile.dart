import 'package:flutter/material.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Drawer/drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: const DrawerPage(),
        appBar: appbar(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("asset/PP2.png"),
          ),
          const SizedBox(height: 10),
          const Text("Tony",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )),
          const SizedBox(height: 10),
          const Text("Product Manager at Google, San Francisco"),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            width: 350,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text("1.3 Follwers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("1.2 Following",style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Follow")),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: const Text("Articles")),
              TextButton(onPressed: () {}, child: const Text("Questions")),
            ],
          ),
          articles("asset/Depth 4, Frame 0.png",
              "The truth about being a \nPM in tech", "Lilian Dang",context)
        ],
      ),
    );
  }
}
