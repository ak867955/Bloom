import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 236, 124, 1),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset(
                      "asset/04d69615ca39e714f450290eb3fc12ca.png",
                      height: 120,
                      width: 120),
                ),
                Positioned(child: Text("SIGNUP"))
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text("Name"),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "Enter your name"),
                    ),
                    width: 280,
                  ),
                  Text("Mobile number"),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1),
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "Enter your Mobile number"),
                    ),
                    width: 280,
                  ),
                  Text("Email"),
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
                  Text("Password"),
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
                    child:
                        Text("SIGNUP", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(146, 215, 34, 1),
                        minimumSize: Size(200, 50)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Back to login",
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
