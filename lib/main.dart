import 'package:bookmark/bookmark.dart';
import 'package:flutter/cupertino.dart';
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

class BookMarksPage extends StatelessWidget {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com")
  ];

  BookMarksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My BookMarks"),
      ),
      body: BookmarksListWidget(bookmarksList),
    );
  }
}

class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarksList;
  BookmarksListWidget(this.bookmarksList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       BookmarkListItemWidget(bookmarksList[0]),
        BookmarkListItemWidget(bookmarksList[1]),
      ],
    );
  }
}

class BookmarkListItemWidget extends StatelessWidget {
  Bookmark bookmark;
   BookmarkListItemWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bookmark.title, style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 6,),
          Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1,),
        ],
      ),
    );
  }
}






