import 'package:blocPattern/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../bloc/counter_bloc.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc _bloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter 1 Page'),
      ),
      body: Column(
        children: [
          Container(
            child: Text(_bloc.counter.toString()),
          ),
          RaisedButton(
            onPressed: () {
              _bloc.increment();
            },
            child: Text('Increment'),
          ),
          RaisedButton(
            onPressed: () {
              _bloc.decrement();
            },
            child: Text('Decrement'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Screen2();
              }));
            },
            child: Text('Page 2'),
          )
        ],
      ),
    );
  }
}
