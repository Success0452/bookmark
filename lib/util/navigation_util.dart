import 'package:bookmark/page/add_bookmark_page.dart';
import 'package:bookmark/page/view_bookmark_page.dart';
import 'package:flutter/material.dart';

void navigateToViewBookmarkPage(BuildContext context){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const ViewBookmarkPage()),
  );
}

void navigateToAddBookmarkPage(BuildContext context){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const AddBookPage()),
  );
}