import 'package:flutter/material.dart';
import 'package:flutter_keys/dismisable_list.dart';
import 'package:flutter_keys/draable_list.dart';
import 'package:flutter_keys/positioned_tiles.dart';
import 'package:flutter_keys/reorderable_todo.dart';
import 'package:flutter_keys/swap_list_widget.dart';
import 'package:flutter_keys/todo_list.dart';

void main() {
  runApp(MaterialApp(home: MyAppHome()));
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Key Examples'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                buildRaisedButton(context, 'Swap Widget', PositionedTiles()),
                SizedBox(height: 10),
                buildRaisedButton(context, 'Dismiss Widget', DismissableList()),
                SizedBox(height: 10),
                buildRaisedButton(context, 'SwapList Widget', SwapListWidget()),
                SizedBox(height: 10),
                buildRaisedButton(
                    context, 'Add Todo and swipe Remove', TodoList()),
                SizedBox(height: 10),
                buildRaisedButton(context, 'Dragable List 2', DragableList2()),
                SizedBox(height: 10),
                buildRaisedButton(
                    context, 'Re Order Able Todo', ReOrderAbleTodo()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buildRaisedButton(
      BuildContext context, String title, Widget viewWidget) {
    return RaisedButton(
      child: Text(title),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => viewWidget),
        );
      },
    );
  }
}
