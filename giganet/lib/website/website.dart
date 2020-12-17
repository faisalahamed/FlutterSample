import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebSite extends StatefulWidget {
  final String myurl;
  final String myTitle;
  WebSite(this.myurl, this.myTitle);
  @override
  _WebSiteState createState() => _WebSiteState();
}

class _WebSiteState extends State<WebSite> {
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
