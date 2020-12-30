import 'package:flutter/material.dart';

class SwapListWidget extends StatefulWidget {
  SwapListWidget({Key key}) : super(key: key);
  _SwapListWidgetState createState() => _SwapListWidgetState();
}

class _SwapListWidgetState extends State<SwapListWidget>
    with TickerProviderStateMixin {
  List<String> wordList = ['R', 'A', 'D', 'T'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Game'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100.0, left: 80.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: wordList.length,
          itemBuilder: (context, index) => buildWord(index),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff9e58b1),
          child: Icon(Icons.check),
          onPressed: () {
            //
          }),
    );
  }

  Widget buildWord(int index) {
    final letter = wordList[index];

    Container container = new Container(
      key: UniqueKey(),
      width: 50.0,
      height: 50.0,
      decoration: new BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          '$letter',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );

    Draggable draggable = Draggable<String>(
      data: letter,
      axis: Axis.horizontal,
      maxSimultaneousDrags: 1,
      child: container,
      childWhenDragging: Opacity(
        opacity: 0.5,
        child: container,
      ),
      feedback: Material(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
          child: container,
        ),
        elevation: 4.0,
      ),
    );

    return DragTarget<String>(
      onWillAccept: (letter) {
        return wordList.indexOf(letter) != index;
      },
      onAccept: (letter) {
        setState(() {
          int currentIndex = wordList.indexOf(letter);
          wordList.remove(letter);
          wordList.insert(currentIndex > index ? index : index - 1, letter);
        });
      },
      builder: (BuildContext context, List<String> wordData,
          List<dynamic> rejectedData) {
        return Column(
          children: <Widget>[
            AnimatedSize(
              duration: Duration(milliseconds: 100),
              vsync: this,
              child: wordData.isEmpty
                  ? Container()
                  : Opacity(
                      opacity: 0.0,
                      child: container,
                    ),
            ),
            Card(
              child: wordData.isEmpty ? draggable : container,
            )
          ],
        );
      },
    );
  }
}
