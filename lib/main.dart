import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
      ),
      body: new MyBody()
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Container(
        child: new Center(
          child: new RaisedButton(
            child: new Text("Click",style: new TextStyle(color: Colors.white),),
            color: Colors.red,
            onPressed: () => Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: new Text("You clicked me."),
                duration: new Duration(seconds: 3),
                )
            ),
          ),
        ),
      );
  }
}