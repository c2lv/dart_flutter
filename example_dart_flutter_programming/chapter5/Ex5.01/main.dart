import 'package:flutter/material.dart';

void main() => runApp(new WidgetDemo());

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo App',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Container Demo'),
        ),
        body: Row(
            mainAxisSize: MainAxisSize.max, // max: 남은 공간 모두 사용, min: 위젯의 크기만큼만 사용
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '1,',
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                '2,',
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                '3',
                style: TextStyle(fontSize: 30.0),
              ),
            ]),
      ),
    );
  }
}