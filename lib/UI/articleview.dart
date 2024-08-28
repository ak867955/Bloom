import 'package:flutter/material.dart';

class ArticleViewPage extends StatefulWidget {
  const ArticleViewPage({super.key});

  @override
  State<ArticleViewPage> createState() => _ArticleViewPageState();
}

class _ArticleViewPageState extends State<ArticleViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Bloom", style: TextStyle(fontWeight: FontWeight.bold)),
        // centerTitle: true,
        // actions: [const Icon(Icons.close)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text("The Ultimate Guide to Vodka",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("by The New York Times"),
            const SizedBox(height: 16),
            SizedBox(
                height: 200,
                width: 300,
                child: Image.asset(
                  "asset/Depth 4, Frame 0.png",
                )),
            const SizedBox(height: 16),
            const Text(
              "Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. It's made by the distillation of fermented substances such as grains, potatoes, or sometimes fruits or sugar.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.thumb_up_alt_outlined, color: (Colors.grey)),
                Icon(Icons.thumb_down_alt_outlined, color: (Colors.grey))
              ],
            ),
            const SizedBox(height: 15),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Add a comment"),
                            Text("Public"),
                          ],
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
