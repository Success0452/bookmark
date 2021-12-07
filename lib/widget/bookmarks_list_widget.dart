
import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import 'bookmark_list_item_widget.dart';

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