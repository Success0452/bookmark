
import 'package:bookmark/page/view_bookmark_page.dart';
import 'package:bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

import '../model/bookmark.dart';

class BookmarkListItemWidget extends StatelessWidget {
  Bookmark bookmark;
  BookmarkListItemWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigateToViewBookmarkPage(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bookmark.title, style: Theme.of(context).textTheme.headline6,),
            const SizedBox(height: 6,),
            Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1,),
          ],
        ),
      ),
    );
  }
}