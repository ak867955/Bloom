import 'package:flutter/material.dart';
import 'package:vyder/Authentication/logout.dart';
import 'package:vyder/UI/profile.dart';
import 'package:vyder/settings.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
          child: Column(
        children: [
          const Text(
            "Tony , 25",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 15),
          // ListTile(
          //   onTap: () => Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => const ProfilePage())),
          //   leading: const Icon(Icons.person),
          //   title: const Text("My Profile"),
          //   tileColor: Colors.grey[200],
          // ),
          // ListTile(onTap: () => Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => ())),
          //   leading: const Icon(Icons.notifications_none),
          //   title: const Text("Notifications"),
          //   tileColor: Colors.grey[200],
          // ),
          ListTile(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings())),
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            tileColor: Colors.grey[200],
          ),
          const SizedBox(height: 15),
          // ListTile(onTap: () => Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => ())),
          //   leading: const Icon(Icons.help_outline),
          //   title: const Text("Help Center"),
          //   tileColor: Colors.grey[200],
          // ),
          ListTile(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Logout())),
            leading: const Icon(Icons.logout),
            title: const Text("Log Out"),
            tileColor: Colors.grey[200],
          ),
        ],
      )),
    );
  }
}
