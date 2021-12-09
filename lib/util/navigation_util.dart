import 'package:bookmark/model/bookmark.dart';
import 'package:bookmark/page/add_bookmark_page.dart';
import 'package:bookmark/page/view_bookmark_page.dart';
import 'package:flutter/material.dart';

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)),
  );
}

void navigateToAddBookmarkPage(BuildContext context){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => AddBookPage()),
  );
}