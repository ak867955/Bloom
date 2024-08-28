import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 236, 124, 1),
      body: Center(
        child: Column(
          children: [
            Image.asset("asset/04d69615ca39e714f450290eb3fc12ca.png",
                height: 120, width: 120),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Image.asset("asset/72d9c15eb96d85692fec053554cc268e.png"),
                      SizedBox(height: 10),
                      Text("Monstera",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Image.asset("asset/356c4530739b24bcf41edfefc733f5eb.png"),
                      SizedBox(height: 10),
                      Text("Pothos",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Image.asset("asset/a79147eab76daf0e5b418d4edd4f06ea.png"),
                      SizedBox(height: 10),
                      Text("Parlor palm",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Image.asset("asset/c388250ae45406b49328cafbbd3bc667.png"),
                      SizedBox(height: 10),
                      Text("Aloe",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
