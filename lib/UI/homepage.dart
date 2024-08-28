import 'package:flutter/material.dart';
import 'package:vyder/Authentication/appbar.dart';
import 'package:vyder/Authentication/chip.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Drawer/drawer.dart';
import 'package:vyder/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        appBar: appbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  chips(label: const Text("For You")),
                  chips(label: const Text("Tech")),
                  chips(label: const Text("Productivity")),
                  chips(label: const Text("Life")),
                ],
              ),
              const SizedBox(height: 10),
              textform(
                  hinttext: "Search",
                  icon: const Icon(Icons.search),
                  controller: null),
              const SizedBox(height: 10),
              articles(
                  "asset/PP.png",
                  "Katherine J.  What is the best \nway to go about job hunting?",
                  "I've been trying to \nswitch companies and \nI'm not getting any traction. Any tips?",
                  context),
              const SizedBox(height: 10),
              articles(
                  "asset/PP2.png",
                  "What is the best way\nto go about job hunting?",
                  "Just listed this handmade pottery,\n would love to hear your thoughts!",
                  context),
              const SizedBox(height: 80),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(134, 231, 24, 1),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Post()));
          },
          child: const Text("Post"),
        ));
  }
}
