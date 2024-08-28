import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page6 extends StatelessWidget {
  const page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 236, 124, 1),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "asset/04d69615ca39e714f450290eb3fc12ca.png",
              height: 120,
              // width: 120
            ),
            SizedBox(height: 0),
            Text('Add Plants',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            Container(
              height: 600,
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
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "Plant name"),
                    ),
                    width: 280,
                  ),
                  Text("about"),
                  SizedBox(
                    child: TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "about"),
                    ),
                    width: 280,
                  ),
                  Text("Image"),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(231, 249, 218, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: "Image"),
                    ),
                    width: 280,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Add", style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(146, 215, 34, 1),
                        minimumSize: Size(200, 50)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
