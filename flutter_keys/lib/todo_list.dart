import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  static const _appTitle = 'Todo List';
  final todos = <String>[
    'Todo 1 Swipe to remove',
    'Todo 2 Swipe to remove',
    'Todo 3 Swipe to remove'
  ];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (BuildContext context, int index) {
                final todo = todos[index];

                return Dismissible(
                  key: Key('$todo$index'),
                  onDismissed: (direction) => todos.removeAt(index),
                  child: Container(
                    margin: EdgeInsets.all(8),
                    color: Colors.blue,
                    child: ListTile(title: Text(todo)),
                  ),
                  background: Container(color: Colors.red),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            todos.add(controller.text);
            controller.clear();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
