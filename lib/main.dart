import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vyder/Authentication/login.dart';
import 'package:vyder/Authentication/otplogin.dart';
import 'package:vyder/Bot/bot.dart';
import 'package:vyder/UI/splashscreen.dart';
import 'package:vyder/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Bloom());
}

class Bloom extends StatelessWidget {
  const Bloom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloom',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(0, 0, 0, 0)),
        useMaterial3: true,
      ),
      home:  Login(),
    );
  }
}
