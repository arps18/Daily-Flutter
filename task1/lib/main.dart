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
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(30),
                  child: Center(
                    child: Text("Flirt",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 60.0)),
                  )),
            ),
            Expanded(
              child: Container(
                  color: Colors.orange,
                  margin: EdgeInsets.all(30),
                  child: Center(
                    child: Text("With",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 60.0)),
                  )),
            ),
            Expanded(
              child: Container(
                  color: Colors.tealAccent,
                  margin: EdgeInsets.all(30),
                  child: Center(
                    child: Text("Flutter",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 60.0)),
                  )),
            ),
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
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.indigoAccent,
                      ),
                    ),
                    SizedBox( width: 16),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.yellow, Colors.orangeAccent])),
                      ),
                    ),
                    SizedBox( width: 16),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.yellow, Colors.pink])),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: Image.asset(
                  'assets/img/FV.jpeg',
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),
              ),
                   SizedBox(height: 16),
              Container(
                height: 100,
                  child: Container(
                      alignment: Alignment.center,
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
                      child: Text(
                        "Let's Roll",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 60.0,
                        ),
                      ))),
            ],
          ),
        ));
  }
}
