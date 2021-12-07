
import 'package:bookmark/model/bookmark.dart';
import 'package:bookmark/page/add_bookmark_page.dart';
import 'package:bookmark/util/navigation_util.dart';
import 'package:bookmark/widget/bookmarks_list_widget.dart';
import 'package:flutter/material.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        onPressed: () => navigateToAddBookmarkPage(context), label: const Text("Add"),

      ),
    );
  }
}