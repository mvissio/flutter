import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks:', style: _textStyle),
              Text('$_counter', style: _textStyle)
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30.0),
      FloatingActionButton(
          child: Icon(Icons.exposure_zero), onPressed: _converZero),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _minusCounter),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _addCounter)
    ]);
  }

  void _addCounter() => setState(() => _counter++);
  void _minusCounter() =>
      setState(() => (_counter > 0) ? _counter-- : _counter);
  void _converZero() => setState(() => _counter = 0);
}
