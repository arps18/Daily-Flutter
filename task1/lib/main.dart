import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Task 1',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Flutter Vadodara"),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.fromLTRB(80, 10, 10, 10),
              margin: EdgeInsets.all(30),
              width: 300.0,
              height: 100,
              child: Text("Flirt",
                  style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0)),
            ),
            Container(
              color: Colors.orange,
              padding: EdgeInsets.fromLTRB(80, 10, 10, 10),
              margin: EdgeInsets.all(30),
              width: 300.0,
              height: 100,
              child: Text("With",
                  style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0)),
            ),
            Container(
              color: Colors.teal,
              padding: EdgeInsets.fromLTRB(60, 10, 10, 10),
              margin: EdgeInsets.all(30),
              width: 300.0,
              height: 100,
              child: Text("Flutter",
                  style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0)),
            ),
          ],
        ),
      ),
    );
  }
}
