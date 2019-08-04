import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 25);
  final int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: textStyle),
            Text('$number', style: textStyle)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print(number);
        },
      ),
    );
  }
}
