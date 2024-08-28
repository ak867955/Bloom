import 'package:flutter/material.dart';
import 'package:vyder/Authentication/view.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body:  Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            textform(
                hinttext: "What  are you selling?", icon: const Icon(Icons.sell), controller: null,),
            const SizedBox(height: 20),
            const Text("Add photos"),
            const SizedBox(height: 20),
            const Icon(Icons.add_a_photo,size: 50),
            const SizedBox(height: 20),
            textform(hinttext: "Price", icon: const Icon(Icons.currency_rupee), controller: null),
            const SizedBox(height: 20),
            textform(hinttext: "Write something...", icon: const Icon(Icons.description), controller: null),
          ],
        ),
      ),
    );
  }
}
