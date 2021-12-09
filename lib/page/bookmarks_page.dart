
import 'package:bookmark/model/bookmark.dart';
import 'package:bookmark/page/add_bookmark_page.dart';
import 'package:bookmark/util/navigation_util.dart';
import 'package:bookmark/widget/bookmarks_list_widget.dart';
import 'package:flutter/material.dart';

class BookMarksPage extends StatefulWidget {

  BookMarksPage({Key? key}) : super(key: key);

  @override
  State<BookMarksPage> createState() => _BookMarksPageState();
}

class _BookMarksPageState extends State<BookMarksPage> {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com")
  ];

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
        onPressed: () => onAddButtonPressed(context), label: const Text("Add"),

      ),
    );
  }

  void onAddButtonPressed(BuildContext context) async {
    final result = await navigateToAddBookmarkPage(context);

    if(result != null && result is Bookmark){
      setState(() {
        bookmarksList.add(result);
      });

    }

  }
}