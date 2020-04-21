import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: new MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 70, 0, 0),
                child: Text('Hello',
                    style: GoogleFonts.bitter(
                      textStyle:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 135, 0, 0),
                child: Text('There',
                    style: GoogleFonts.bitter(
                      textStyle:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(240, 135, 0, 0),
                child: Text(',',
                    style: GoogleFonts.bitter(
                      textStyle: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    )),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 35, left: 20, right: 20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: GoogleFonts.bitter(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: GoogleFonts.bitter(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
                obscureText: true,
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                alignment: Alignment(1, 0),
                padding: EdgeInsets.only(top: 15, left: 20),
                child: InkWell(
                    child: Text(
                  "Forgot Password",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  )),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.greenAccent,
                  color: Colors.green,
                  elevation: 7,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                        child: Text('LOGIN',
                            style: GoogleFonts.bitter(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )))),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(child: ImageIcon(AssetImage('assets/GitHub.png'))),
                      SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Text('Log in With GitHub',
                            style: GoogleFonts.bitter(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height:15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New to Spotify ?',
               style: GoogleFonts.bitter(),
            ),
            SizedBox(width: 5,),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/signup');
              },
              child: Text('Register',
              style: GoogleFonts.bitter(
                                textStyle: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            ))),
            )
          ],
        )

      ]),
    );
  }
}
