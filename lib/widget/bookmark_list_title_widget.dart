
import 'package:bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

import '../model/bookmark.dart';

class BookmarkListTitleWidget extends StatelessWidget {
  final Bookmark bookmark;
  const BookmarkListTitleWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookmark.title, style: Theme.of(context).textTheme.headline6),
      subtitle: Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1),
      onTap: () {},
    );
  }
}