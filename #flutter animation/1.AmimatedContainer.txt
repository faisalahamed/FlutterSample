import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimatedWidget(),
    );
  }
}

class MyAnimatedWidget extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> {
  double _leftWidth = 0.5;
  double _rightwidth = 0.5;
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter Demo Home Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              setState(() {
                if (_leftWidth == 0.5) {
                  _leftWidth = 0.0;
                  _rightwidth = 1;
                } else {
                  _leftWidth = 0.5;
                  _rightwidth = 0.5;
                }
              });
            },
            child: Icon(Icons.menu),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.redAccent,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: _width * _leftWidth,
                  color: Colors.pink,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListTile(
                        leading: Icon(Icons.home),
                        title: (_leftWidth > 0.1) ? Text('Home') : null,
                      ),
                      ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: (_leftWidth > 0.1) ? Text('About') : null,
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: _width * _rightwidth,
                  color: Colors.yellow,
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.greenAccent,
                        child: Text('Home'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
