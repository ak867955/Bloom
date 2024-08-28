import 'package:flutter/material.dart';
import 'package:vyder/Authentication/view.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            settingtiles(
                title: "My profile", icon: const Icon(Icons.arrow_forward_ios)),
            const Text("Content",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            settingtiles(
                title: "My interests",
                icon: const Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}
