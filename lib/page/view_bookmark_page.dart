import 'package:bookmark/model/bookmark.dart';
import 'package:bookmark/widget/view_web_page_widget_state.dart';
import 'package:flutter/material.dart';


class ViewBookmarkPage extends StatelessWidget {
   Bookmark bookmark;
   ViewBookmarkPage(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bookmark.title),),
      body: ViewWebPageWidgetState(bookmark.link),
    );
  }
}

