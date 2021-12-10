
import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import 'bookmark_grid_item_widget.dart';
import 'bookmark_list_item_widget.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;
  const BookmarksGridWidget(this.bookmarksList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
          itemCount: bookmarksList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2,
            crossAxisCount: 2,
            crossAxisSpacing: 6,
          ),
          itemBuilder:(BuildContext context, int index) {
            return BookmarkGridItemWidget(bookmarksList[index]);
          }),
    );
  }

}