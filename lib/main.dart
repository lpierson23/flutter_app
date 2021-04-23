import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Welcome to PROTXX'),),
      body: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                'Welcome to the PROTXX sensor home page.'
                    ' From here, you can choose to perform a new test'
                    'or view past data.',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
               )
            ),
            RaisedButton.icon(
              label: Text('New Test'),
              icon: Icon(Icons.add_circle_rounded, color: Colors.lightBlue),
              textColor: Colors.white,
              splashColor: Colors.black,
              color: Colors.black,
              padding: EdgeInsets.all(5),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => NewTest()),
                );
                },
            ),
            RaisedButton.icon(
              label: Text('Past Data'),
              icon: Icon(Icons.bar_chart_rounded, color: Colors.lightBlue),
              textColor: Colors.white,
              splashColor: Colors.black,
              color: Colors.black,
              padding: EdgeInsets.all(5),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => PastData()),
                );
                },
            ),
          ],
          ),
        ),
      );
  } // Widget
} // Home

class NewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('PROTXX Test'),),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                'Follow the directions on the screen.',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )
          ),
          RaisedButton.icon(
            label: Text('Take Test'),
            icon: Icon(Icons.bar_chart_rounded, color: Colors.lightBlue),
            textColor: Colors.white,
            splashColor: Colors.black,
            color: Colors.black,
            padding: EdgeInsets.all(5),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => Complete()),
              );
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.home),
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => Home()),
              );
            },
          ),
        ],
      ),
    ),
    );
  } // Widget
} // New Test


class PastData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Past Data"),
      ),
    );
  }
}

class Complete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Test Complete'),),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                'Your test is complete. Please choose an option '
                    'from the selection below',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )
          ),
          RaisedButton.icon(
            label: Text('See Results'),
            icon: Icon(Icons.add_circle_rounded, color: Colors.lightBlue),
            textColor: Colors.white,
            splashColor: Colors.black,
            color: Colors.black,
            padding: EdgeInsets.all(5),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => SeeResults()),
              );
            },
          ),
          RaisedButton.icon(
            label: Text('Retake Test'),
            icon: Icon(Icons.bar_chart_rounded, color: Colors.lightBlue),
            textColor: Colors.white,
            splashColor: Colors.black,
            color: Colors.black,
            padding: EdgeInsets.all(5),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => NewTest()),
              );
            },
          ),
        ],
      ),
    ),
    );
  } // Widget
} // Home

class SeeResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('See Results'),
      ),
    );
  }
}

class RetakeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retake Test"),
      ),
    );
  }
}

