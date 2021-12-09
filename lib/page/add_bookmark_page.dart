import 'package:bookmark/model/bookmark.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {

  AddBookPage({Key? key}) : super(key: key);

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final _titleTextFieldController = TextEditingController();

  final _linkTextFieldController = TextEditingController();

  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Bookmark Page"),),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            child: const Icon(Icons.check),
            backgroundColor: Colors.green,
            onPressed: () {
              String title = _titleTextFieldController.text;
              String link = _linkTextFieldController.text;

              Scaffold.of(context).hideCurrentSnackBar();
              if(isInputValid(title, link)){
                Navigator.pop(context, Bookmark(title, link));
              }else{
                showInputError(context, title, link);
              }
            },
          );
        }
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _titleTextFieldController,
              textInputAction: TextInputAction.next,
              autofocus: true,
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.title),
                labelText: "Title",
                hintText: "Title of the bookmark",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 16.0,),
            TextFormField(
              focusNode: _linkFocusNode,
              controller: _linkTextFieldController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.link),
                  labelText: "URL",
                  hintText: "Webpage link",
                  border: OutlineInputBorder()
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTextFieldController.dispose();
    _linkTextFieldController.dispose();
    _linkFocusNode.dispose();
    super.dispose();
  }

  bool isInputValid(String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
    if(title.isEmpty){
      showSnackBar(context, "Title is Empty");
    }else if(link.isEmpty){
      showSnackBar(context, "Link is Empty");
    }
  }
  
  void showSnackBar(BuildContext context, String message){
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
