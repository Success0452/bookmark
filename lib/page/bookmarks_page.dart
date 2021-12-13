
import 'package:bookmark/model/bookmark.dart';
import 'package:bookmark/page/add_bookmark_page.dart';
import 'package:bookmark/page/bookmarks_page_viewmodel.dart';
import 'package:bookmark/util/navigation_util.dart';
import 'package:bookmark/widget/bookmark_grid_widget.dart';
import 'package:bookmark/widget/bookmarks_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BookMarksPage extends StatefulWidget {

  BookMarksPage({Key? key}) : super(key: key);

  @override
  State<BookMarksPage> createState() => _BookMarksPageState();
}

class _BookMarksPageState extends State<BookMarksPage> {
  bool isGridMode = false;
  List<Bookmark> bookmarksList = [];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BookmarkViewModel>.reactive(
        viewModelBuilder: () => BookmarkViewModel(),
        // onModelReady: (viewModel) => viewModel.setUp,
        builder: (context, viewModel, child){
    return Scaffold(
    appBar: AppBar(
    title: const Text("My BookMarks"),
    actions: [
    IconButton(onPressed: () {
    setState(() {
    isGridMode = !isGridMode;
    });
    },
    icon: isGridMode ? const Icon(Icons.list, color: Colors.white,) : const Icon(Icons.grid_on, color: Colors.white,))
    ],
    ),
    body: isGridMode
    ? BookmarksGridWidget(bookmarksList)
        : BookmarksListWidget(bookmarksList),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton.extended(
    icon: const Icon(Icons.add),
    onPressed: () => onAddButtonPressed(context), label: const Text("Add"),

    ),
    );
    });
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