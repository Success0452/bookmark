
import 'package:bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';
import '../model/bookmark.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark bookmark;
  const BookmarkGridItemWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () => navigateToViewBookmarkPage(bookmark, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(bookmark.title, style: Theme.of(context).textTheme.headline6,),
              const SizedBox(height: 6,),
              Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1,),
            ],
          ),
        ),
      ),
    );
  }
}