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
      appBar: AppBar(centerTitle: true, title: Text('Flutter Vadodara')),
      body: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16),
        margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: Column(
          children: [
            Container(
                color: Colors.blue,
                width: 250.0,
                height: 100,
                margin: EdgeInsets.all(30),
                child: Center(
                  child: Text("Flirt",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 60.0)),
                )),
            Container(
                color: Colors.orange,
                width: 250.0,
                height: 100,
                margin: EdgeInsets.all(30),
                child: Center(
                  child: Text("With",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 60.0)),
                )),
            Container(
                color: Colors.tealAccent,
                width: 250.0,
                height: 100,
                margin: EdgeInsets.all(30),
                child: Center(
                  child: Text("Flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 60.0)),
                )),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToSubPage(context);
        },
        child: Icon(Icons.near_me),
      ),
    );
  }
}

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Main Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                color: Colors.indigoAccent,
                width: 80.0,
                height: 90,
                margin: EdgeInsets.all(20),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.yellow, Colors.orangeAccent])),
                width: 80.0,
                height: 90,
                margin: EdgeInsets.all(20),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.yellow, Colors.pink])),
                width: 80.0,
                height: 90,
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
          Image.asset(
            'assets/img/FV.jpeg',
            alignment: Alignment.center,
            width: 220,
            height: 220,
            fit: BoxFit.contain,
          ),
          Container(
              width: 250.0,
              height: 100,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                 boxShadow: [
                BoxShadow(
                  blurRadius: 19.0,
                  color: Colors.black.withOpacity(.5),
                  offset: Offset(6.0, 7.0),
                ),
              ],
                color: Colors.tealAccent,
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Center(
                  child: Text(
                "Let's Roll",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 60.0,
                ),
              )))
        ],
      ),
    );
  }
}
