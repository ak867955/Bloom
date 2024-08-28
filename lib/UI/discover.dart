import 'package:flutter/material.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Drawer/drawer.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        appBar: appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: const Color.fromRGBO(245, 240, 229, 1),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                followperson("asset/pp3.png"),
                followperson("asset/pp4.png"),
              ],
            ),
            const SizedBox(height: 20),
            // ListView.separated(itemBuilder: ListView.builder(itemBuilder:t ), separatorBuilder: separatorBuilder, itemCount: 5)
            articlesdes(
                "asset/Depth 4, Frame 1.png",
                "What's the \naverage cost of \na wedding in 2022?",
                "7.8K views - 4 months ago"),
            articlesdes(
                "asset/new.png", "How to get your dream job", "By Bloom")
          ],
        ),
      ),
    );
  }
}
