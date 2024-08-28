import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Bloom',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Category section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryChip(label: 'For You'),
                CategoryChip(label: 'Tech'),
                CategoryChip(label: 'Productivity'),
                CategoryChip(label: 'Life'),
              ],
            ),
          ),
          // Posts section
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                PostCard(
                  userImageUrl: 'https://example.com/user1.jpg',
                  userName: 'Katherine J.',
                  question: 'What is the best way to go about job hunting?',
                  description: 'I\'ve been trying to switch companies and I\'m not getting any traction. Any tips?',
                  buttonText: 'Read More',
                ),
                PostCard(
                  userImageUrl: 'https://example.com/user1.jpg',
                  userName: 'Katherine J.',
                  question: 'What is the best way to go about job hunting?',
                  description: 'I\'ve been trying to switch companies and I\'m not getting any traction. Any tips?',
                  buttonText: 'Read More',
                ),
                PostCard(
                  userImageUrl: 'https://example.com/user2.jpg',
                  userName: 'Gina W.',
                  description: 'Just listed this handmade pottery, would love to hear your thoughts!',
                  buttonText: 'Comment',
                  isPost: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.grey[200],
      label: Text(
        label,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String? imageUrl;
  final String? userImageUrl;
  final String? userName;
  final String? title;
  final String? question;
  final String description;
  final String buttonText;
  final bool isPost;

  PostCard({
    this.imageUrl,
    this.userImageUrl,
    this.userName,
    this.title,
    this.question,
    required this.description,
    required this.buttonText,
    this.isPost = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(imageUrl!),
              ),
            if (title != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  title!,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            if (userImageUrl != null && userName != null)
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(userImageUrl!),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    userName!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            if (question != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  question!,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(description),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(buttonText),
                    if (isPost)
                      Icon(
                        Icons.add_circle,
                        color: Colors.green,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
