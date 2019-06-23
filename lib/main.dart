import 'package:flutter/material.dart';

import 'new_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: 5.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Anshul Gupta"),
              accountEmail: new Text("ag1507anshul@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.purple,
                child: new Text("A"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                backgroundColor: Colors.purple,
                child: new Text("B"),
              ),
              ],
            ),

            new ListTile(
              title: new Text("Page 1"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => 
                    new NewPage("Page 1")));
              },
            ),
            new ListTile(
              title: new Text("Page 2"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                 Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => 
                    new NewPage("Page 2")));
           
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
