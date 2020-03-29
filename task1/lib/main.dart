import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0)),
          ),
          Container(
            color: Colors.orange,
            padding: EdgeInsets.fromLTRB(80, 10, 10, 10),
            margin: EdgeInsets.all(30),
            width: 300.0,
            height: 100,
            child: Text("With",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0)),
          ),
          Container(
            color: Colors.teal,
            padding: EdgeInsets.fromLTRB(60, 10, 10, 10),
            margin: EdgeInsets.all(30),
            width: 300.0,
            height: 100,
            child: Text("Flutter",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0)),
          ),
          Container(
              child: RaisedButton(
            child: Icon(
              Icons.near_me,
              color: Colors.blue,
              size: 24.0,
            ),
            onPressed: () {
              navigateToSubPage(context);
            },
          )),
        ],
      ),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Main Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(),
    );
  }
}
