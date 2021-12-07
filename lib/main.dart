import 'package:bookmark/page/bookmarks_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyBookMarksApp());
}

class MyBookMarksApp extends StatelessWidget {
  const MyBookMarksApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookMarksPage(),
    );
  }
}