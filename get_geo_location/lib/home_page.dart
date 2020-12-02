import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position position = Position();
  getLocation() async {
    Position getposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(getposition);
    setState(() {
      position = getposition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geo Location'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.orange,
                      child: Text(
                        'Latitude\n${position.latitude}',
                        style: TextStyle(fontSize: 27.0),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.deepOrange,
                    child: Text(
                      'Longitude\n${position.longitude} ',
                      style: TextStyle(fontSize: 27.0),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () => getLocation(),
              child: Text('get Location'),
            )
          ],
        ),
      ),
    );
  }
}
