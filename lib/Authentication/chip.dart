import 'package:flutter/material.dart';
import 'package:vyder/UI/articleview.dart';

chips({required label}) {
  return GestureDetector(
    onDoubleTap: () => ArticleViewPage(),
    child: Chip(
        label: label,
        backgroundColor: Color.fromRGBO(244, 241, 229, 1),
        labelStyle: TextStyle(color: Colors.black)),
  );
}


