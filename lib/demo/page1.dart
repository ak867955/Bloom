import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 236, 124, 1),
      body: Center(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                  "asset/pngtree-green-halo-glow-light-effect-blur-background-image_556769.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Center(
                  child: Positioned(
                      child: Image.asset(
                          "asset/04d69615ca39e714f450290eb3fc12ca.png",
                          height: 120,
                          width: 120)),
                ),
              )
            ]),
            Text("Welcome to GreenHub"),
            SizedBox(height: 10),
            Text("LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 10),
            Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text("Email"),
                  SizedBox(height: 20),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "Enter your email"),
                    ),
                    width: 280,
                  ),
                  SizedBox(height: 20),
                  Text("Password"),
                  SizedBox(height: 10),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "Enter your password"),
                    ),
                    width: 280,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("LOGIN", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(146, 215, 34, 1),
                        minimumSize: Size(200, 50)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Create new Account Sign Up",
                          style: TextStyle(color: Colors.black)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
