import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          backgroundColor: Colors.red,
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('Dicee'),
//        backgroundColor: Colors.red,
//      ),
          body: MyHomePage(title: 'Ask me anything'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ball = 1;

  @override
  Widget build(BuildContext context) {
    void changeBall() {
      setState(() {
        ball = Random().nextInt(5) + 1;
      });
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Image.asset('images/ball$ball.png'),
              onPressed: () {
                changeBall();
              },
            ),
          ],
        ),
      ),
    );
  }
}
