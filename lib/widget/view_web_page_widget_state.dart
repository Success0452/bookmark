import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidgetState extends StatefulWidget {
  String url;
   ViewWebPageWidgetState(this.url, {Key? key}) : super(key: key);

  @override
  _ViewWebPageWidgetStateState createState() => _ViewWebPageWidgetStateState();
}

class _ViewWebPageWidgetStateState extends State<ViewWebPageWidgetState> {
  var _isLoadingWebPage = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        WebView(
            onPageFinished: (url) {
              setState(() {
                _isLoadingWebPage = false;
              });
            } ,
            initialUrl: widget.url),
        _isLoadingWebPage ? const CircularProgressIndicator() : Container(),
      ],
    );
  }
}
