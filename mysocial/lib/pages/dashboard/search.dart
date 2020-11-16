import 'package:flutter/material.dart';
import 'package:mysocial/widgets/header.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "User Result"),
      body: Text("search user"),
    );
  }
}
