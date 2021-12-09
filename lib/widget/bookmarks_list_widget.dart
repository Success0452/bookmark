
import 'package:bookmark/widget/bookmark_list_title_widget.dart';
import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import 'bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarksList;
  BookmarksListWidget(this.bookmarksList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarksList.length,
      itemBuilder: (BuildContext context, int index){
       return BookmarkListItemWidget(bookmarksList[index]);
      },
    );
  }
}