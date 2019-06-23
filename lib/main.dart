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
int current_step = 0;
  List<Step> mySteps = [
            new Step(
              title: new Text("Step 1"),
              content: new Text("some Content 1"),
              isActive: true,
            ),
              new Step(
              title: new Text("Step 2"),
              content: new Text("some Content 2"),
              isActive: true,
            ),
              new Step(
              title: new Text("Step 3"),
              content: new Text("some Content 3"),
              isActive: true,
            ),
          ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Utils App"),
      ),
      body: new Container(
        child: new Stepper(
          steps: mySteps,
          currentStep: this.current_step,
          type: StepperType.vertical,
        
        ),
        
      )
    );
  }
}


