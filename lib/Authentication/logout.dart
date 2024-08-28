import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Bloom",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40))),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("Are you sure you want to logout ?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 15),
              const Text("You can always log back in later",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(134, 231, 24, 1),
                    minimumSize: const Size(200, 55),
                  ),
                  child: const Text("Log Out",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () {},
                  child: const Text("Cancel",
                      style: TextStyle(color: Colors.black))),
            ],
          ),
        ),
      ),
    );
  }
}
