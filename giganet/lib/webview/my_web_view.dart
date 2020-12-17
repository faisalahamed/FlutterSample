import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  final String myurl;
  final String myTitle;
  MyWebView(this.myurl, this.myTitle);
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.myTitle}'),
      ),
      body:
          // Text('${widget.myurl}')
          WebView(
        initialUrl: widget.myurl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
