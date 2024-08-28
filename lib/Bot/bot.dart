import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:vyder/UI/discover.dart';
import 'package:vyder/UI/homepage.dart';
import 'package:vyder/UI/library.dart';
import 'package:vyder/UI/profile.dart';

class Bot extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _BotState createState() => _BotState();
}

class _BotState extends State<Bot> {
  var _currentIndex = 0;

  final List<Widget> _page = [
    const HomePage(),
    const DiscoverPage(),
    const LibraryPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Bot.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: _page[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.explore),
              title: const Text("Discover"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.library_books),
              title: const Text("Library"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
