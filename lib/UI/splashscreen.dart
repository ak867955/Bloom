import 'package:flutter/material.dart';
import 'package:vyder/Authentication/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    gotomain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/Depth 4, Frame 0.png",
              height: 400, width: double.infinity, fit: BoxFit.cover),
          const SizedBox(height: 10),
          const Text("BLOOM",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
            'Share. Learn. Create. Connect.',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          const SizedBox(height: 10),
          Text(
            'The community for creative minds',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Future<void> gotomain() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }
}
