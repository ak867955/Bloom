import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page5 extends StatelessWidget {
  const page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 236, 124, 1),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
              SizedBox(height: 15),
          SizedBox(
            child: Container(
              height: 80,
              width: 500,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("asset/356c4530739b24bcf41edfefc733f5eb.png"),
                          Text("Monstera")
                        ],
                      ),
                      IconButton(onPressed: (){}, icon:Icon(Icons.delete_outline))

                    ],
                  ),
            ),
            width: 350,
          ),
          SizedBox(height: 15),
          SizedBox(
            child: Container(
              height: 80,
              width: 500,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(15)),
                                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("asset/356c4530739b24bcf41edfefc733f5eb.png"),
                          Text("Parlor palm")
                        ],
                      ),
                      IconButton(onPressed: (){}, icon:Icon(Icons.delete_outline))

                    ])
            ),
            width: 350,
          ),
          SizedBox(height: 450),
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
