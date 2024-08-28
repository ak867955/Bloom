import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vyder/UI/articleview.dart';

textform({required hinttext, required icon, required controller}) {
  return SizedBox(
    width: 350,
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hinttext,
          helperStyle: const TextStyle(color: Color.fromRGBO(244, 241, 229, 1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                width: 2, color: Color.fromRGBO(244, 241, 229, 1)),
          ),
          suffixIcon: icon),
    ),
  );
}

heighlights(String title, String image) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Container(
          height: 100,
          width: 200,
          child: Column(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Text(title)
            ],
          ),
        )
      ],
    ),
  );
}

articles(String image, String title, String description,BuildContext context) {
  return SizedBox(
    height: 200,
    width: 350,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  
                  Navigator.push(
                      context ,
                      MaterialPageRoute(
                          builder: (context) => const ArticleViewPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(244, 240, 228, 1)),
                child: const Text("Read More",
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          CircleAvatar(radius: 50, backgroundImage: AssetImage(image))
        ],
      ),
    ),
  );
}

appbar() {
  return AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  // print('lllllllllllllllllllllllllllll');
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu));
          },
        ),
        title: const Text("Bloom"),
        // actions: const [Icon(Icons.search)],
      );
}





searchfield() {
  return Center(
    child: SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            filled: true,
            fillColor: const Color.fromRGBO(245, 240, 229, 1),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    ),
  );
}

followperson(String image) {
  return Column(
    children: [
      Container(
        height: 150,
        width: 150,
        child: Image.asset(image, fit: BoxFit.fill),
      ),
      TextButton(onPressed: () {}, child: const Text("Follow"))
    ],
  );
}

articlesdes(String image, String title, String description) {
  return SizedBox(
    height: 150,
    width: 350,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                description,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          CircleAvatar(radius: 50, backgroundImage: AssetImage(image))
        ],
      ),
    ),
  );
}

questiomanser(String name, String answer, String image) {
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CircleAvatar(radius: 20, backgroundImage: NetworkImage(image)),
      Column(
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            answer,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          )
        ],
      )
    ],
  );
}

settingtiles({required title, required icon}) {
  return SizedBox(
    height: 70,
    width: 352,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold)),
           const Icon(Icons.arrow_forward_ios_rounded)],
      ),
    ),
  );
}
