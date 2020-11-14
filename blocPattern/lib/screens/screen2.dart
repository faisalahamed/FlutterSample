import 'package:blocPattern/bloc/counter_bloc.dart';
import 'package:blocPattern/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final CounterBloc _bloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter 2 Page'),
      ),
      body: Consumer<CounterBloc>(
        builder: (context, _bloc, child) {
          return Column(
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Screen1();
                  }));
                },
                child: Text('Page 1'),
              )
            ],
          );
        },
      ),
    );
  }
}
