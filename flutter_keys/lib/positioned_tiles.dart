import 'package:flutter/material.dart';

class PositionedTiles extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PositionedTilesState createState() => _PositionedTilesState();
}

class _PositionedTilesState extends State<PositionedTiles> {
  List<Widget> tiles;

  @override
  void initState() {
    super.initState();
    tiles = [
      // Text('tile1'),
      // Text('tile2'),
      StatelessColorfulTile(Colors.black),
      StatelessColorfulTile(Colors.blue),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swap Tiles'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MyNavbar(),
            Row(
              children: tiles,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: swapTiles,
      ),
    );
  }

  void swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class MyNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('printing navbar');
    return Text('asdf');
  }
}

class StatelessColorfulTile extends StatelessWidget {
  final Color myColor;
  StatelessColorfulTile(this.myColor);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor, child: Padding(padding: EdgeInsets.all(70.0)));
  }
}

// class StatelessColorfulTile extends StatefulWidget {
//   final Color myColor;
//   StatelessColorfulTile(this.myColor);

//   @override
//   _StatelessColorfulTileState createState() => _StatelessColorfulTileState();
// }

// class _StatelessColorfulTileState extends State<StatelessColorfulTile> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: widget.myColor, child: Padding(padding: EdgeInsets.all(70.0)));
//   }
// }
