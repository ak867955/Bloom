import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page4 extends StatelessWidget {
  const page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 236, 124, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: 300,
            child: Image.asset(
              "asset/72d9c15eb96d85692fec053554cc268e.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85),
            child: Text("Monstera",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          SizedBox(height: 10),
          Text(
              "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          Text("view more...", style: TextStyle()),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset("asset/a79147eab76daf0e5b418d4edd4f06ea.png"),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset("asset/c388250ae45406b49328cafbbd3bc667.png"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Buy", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(146, 215, 34, 1))),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Buy", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(146, 215, 34, 1)))
            ],
          ),
        ],
      ),
    );
  }
}
