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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldState;
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: new AppBar(
        title: new Text("Utils App"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.dashboard),
            ),
          ],
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new NewPage("First"),
          new NewPage("Second"),
        ],
        controller: controller,
      ),
      floatingActionButton:  new Builder(builder: (BuildContext context) {
        return new FloatingActionButton(
          child: new Icon(Icons.add),
          backgroundColor: Colors.teal,
          onPressed: () {
          Scaffold
              .of(context)
              .showSnackBar(new SnackBar(content: new Text('FAB clicked!'),duration: new Duration(seconds: 2),));
        }); 
      },),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}


void showSnackBar(BuildContext context) {
	var snackBar = SnackBar(
		content: Text("You just tapped "),
		action: SnackBarAction(
				label: "UNDO",
				onPressed: () {
					debugPrint('Performing dummy UNDO operation');
				}
		),
	);

	Scaffold.of(context).showSnackBar(snackBar);
}

