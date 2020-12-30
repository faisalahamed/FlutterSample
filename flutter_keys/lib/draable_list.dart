import 'package:flutter/material.dart';

class DragableList2 extends StatefulWidget {
  DragableList2({Key key}) : super(key: key);

  _DragableList2State createState() => _DragableList2State();
}

class _DragableList2State extends State<DragableList2> {
  List<String> articles = [
    'THE GREAT GATSBY',
    'BRAVE NEW WORLD',
    'THE SOUND AND THE FURY',
    'DARKNESS AT NOON',
    'SONS AND LOVERS'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles"),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Dismissible(
            key: Key(article),
            onDismissed: (direction) {
              setState(() {
                articles.removeAt(index);
              });
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$article moved")));
            },
            background: Container(
              color: Colors.amber,
            ),
            child: Container(
              height: 100.0,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  '$article',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
