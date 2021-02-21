import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FistApp(),
  ));
}

class FistApp extends StatefulWidget {
  FirstRoute createState() => new FirstRoute();
}

class FirstRoute extends State<FistApp> {
  bool _cb = false;
  bool _sw = false;
  void _cbChanged(bool value) => setState(() => _cb = value);
  void _swChanged(bool value) => setState(() => _sw = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Column(
        children: [
          Text('Test'),
          TextField(
            obscureText: true,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: 'ID'),
          ),
          TextField(
            obscureText: true,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: 'PWD'),
          ),
          Checkbox(
            value: _cb,
            onChanged: _cbChanged,
          ),
          Switch(value: _sw, onChanged: _swChanged),
          RaisedButton(
            child: Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
